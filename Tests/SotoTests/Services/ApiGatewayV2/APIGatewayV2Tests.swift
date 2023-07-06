//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

@testable import SotoApiGatewayV2
import XCTest

enum APIGatewayV2TestsError: Error {
    case noApi
}

class APIGatewayV2Tests: XCTestCase {
    static var client: AWSClient!
    static var apiGatewayV2: ApiGatewayV2!

    static let restApiName: String = TestEnvironment.generateResourceName("ApiGatewayV2Tests")
    static var restApiId: String!

    override class func setUp() {
        guard !TestEnvironment.isUsingLocalstack else { return }
        Self.client = AWSClient(
            credentialProvider: TestEnvironment.credentialProvider,
            middlewares: TestEnvironment.middlewares,
            httpClientProvider: .createNew,
            logger: TestEnvironment.logger
        )
        Self.apiGatewayV2 = ApiGatewayV2(
            client: Self.client,
            region: .euwest1,
            endpoint: TestEnvironment.getEndPoint(environment: "LOCALSTACK_ENDPOINT")
        )

        if TestEnvironment.isUsingLocalstack {
            print("Connecting to Localstack")
        } else {
            print("Connecting to AWS")
        }
        /// If we create a rest api for each test, when we delete them APIGateway will throttle
        /// and we will most likely not delete the all APIs so we create one API to be used by all tests
        XCTAssertNoThrow(try runThrowingTask(on: Self.client.eventLoopGroup.any()) {
            do {
                Self.restApiId = try await self.createRestApi(name: self.restApiName)
            } catch {
                print("Failed to create APIGateway rest api, error: \(error)")
                throw error
            }
        })
    }

    override class func tearDown() {
        guard !TestEnvironment.isUsingLocalstack else { return }
        XCTAssertNoThrow(try runThrowingTask(on: Self.client.eventLoopGroup.any()) {
            _ = try await self.deleteRestApi(id: self.restApiId)
        })
        XCTAssertNoThrow(try self.client.syncShutdown())
    }

    static func createRestApi(name: String) async throws -> String {
        let response = try await self.apiGatewayV2.getApis(.init(), logger: TestEnvironment.logger)
        if let restApi = response.items?.first(where: { $0.name == name }) {
            guard let apiId = restApi.apiId else { throw APIGatewayV2TestsError.noApi }
            return apiId
        } else {
            let request = ApiGatewayV2.CreateApiRequest(
                description: "\(name) API",
                name: name,
                protocolType: .http
            )
            let response = try await Self.apiGatewayV2.createApi(request, logger: TestEnvironment.logger)
            let apiId = try XCTUnwrap(response.apiId)
            return apiId
        }
    }

    static func deleteRestApi(id: String) async throws {
        try await self.apiGatewayV2.deleteApi(.init(apiId: id), logger: TestEnvironment.logger)
    }

    /// create Rest api with supplied name and run supplied closure with rest api id
    func testRestApi(body: @escaping (String) async throws -> Void) async throws {
        try await body(Self.restApiId)
    }

    // MARK: TESTS

    /// tests whether created date is loading correctly
    func testGetApis() async throws {
        // doesnt work with LocalStack
        try XCTSkipIf(TestEnvironment.isUsingLocalstack)

        // get date from 1 minute before now.
        let date = Date(timeIntervalSinceNow: -60.0)
        try await self.testRestApi { id in
            let response = try await Self.apiGatewayV2.getApis(.init(), logger: TestEnvironment.logger)
            let restApi = response.items?.first(where: { $0.apiId == id })
            XCTAssertNotNil(restApi)
            XCTAssertEqual(restApi?.name, Self.restApiName)
            let createdDate = try XCTUnwrap(restApi?.createdDate)
            XCTAssertGreaterThanOrEqual(createdDate, date)
        }
    }
}
