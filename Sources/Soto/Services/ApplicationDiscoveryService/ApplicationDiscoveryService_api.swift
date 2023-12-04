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

/// Service object for interacting with AWS ApplicationDiscoveryService service.
///
/// Amazon Web Services Application Discovery Service Amazon Web Services Application Discovery Service (Application Discovery Service) helps you plan application migration projects. It automatically identifies servers, virtual machines (VMs), and network dependencies in your on-premises data centers. For more information, see the Amazon Web Services Application Discovery Service FAQ.  Application Discovery Service offers three ways of performing discovery and collecting data about your on-premises servers:    Agentless discovery using Amazon Web Services Application Discovery Service Agentless Collector (Agentless Collector), which doesn't require you to install an agent on each host.   Agentless Collector gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment.   Agentless Collector doesn't collect information about network dependencies, only agent-based discovery collects that information.         Agent-based discovery using the Amazon Web Services Application Discovery Agent (Application Discovery Agent) collects a richer set of data than agentless discovery, which you install on one or more hosts in your data center.   The agent captures infrastructure and application information, including an inventory of running processes, system performance information, resource utilization, and network dependencies.   The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the Amazon Web Services cloud. For more information, see Amazon Web Services Application Discovery Agent.        Amazon Web Services Partner Network (APN) solutions integrate with Application Discovery Service, enabling you to import details of your on-premises environment directly into Amazon Web Services Migration Hub (Migration Hub) without using Agentless Collector or Application Discovery Agent.   Third-party application discovery tools can query Amazon Web Services Application Discovery Service, and they can write to the Application Discovery Service database using the public API.   In this way, you can import data into Migration Hub and view it, so that you can associate applications with servers and track migrations.      Working With This Guide  This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the Amazon Web Services SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see Amazon Web Services SDKs.    Remember that you must set your Migration Hub home Region before you call any of these APIs.   You must make API calls for write actions (create, notify, associate, disassociate, import, or put) while in your home Region, or a HomeRegionNotSetException error is returned.   API calls for read actions (list, describe, stop, and delete) are permitted outside of your home Region.   Although it is unlikely, the Migration Hub home Region could change. If you call APIs outside the home Region, an InvalidInputException is returned.   You must call GetHomeRegion to obtain the latest Migration Hub home Region.    This guide is intended for use with the Amazon Web Services Application Discovery Service User Guide.  All data is handled according to the Amazon Web Services Privacy Policy. You can operate Application Discovery Service offline to inspect collected data before it is shared with the service.
public struct ApplicationDiscoveryService: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ApplicationDiscoveryService client
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
            amzTarget: "AWSPoseidonService_V2015_11_01",
            serviceName: "ApplicationDiscoveryService",
            serviceIdentifier: "discovery",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-11-01",
            endpoint: endpoint,
            errorType: ApplicationDiscoveryServiceErrorType.self,
            xmlNamespace: "http://ec2.amazon.com/awsposiedon/V2015_11_01/",
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Associates one or more configuration items with an application.
    @Sendable
    public func associateConfigurationItemsToApplication(_ input: AssociateConfigurationItemsToApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateConfigurationItemsToApplicationResponse {
        return try await self.client.execute(
            operation: "AssociateConfigurationItemsToApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Deletes one or more agents or collectors as specified by ID. Deleting an agent or collector does not  delete the previously discovered data.  To delete the data collected, use StartBatchDeleteConfigurationTask.
    @Sendable
    public func batchDeleteAgents(_ input: BatchDeleteAgentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchDeleteAgentsResponse {
        return try await self.client.execute(
            operation: "BatchDeleteAgents", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes one or more import tasks, each identified by their import ID. Each import task has a number of records that can identify servers or applications.  Amazon Web Services Application Discovery Service has built-in matching logic that will identify when discovered servers match existing entries that you've previously discovered, the information for the already-existing discovered server is updated. When you delete an import task that contains records that were used to match, the information in those matched records that comes from the deleted records will also be deleted.
    @Sendable
    public func batchDeleteImportData(_ input: BatchDeleteImportDataRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchDeleteImportDataResponse {
        return try await self.client.execute(
            operation: "BatchDeleteImportData", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates an application with the given name and description.
    @Sendable
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApplicationResponse {
        return try await self.client.execute(
            operation: "CreateApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.  Do not store sensitive information (like personal data) in tags.
    @Sendable
    public func createTags(_ input: CreateTagsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateTagsResponse {
        return try await self.client.execute(
            operation: "CreateTags", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a list of applications and their associations with configuration items.
    @Sendable
    public func deleteApplications(_ input: DeleteApplicationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteApplicationsResponse {
        return try await self.client.execute(
            operation: "DeleteApplications", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.
    @Sendable
    public func deleteTags(_ input: DeleteTagsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteTagsResponse {
        return try await self.client.execute(
            operation: "DeleteTags", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists agents or collectors as specified by ID or other filters. All agents/collectors associated with your user can be listed if you call DescribeAgents as is without passing any parameters.
    @Sendable
    public func describeAgents(_ input: DescribeAgentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAgentsResponse {
        return try await self.client.execute(
            operation: "DescribeAgents", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Takes a unique deletion task identifier as input and returns metadata about a configuration deletion task.
    @Sendable
    public func describeBatchDeleteConfigurationTask(_ input: DescribeBatchDeleteConfigurationTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeBatchDeleteConfigurationTaskResponse {
        return try await self.client.execute(
            operation: "DescribeBatchDeleteConfigurationTask", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves attributes for a list of configuration item IDs.  All of the supplied IDs must be for the same asset type from one of the following:   server   application   process   connection   Output fields are specific to the asset type specified. For example, the output for a server configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc. For a complete list of outputs for each asset type, see Using the DescribeConfigurations Action in the Amazon Web Services Application Discovery Service User Guide.
    @Sendable
    public func describeConfigurations(_ input: DescribeConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeConfigurationsResponse {
        return try await self.client.execute(
            operation: "DescribeConfigurations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists exports as specified by ID. All continuous exports associated with your user can be listed if you call DescribeContinuousExports as is without passing any parameters.
    @Sendable
    public func describeContinuousExports(_ input: DescribeContinuousExportsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeContinuousExportsResponse {
        return try await self.client.execute(
            operation: "DescribeContinuousExports", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  DescribeExportConfigurations is deprecated. Use DescribeExportTasks, instead.
    @Sendable
    public func describeExportConfigurations(_ input: DescribeExportConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeExportConfigurationsResponse {
        return try await self.client.execute(
            operation: "DescribeExportConfigurations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.
    @Sendable
    public func describeExportTasks(_ input: DescribeExportTasksRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeExportTasksResponse {
        return try await self.client.execute(
            operation: "DescribeExportTasks", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
    @Sendable
    public func describeImportTasks(_ input: DescribeImportTasksRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeImportTasksResponse {
        return try await self.client.execute(
            operation: "DescribeImportTasks", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter filters. There are three valid tag filter names:   tagKey   tagValue   configurationId   Also, all configuration items associated with your user that have tags can be listed if you call DescribeTags as is without passing any parameters.
    @Sendable
    public func describeTags(_ input: DescribeTagsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeTagsResponse {
        return try await self.client.execute(
            operation: "DescribeTags", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Disassociates one or more configuration items from an application.
    @Sendable
    public func disassociateConfigurationItemsFromApplication(_ input: DisassociateConfigurationItemsFromApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateConfigurationItemsFromApplicationResponse {
        return try await self.client.execute(
            operation: "DisassociateConfigurationItemsFromApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deprecated. Use StartExportTask instead. Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the DescribeExportConfigurations API. The system imposes a limit of two configuration exports in six hours.
    @Sendable
    public func exportConfigurations(logger: Logger = AWSClient.loggingDisabled) async throws -> ExportConfigurationsResponse {
        return try await self.client.execute(
            operation: "ExportConfigurations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            logger: logger
        )
    }

    /// Retrieves a short summary of discovered assets. This API operation takes no request parameters and is called as is at the command prompt as shown in the example.
    @Sendable
    public func getDiscoverySummary(_ input: GetDiscoverySummaryRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDiscoverySummaryResponse {
        return try await self.client.execute(
            operation: "GetDiscoverySummary", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of configuration items as specified by the value passed to the required parameter configurationType. Optional filtering may be applied to refine search results.
    @Sendable
    public func listConfigurations(_ input: ListConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListConfigurationsResponse {
        return try await self.client.execute(
            operation: "ListConfigurations", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves a list of servers that are one network hop away from a specified server.
    @Sendable
    public func listServerNeighbors(_ input: ListServerNeighborsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListServerNeighborsResponse {
        return try await self.client.execute(
            operation: "ListServerNeighbors", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Takes a list of configurationId as input and starts an asynchronous deletion  task to remove the configurationItems. Returns a unique deletion task identifier.
    @Sendable
    public func startBatchDeleteConfigurationTask(_ input: StartBatchDeleteConfigurationTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartBatchDeleteConfigurationTaskResponse {
        return try await self.client.execute(
            operation: "StartBatchDeleteConfigurationTask", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Start the continuous flow of agent's discovered data into Amazon Athena.
    @Sendable
    public func startContinuousExport(_ input: StartContinuousExportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartContinuousExportResponse {
        return try await self.client.execute(
            operation: "StartContinuousExport", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Instructs the specified agents to start collecting data.
    @Sendable
    public func startDataCollectionByAgentIds(_ input: StartDataCollectionByAgentIdsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartDataCollectionByAgentIdsResponse {
        return try await self.client.execute(
            operation: "StartDataCollectionByAgentIds", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Begins the export of a discovered data report to an Amazon S3 bucket managed by Amazon Web Services.  Exports might provide an estimate of fees and savings based on certain information  that you provide. Fee estimates do not include any taxes that might apply.  Your actual fees and savings depend on a variety of factors, including your actual usage of Amazon Web Services  services, which might vary from the estimates provided in this report.  If you do not specify preferences or agentIds in the filter, a summary of all servers, applications, tags, and performance is generated. This data is an aggregation of all server data collected through on-premises tooling, file import, application grouping and applying tags. If you specify agentIds in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using startTime and endTime. Export of detailed agent data is limited to five concurrently running exports.  Export of detailed agent data is limited to two exports per day. If you enable ec2RecommendationsPreferences in preferences  , an Amazon EC2 instance matching the characteristics of each server in Application Discovery Service is generated.  Changing the attributes of the ec2RecommendationsPreferences changes the criteria of the recommendation.
    @Sendable
    public func startExportTask(_ input: StartExportTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartExportTaskResponse {
        return try await self.client.execute(
            operation: "StartExportTask", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Starts an import task, which allows you to import details of your on-premises environment directly into Amazon Web Services Migration Hub without having to use the Amazon Web Services Application Discovery Service (Application Discovery Service) tools such as the Amazon Web Services Application Discovery Service Agentless Collector or Application Discovery Agent. This gives you the option to perform migration assessment and planning directly from your imported data, including the ability to group your devices as applications and track their migration status. To start an import request, do this:   Download the specially formatted comma separated value (CSV) import template, which you can find here: https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv.   Fill out the template with your server and application data.   Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL. Your import file must be in the CSV format.   Use the console or the StartImportTask command with the Amazon Web Services CLI or one of the Amazon Web Services SDKs to import the records from your file.   For more information, including step-by-step procedures, see Migration Hub Import in the Amazon Web Services Application Discovery Service User Guide.  There are limits to the number of import tasks you can create (and delete) in an Amazon Web Services account. For more information, see Amazon Web Services Application Discovery Service Limits in the Amazon Web Services Application Discovery Service User Guide.
    @Sendable
    public func startImportTask(_ input: StartImportTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartImportTaskResponse {
        return try await self.client.execute(
            operation: "StartImportTask", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stop the continuous flow of agent's discovered data into Amazon Athena.
    @Sendable
    public func stopContinuousExport(_ input: StopContinuousExportRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopContinuousExportResponse {
        return try await self.client.execute(
            operation: "StopContinuousExport", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Instructs the specified agents to stop collecting data.
    @Sendable
    public func stopDataCollectionByAgentIds(_ input: StopDataCollectionByAgentIdsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopDataCollectionByAgentIdsResponse {
        return try await self.client.execute(
            operation: "StopDataCollectionByAgentIds", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates metadata about an application.
    @Sendable
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateApplicationResponse {
        return try await self.client.execute(
            operation: "UpdateApplication", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ApplicationDiscoveryService {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ApplicationDiscoveryService, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ApplicationDiscoveryService {
    /// Lists agents or collectors as specified by ID or other filters. All agents/collectors associated with your user can be listed if you call DescribeAgents as is without passing any parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeAgentsPaginator(
        _ input: DescribeAgentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeAgentsRequest, DescribeAgentsResponse> {
        return .init(
            input: input,
            command: self.describeAgents,
            inputKey: \DescribeAgentsRequest.nextToken,
            outputKey: \DescribeAgentsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists exports as specified by ID. All continuous exports associated with your user can be listed if you call DescribeContinuousExports as is without passing any parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeContinuousExportsPaginator(
        _ input: DescribeContinuousExportsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeContinuousExportsRequest, DescribeContinuousExportsResponse> {
        return .init(
            input: input,
            command: self.describeContinuousExports,
            inputKey: \DescribeContinuousExportsRequest.nextToken,
            outputKey: \DescribeContinuousExportsResponse.nextToken,
            logger: logger
        )
    }

    ///  DescribeExportConfigurations is deprecated. Use DescribeExportTasks, instead.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeExportConfigurationsPaginator(
        _ input: DescribeExportConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeExportConfigurationsRequest, DescribeExportConfigurationsResponse> {
        return .init(
            input: input,
            command: self.describeExportConfigurations,
            inputKey: \DescribeExportConfigurationsRequest.nextToken,
            outputKey: \DescribeExportConfigurationsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeExportTasksPaginator(
        _ input: DescribeExportTasksRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeExportTasksRequest, DescribeExportTasksResponse> {
        return .init(
            input: input,
            command: self.describeExportTasks,
            inputKey: \DescribeExportTasksRequest.nextToken,
            outputKey: \DescribeExportTasksResponse.nextToken,
            logger: logger
        )
    }

    /// Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeImportTasksPaginator(
        _ input: DescribeImportTasksRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeImportTasksRequest, DescribeImportTasksResponse> {
        return .init(
            input: input,
            command: self.describeImportTasks,
            inputKey: \DescribeImportTasksRequest.nextToken,
            outputKey: \DescribeImportTasksResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter filters. There are three valid tag filter names:   tagKey   tagValue   configurationId   Also, all configuration items associated with your user that have tags can be listed if you call DescribeTags as is without passing any parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeTagsPaginator(
        _ input: DescribeTagsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeTagsRequest, DescribeTagsResponse> {
        return .init(
            input: input,
            command: self.describeTags,
            inputKey: \DescribeTagsRequest.nextToken,
            outputKey: \DescribeTagsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of configuration items as specified by the value passed to the required parameter configurationType. Optional filtering may be applied to refine search results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listConfigurationsPaginator(
        _ input: ListConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListConfigurationsRequest, ListConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listConfigurations,
            inputKey: \ListConfigurationsRequest.nextToken,
            outputKey: \ListConfigurationsResponse.nextToken,
            logger: logger
        )
    }
}

extension ApplicationDiscoveryService.DescribeAgentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeAgentsRequest {
        return .init(
            agentIds: self.agentIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.DescribeContinuousExportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeContinuousExportsRequest {
        return .init(
            exportIds: self.exportIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.DescribeExportConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeExportConfigurationsRequest {
        return .init(
            exportIds: self.exportIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.DescribeExportTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeExportTasksRequest {
        return .init(
            exportIds: self.exportIds,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.DescribeImportTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeImportTasksRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.DescribeTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeTagsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.ListConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.ListConfigurationsRequest {
        return .init(
            configurationType: self.configurationType,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            orderBy: self.orderBy
        )
    }
}
