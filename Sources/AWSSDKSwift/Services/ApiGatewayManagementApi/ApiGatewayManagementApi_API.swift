//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ApiGatewayManagementApi service.

The Amazon API Gateway Management API allows you to directly manage runtime aspects of your deployed APIs. To use it, you must explicitly set the SDK's endpoint to point to the endpoint of your deployed API. The endpoint will be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the endpoint corresponding to your API's custom domain and base path, if applicable.
*/
public struct ApiGatewayManagementApi {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ApiGatewayManagementApi client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "execute-api",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-29",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApiGatewayManagementApiErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Delete the connection with the provided id.
    @discardableResult public func deleteConnection(_ input: DeleteConnectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteConnection", path: "/@connections/{connectionId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Get information about the connection with the provided id.
    public func getConnection(_ input: GetConnectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConnectionResponse> {
        return client.send(operation: "GetConnection", path: "/@connections/{connectionId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Sends the provided data to the specified connection.
    @discardableResult public func postToConnection(_ input: PostToConnectionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PostToConnection", path: "/@connections/{connectionId}", httpMethod: "POST", input: input, on: eventLoop)
    }
}
