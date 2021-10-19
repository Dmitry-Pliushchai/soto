//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

/// Service object for interacting with AWS TimestreamQuery service.
///
///
public struct TimestreamQuery: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig
    /// endpoint storage
    let endpointStorage: AWSEndpointStorage

    // MARK: Initialization

    /// Initialize the TimestreamQuery client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "Timestream_20181101",
            service: "query.timestream",
            signingName: "timestream",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2018-11-01",
            endpoint: endpoint,
            errorType: TimestreamQueryErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
        self.endpointStorage = .init(endpoint: self.config.endpoint)
    }

    // MARK: API Calls

    ///  Cancels a query that has been issued. Cancellation is guaranteed only if the query has not  completed execution before the cancellation request was issued. Because cancellation is an idempotent operation,  subsequent cancellation requests will return a CancellationMessage, indicating that the query has already been canceled.
    public func cancelQuery(_ input: CancelQueryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelQueryResponse> {
        return self.client.execute(operation: "CancelQuery", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger, on: eventLoop)
    }

    /// DescribeEndpoints returns a list of available endpoints to make Timestream API calls against. This API is available through both Write and Query. Because Timestream’s SDKs are designed to transparently work with the service’s architecture,  including the management and mapping of the service endpoints, it is not recommended that you use this API unless:   Your application uses a programming language that does not yet have SDK support   You require better control over the client-side implementation   For detailed information on how to use DescribeEndpoints,  see The Endpoint Discovery Pattern and REST APIs.
    public func describeEndpoints(_ input: DescribeEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndpointsResponse> {
        return self.client.execute(operation: "DescribeEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Query is a synchronous operation that enables you to execute a query. Query will timeout after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. The result set will be truncated to 1MB. Service quotas apply. For more information, see Quotas in the Timestream Developer Guide.
    public func query(_ input: QueryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryResponse> {
        return self.client.execute(operation: "Query", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger, on: eventLoop)
    }

    func getEndpoint(logger: Logger, eventLoop: EventLoop) -> EventLoopFuture<AWSEndpoints> {
        return self.describeEndpoints(.init(), logger: logger, on: eventLoop).map {
            .init(endpoints: $0.endpoints.map {
                .init(address: "https://\($0.address)", cachePeriodInMinutes: $0.cachePeriodInMinutes)
            })
        }
    }
}

extension TimestreamQuery {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: TimestreamQuery, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
        self.endpointStorage = .init(endpoint: self.config.endpoint)
    }
}
