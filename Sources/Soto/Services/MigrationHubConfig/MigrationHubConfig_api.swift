//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS MigrationHubConfig service.
///
/// The AWS Migration Hub home region APIs are available specifically for working with your Migration Hub home region. You can use these APIs to determine a home region, as well as to create and work with controls that describe the home region.   You must make API calls for write actions (create, notify, associate, disassociate, import, or put) while in your home region, or a HomeRegionNotSetException error is returned.   API calls for read actions (list, describe, stop, and delete) are permitted outside of your home region.   If you call a write API outside the home region, an InvalidInputException is returned.   You can call GetHomeRegion action to obtain the account's Migration Hub home region.   For specific API usage, see the sections that follow in this AWS Migration Hub Home Region API reference.
public struct MigrationHubConfig: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MigrationHubConfig client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSMigrationHubMultiAccountService",
            serviceName: "MigrationHubConfig",
            serviceIdentifier: "migrationhub-config",
            signingName: "mgh",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-06-30",
            endpoint: endpoint,
            errorType: MigrationHubConfigErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// This API sets up the home region for the calling account only.
    @Sendable
    public func createHomeRegionControl(_ input: CreateHomeRegionControlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateHomeRegionControlResult {
        return try await self.client.execute(
            operation: "CreateHomeRegionControl", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This operation deletes the home region configuration for the calling account. The operation does not delete discovery or migration tracking data in the home region.
    @Sendable
    public func deleteHomeRegionControl(_ input: DeleteHomeRegionControlRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteHomeRegionControlResult {
        return try await self.client.execute(
            operation: "DeleteHomeRegionControl", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This API permits filtering on the ControlId and HomeRegion fields.
    @Sendable
    public func describeHomeRegionControls(_ input: DescribeHomeRegionControlsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeHomeRegionControlsResult {
        return try await self.client.execute(
            operation: "DescribeHomeRegionControls", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call GetHomeRegion at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.
    @Sendable
    public func getHomeRegion(_ input: GetHomeRegionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetHomeRegionResult {
        return try await self.client.execute(
            operation: "GetHomeRegion", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension MigrationHubConfig {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MigrationHubConfig, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MigrationHubConfig {
    /// This API permits filtering on the ControlId and HomeRegion fields.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeHomeRegionControlsPaginator(
        _ input: DescribeHomeRegionControlsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeHomeRegionControlsRequest, DescribeHomeRegionControlsResult> {
        return .init(
            input: input,
            command: self.describeHomeRegionControls,
            inputKey: \DescribeHomeRegionControlsRequest.nextToken,
            outputKey: \DescribeHomeRegionControlsResult.nextToken,
            logger: logger
        )
    }
}

extension MigrationHubConfig.DescribeHomeRegionControlsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHubConfig.DescribeHomeRegionControlsRequest {
        return .init(
            controlId: self.controlId,
            homeRegion: self.homeRegion,
            maxResults: self.maxResults,
            nextToken: token,
            target: self.target
        )
    }
}
