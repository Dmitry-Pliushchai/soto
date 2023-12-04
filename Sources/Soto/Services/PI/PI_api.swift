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

/// Service object for interacting with AWS PI service.
///
/// Amazon RDS Performance Insights Amazon RDS Performance Insights enables you to monitor and explore different dimensions of database load based on data captured from a running DB instance. The guide provides detailed information about Performance Insights data types, parameters and errors. When Performance Insights is enabled, the Amazon RDS Performance Insights API provides visibility into the performance of your DB instance. Amazon CloudWatch provides the authoritative source for Amazon Web Services service-vended monitoring metrics. Performance Insights offers a domain-specific view of DB load. DB load is measured as average active sessions. Performance Insights provides the data to API consumers as a two-dimensional time-series dataset. The time dimension provides DB load data for each time point in the queried time range. Each time point decomposes overall load in relation to the requested dimensions, measured at that time point. Examples include SQL, Wait event, User, and Host.   To learn more about Performance Insights and Amazon Aurora DB instances, go to the  Amazon Aurora User Guide .    To learn more about Performance Insights and Amazon RDS DB instances, go to the  Amazon RDS User Guide .    To learn more about Performance Insights and Amazon DocumentDB clusters, go to the  Amazon DocumentDB Developer Guide .
public struct PI: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the PI client
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
            amzTarget: "PerformanceInsightsv20180227",
            serviceName: "PI",
            serviceIdentifier: "pi",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-02-27",
            endpoint: endpoint,
            errorType: PIErrorType.self,
            xmlNamespace: "http://pi.amazonaws.com/doc/2018-02-27/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Creates a new performance analysis report for a specific time period for the DB instance.
    @Sendable
    public func createPerformanceAnalysisReport(_ input: CreatePerformanceAnalysisReportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePerformanceAnalysisReportResponse {
        return try await self.client.execute(
            operation: "CreatePerformanceAnalysisReport", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a performance analysis report.
    @Sendable
    public func deletePerformanceAnalysisReport(_ input: DeletePerformanceAnalysisReportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePerformanceAnalysisReportResponse {
        return try await self.client.execute(
            operation: "DeletePerformanceAnalysisReport", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// For a specific time period, retrieve the top N dimension keys for a metric.   Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,  only the first 500 bytes are returned.
    @Sendable
    public func describeDimensionKeys(_ input: DescribeDimensionKeysRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDimensionKeysResponse {
        return try await self.client.execute(
            operation: "DescribeDimensionKeys", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get the attributes of the specified dimension group for a DB instance or data source. For example, if you specify a SQL ID, GetDimensionKeyDetails retrieves the full text of the dimension db.sql.statement associated with this ID. This operation is useful because GetResourceMetrics and DescribeDimensionKeys don't support retrieval of large SQL statement text.
    @Sendable
    public func getDimensionKeyDetails(_ input: GetDimensionKeyDetailsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDimensionKeyDetailsResponse {
        return try await self.client.execute(
            operation: "GetDimensionKeyDetails", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the report including the report ID, status, time details, and the insights with recommendations. The report status can be RUNNING, SUCCEEDED, or FAILED. The insights include the description and recommendation fields.
    @Sendable
    public func getPerformanceAnalysisReport(_ input: GetPerformanceAnalysisReportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPerformanceAnalysisReportResponse {
        return try await self.client.execute(
            operation: "GetPerformanceAnalysisReport", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the metadata for different features. For example, the metadata might indicate  that a feature is turned on or off on a specific DB instance.
    @Sendable
    public func getResourceMetadata(_ input: GetResourceMetadataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetResourceMetadataResponse {
        return try await self.client.execute(
            operation: "GetResourceMetadata", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve Performance Insights metrics for a set of data sources over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.  Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,  only the first 500 bytes are returned.
    @Sendable
    public func getResourceMetrics(_ input: GetResourceMetricsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetResourceMetricsResponse {
        return try await self.client.execute(
            operation: "GetResourceMetrics", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve the dimensions that can be queried for each specified metric type on a specified DB instance.
    @Sendable
    public func listAvailableResourceDimensions(_ input: ListAvailableResourceDimensionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAvailableResourceDimensionsResponse {
        return try await self.client.execute(
            operation: "ListAvailableResourceDimensions", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve metrics of the specified types that can be queried for a specified DB instance.
    @Sendable
    public func listAvailableResourceMetrics(_ input: ListAvailableResourceMetricsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAvailableResourceMetricsResponse {
        return try await self.client.execute(
            operation: "ListAvailableResourceMetrics", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the analysis reports created for the DB instance. The reports are sorted based on the start time of each report.
    @Sendable
    public func listPerformanceAnalysisReports(_ input: ListPerformanceAnalysisReportsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPerformanceAnalysisReportsResponse {
        return try await self.client.execute(
            operation: "ListPerformanceAnalysisReports", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves all the metadata tags associated with Amazon RDS Performance Insights resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds metadata tags to the Amazon RDS Performance Insights resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the metadata tags from the Amazon RDS Performance Insights resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension PI {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: PI, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension PI {
    /// For a specific time period, retrieve the top N dimension keys for a metric.   Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,  only the first 500 bytes are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeDimensionKeysPaginator(
        _ input: DescribeDimensionKeysRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeDimensionKeysRequest, DescribeDimensionKeysResponse> {
        return .init(
            input: input,
            command: self.describeDimensionKeys,
            inputKey: \DescribeDimensionKeysRequest.nextToken,
            outputKey: \DescribeDimensionKeysResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve Performance Insights metrics for a set of data sources over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.  Each response element returns a maximum of 500 bytes. For larger elements, such as SQL statements,  only the first 500 bytes are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func getResourceMetricsPaginator(
        _ input: GetResourceMetricsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<GetResourceMetricsRequest, GetResourceMetricsResponse> {
        return .init(
            input: input,
            command: self.getResourceMetrics,
            inputKey: \GetResourceMetricsRequest.nextToken,
            outputKey: \GetResourceMetricsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve the dimensions that can be queried for each specified metric type on a specified DB instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAvailableResourceDimensionsPaginator(
        _ input: ListAvailableResourceDimensionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAvailableResourceDimensionsRequest, ListAvailableResourceDimensionsResponse> {
        return .init(
            input: input,
            command: self.listAvailableResourceDimensions,
            inputKey: \ListAvailableResourceDimensionsRequest.nextToken,
            outputKey: \ListAvailableResourceDimensionsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve metrics of the specified types that can be queried for a specified DB instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAvailableResourceMetricsPaginator(
        _ input: ListAvailableResourceMetricsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAvailableResourceMetricsRequest, ListAvailableResourceMetricsResponse> {
        return .init(
            input: input,
            command: self.listAvailableResourceMetrics,
            inputKey: \ListAvailableResourceMetricsRequest.nextToken,
            outputKey: \ListAvailableResourceMetricsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all the analysis reports created for the DB instance. The reports are sorted based on the start time of each report.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPerformanceAnalysisReportsPaginator(
        _ input: ListPerformanceAnalysisReportsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPerformanceAnalysisReportsRequest, ListPerformanceAnalysisReportsResponse> {
        return .init(
            input: input,
            command: self.listPerformanceAnalysisReports,
            inputKey: \ListPerformanceAnalysisReportsRequest.nextToken,
            outputKey: \ListPerformanceAnalysisReportsResponse.nextToken,
            logger: logger
        )
    }
}

extension PI.DescribeDimensionKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PI.DescribeDimensionKeysRequest {
        return .init(
            additionalMetrics: self.additionalMetrics,
            endTime: self.endTime,
            filter: self.filter,
            groupBy: self.groupBy,
            identifier: self.identifier,
            maxResults: self.maxResults,
            metric: self.metric,
            nextToken: token,
            partitionBy: self.partitionBy,
            periodInSeconds: self.periodInSeconds,
            serviceType: self.serviceType,
            startTime: self.startTime
        )
    }
}

extension PI.GetResourceMetricsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PI.GetResourceMetricsRequest {
        return .init(
            endTime: self.endTime,
            identifier: self.identifier,
            maxResults: self.maxResults,
            metricQueries: self.metricQueries,
            nextToken: token,
            periodAlignment: self.periodAlignment,
            periodInSeconds: self.periodInSeconds,
            serviceType: self.serviceType,
            startTime: self.startTime
        )
    }
}

extension PI.ListAvailableResourceDimensionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PI.ListAvailableResourceDimensionsRequest {
        return .init(
            identifier: self.identifier,
            maxResults: self.maxResults,
            metrics: self.metrics,
            nextToken: token,
            serviceType: self.serviceType
        )
    }
}

extension PI.ListAvailableResourceMetricsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PI.ListAvailableResourceMetricsRequest {
        return .init(
            identifier: self.identifier,
            maxResults: self.maxResults,
            metricTypes: self.metricTypes,
            nextToken: token,
            serviceType: self.serviceType
        )
    }
}

extension PI.ListPerformanceAnalysisReportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PI.ListPerformanceAnalysisReportsRequest {
        return .init(
            identifier: self.identifier,
            listTags: self.listTags,
            maxResults: self.maxResults,
            nextToken: token,
            serviceType: self.serviceType
        )
    }
}
