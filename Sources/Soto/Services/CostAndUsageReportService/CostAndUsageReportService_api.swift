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

/// Service object for interacting with AWS CostAndUsageReportService service.
///
/// The AWS Cost and Usage Report API enables you to programmatically create, query, and delete  AWS Cost and Usage report definitions. AWS Cost and Usage reports track the monthly AWS costs and usage  associated with your AWS account.  The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses.   You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API.
///  Service Endpoint The AWS Cost and Usage Report API provides the following endpoint:   cur.us-east-1.amazonaws.com
public struct CostAndUsageReportService: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CostAndUsageReportService client
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
            amzTarget: "AWSOrigamiServiceGatewayService",
            service: "cur",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-01-06",
            endpoint: endpoint,
            errorType: CostAndUsageReportServiceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Deletes the specified report.
    @Sendable
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteReportDefinitionResponse {
        return try await self.client.execute(operation: "DeleteReportDefinition", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists the AWS Cost and Usage reports available to this account.
    @Sendable
    public func describeReportDefinitions(_ input: DescribeReportDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeReportDefinitionsResponse {
        return try await self.client.execute(operation: "DescribeReportDefinitions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Allows you to programatically update your report preferences.
    @Sendable
    public func modifyReportDefinition(_ input: ModifyReportDefinitionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ModifyReportDefinitionResponse {
        return try await self.client.execute(operation: "ModifyReportDefinition", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a new report using the description that you provide.
    @Sendable
    public func putReportDefinition(_ input: PutReportDefinitionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutReportDefinitionResponse {
        return try await self.client.execute(operation: "PutReportDefinition", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension CostAndUsageReportService {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CostAndUsageReportService, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CostAndUsageReportService {
    /// Lists the AWS Cost and Usage reports available to this account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeReportDefinitionsPaginator(
        _ input: DescribeReportDefinitionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeReportDefinitionsRequest, DescribeReportDefinitionsResponse> {
        return .init(
            input: input,
            command: self.describeReportDefinitions,
            inputKey: \DescribeReportDefinitionsRequest.nextToken,
            outputKey: \DescribeReportDefinitionsResponse.nextToken,
            logger: logger
        )
    }
}

extension CostAndUsageReportService.DescribeReportDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CostAndUsageReportService.DescribeReportDefinitionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
