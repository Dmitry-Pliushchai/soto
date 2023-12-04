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

/// Service object for interacting with AWS Appflow service.
///
/// Welcome to the Amazon AppFlow API reference. This guide is for developers who need detailed information about the Amazon AppFlow API operations, data types, and errors.  Amazon AppFlow is a fully managed integration service that enables you to securely transfer data between software as a service (SaaS) applications like Salesforce, Marketo, Slack, and ServiceNow, and Amazon Web Services like Amazon S3 and Amazon Redshift.  Use the following links to get started on the Amazon AppFlow API:    Actions: An alphabetical list of all Amazon AppFlow API operations.    Data types: An alphabetical list of all Amazon AppFlow data types.    Common parameters: Parameters that all Query operations can use.    Common errors: Client and server errors that all operations can return.   If you're new to Amazon AppFlow, we recommend that you review the Amazon AppFlow User Guide. Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and include applicable OAuth attributes (such as auth-code and redirecturi) with the connector-specific ConnectorProfileProperties when creating a new connector profile using Amazon AppFlow API operations. For example, Salesforce users can refer to the  Authorize Apps with OAuth documentation.
public struct Appflow: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Appflow client
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
            serviceName: "Appflow",
            serviceIdentifier: "appflow",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-23",
            endpoint: endpoint,
            variantEndpoints: Self.variantEndpoints,
            errorType: AppflowErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }




    /// FIPS and dualstack endpoints
    static var variantEndpoints: [EndpointVariantType: AWSServiceConfig.EndpointVariant] {[
        [.fips]: .init(endpoints: [
            "us-east-1": "appflow-fips.us-east-1.amazonaws.com",
            "us-east-2": "appflow-fips.us-east-2.amazonaws.com",
            "us-west-1": "appflow-fips.us-west-1.amazonaws.com",
            "us-west-2": "appflow-fips.us-west-2.amazonaws.com"
        ])
    ]}

    // MARK: API Calls

    /// Cancels active runs for a flow. You can cancel all of the active runs for a flow, or you can cancel specific runs by providing their IDs. You can cancel a flow run only when the run is in progress. You can't cancel a run that has already completed or failed. You also can't cancel a run that's scheduled to occur but hasn't started yet. To prevent a scheduled run, you can deactivate the flow with the StopFlow action. You cannot resume a run after you cancel it. When you send your request, the status for each run becomes CancelStarted. When the cancellation completes, the status becomes Canceled.  When you cancel a run, you still incur charges for any data that the run already processed before the cancellation. If the run had already written some data to the flow destination, then that data remains in the destination. If you configured the flow to use a batch API (such as the Salesforce Bulk API 2.0), then the run will finish reading or writing its entire batch of data after the cancellation. For these operations, the data processing charges for Amazon AppFlow apply. For the pricing information, see Amazon AppFlow pricing.
    @Sendable
    public func cancelFlowExecutions(_ input: CancelFlowExecutionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelFlowExecutionsResponse {
        return try await self.client.execute(
            operation: "CancelFlowExecutions", 
            path: "/cancel-flow-executions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Creates a new connector profile associated with your Amazon Web Services account. There is a soft quota of 100 connector profiles per Amazon Web Services account. If you need more connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel. In each connector profile that you create, you can provide the credentials and properties for only one connector.
    @Sendable
    public func createConnectorProfile(_ input: CreateConnectorProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateConnectorProfileResponse {
        return try await self.client.execute(
            operation: "CreateConnectorProfile", 
            path: "/create-connector-profile", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Enables your application to create a new flow using Amazon AppFlow. You must create a connector profile before calling this API. Please note that the Request Syntax below shows syntax for multiple destinations, however, you can only transfer data to one item in this list at a time. Amazon AppFlow does not currently support flows to multiple destinations at once.
    @Sendable
    public func createFlow(_ input: CreateFlowRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateFlowResponse {
        return try await self.client.execute(
            operation: "CreateFlow", 
            path: "/create-flow", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Enables you to delete an existing connector profile.
    @Sendable
    public func deleteConnectorProfile(_ input: DeleteConnectorProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteConnectorProfileResponse {
        return try await self.client.execute(
            operation: "DeleteConnectorProfile", 
            path: "/delete-connector-profile", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can delete flows one at a time.
    @Sendable
    public func deleteFlow(_ input: DeleteFlowRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteFlowResponse {
        return try await self.client.execute(
            operation: "DeleteFlow", 
            path: "/delete-flow", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the given custom connector registered in your Amazon Web Services account. This API can be used for custom connectors that are registered in your account and also for Amazon authored connectors.
    @Sendable
    public func describeConnector(_ input: DescribeConnectorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeConnectorResponse {
        return try await self.client.execute(
            operation: "DescribeConnector", 
            path: "/describe-connector", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Provides details regarding the entity used with the connector, with a description of the data model for each field in that entity.
    @Sendable
    public func describeConnectorEntity(_ input: DescribeConnectorEntityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeConnectorEntityResponse {
        return try await self.client.execute(
            operation: "DescribeConnectorEntity", 
            path: "/describe-connector-entity", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result.  If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.
    @Sendable
    public func describeConnectorProfiles(_ input: DescribeConnectorProfilesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeConnectorProfilesResponse {
        return try await self.client.execute(
            operation: "DescribeConnectorProfiles", 
            path: "/describe-connector-profiles", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page.
    @Sendable
    public func describeConnectors(_ input: DescribeConnectorsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeConnectorsResponse {
        return try await self.client.execute(
            operation: "DescribeConnectors", 
            path: "/describe-connectors", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Provides a description of the specified flow.
    @Sendable
    public func describeFlow(_ input: DescribeFlowRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFlowResponse {
        return try await self.client.execute(
            operation: "DescribeFlow", 
            path: "/describe-flow", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Fetches the execution history of the flow.
    @Sendable
    public func describeFlowExecutionRecords(_ input: DescribeFlowExecutionRecordsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeFlowExecutionRecordsResponse {
        return try await self.client.execute(
            operation: "DescribeFlowExecutionRecords", 
            path: "/describe-flow-execution-records", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Returns the list of available connector entities supported by Amazon AppFlow. For example, you can query Salesforce for Account and Opportunity entities, or query ServiceNow for the Incident entity.
    @Sendable
    public func listConnectorEntities(_ input: ListConnectorEntitiesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListConnectorEntitiesResponse {
        return try await self.client.execute(
            operation: "ListConnectorEntities", 
            path: "/list-connector-entities", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns the list of all registered custom connectors in your Amazon Web Services account. This API lists only custom connectors registered in this account, not the Amazon Web Services authored connectors.
    @Sendable
    public func listConnectors(_ input: ListConnectorsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListConnectorsResponse {
        return try await self.client.execute(
            operation: "ListConnectors", 
            path: "/list-connectors", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Lists all of the flows associated with your account.
    @Sendable
    public func listFlows(_ input: ListFlowsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFlowsResponse {
        return try await self.client.execute(
            operation: "ListFlows", 
            path: "/list-flows", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Retrieves the tags that are associated with a specified flow.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Registers a new custom connector with your Amazon Web Services account. Before you can register the connector, you must deploy the associated AWS lambda function in your account.
    @Sendable
    public func registerConnector(_ input: RegisterConnectorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RegisterConnectorResponse {
        return try await self.client.execute(
            operation: "RegisterConnector", 
            path: "/register-connector", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Resets metadata about your connector entities that Amazon AppFlow stored in its cache. Use this action when you want Amazon AppFlow to return the latest information about the data that you have in a source application. Amazon AppFlow returns metadata about your entities when you use the ListConnectorEntities or DescribeConnectorEntities actions. Following these actions, Amazon AppFlow caches the metadata to reduce the number of API requests that it must send to the source application. Amazon AppFlow automatically resets the cache once every hour, but you can use this action when you want to get the latest metadata right away.
    @Sendable
    public func resetConnectorMetadataCache(_ input: ResetConnectorMetadataCacheRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ResetConnectorMetadataCacheResponse {
        return try await self.client.execute(
            operation: "ResetConnectorMetadataCache", 
            path: "/reset-connector-metadata-cache", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Activates an existing flow. For on-demand flows, this operation runs the flow immediately. For schedule and event-triggered flows, this operation activates the flow.
    @Sendable
    public func startFlow(_ input: StartFlowRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartFlowResponse {
        return try await self.client.execute(
            operation: "StartFlow", 
            path: "/start-flow", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Deactivates the existing flow. For on-demand flows, this operation returns an unsupportedOperationException error message. For schedule and event-triggered flows, this operation deactivates the flow.
    @Sendable
    public func stopFlow(_ input: StopFlowRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopFlowResponse {
        return try await self.client.execute(
            operation: "StopFlow", 
            path: "/stop-flow", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Applies a tag to the specified flow.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Unregisters the custom connector registered in your account that matches the connector label provided in the request.
    @Sendable
    public func unregisterConnector(_ input: UnregisterConnectorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UnregisterConnectorResponse {
        return try await self.client.execute(
            operation: "UnregisterConnector", 
            path: "/unregister-connector", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Removes a tag from the specified flow.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/tags/{resourceArn}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Updates a given connector profile associated with your account.
    @Sendable
    public func updateConnectorProfile(_ input: UpdateConnectorProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateConnectorProfileResponse {
        return try await self.client.execute(
            operation: "UpdateConnectorProfile", 
            path: "/update-connector-profile", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Updates a custom connector that you've previously registered. This operation updates the connector with one of the following:   The latest version of the AWS Lambda function that's assigned to the connector   A new AWS Lambda function that you specify
    @Sendable
    public func updateConnectorRegistration(_ input: UpdateConnectorRegistrationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateConnectorRegistrationResponse {
        return try await self.client.execute(
            operation: "UpdateConnectorRegistration", 
            path: "/update-connector-registration", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    ///  Updates an existing flow.
    @Sendable
    public func updateFlow(_ input: UpdateFlowRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateFlowResponse {
        return try await self.client.execute(
            operation: "UpdateFlow", 
            path: "/update-flow", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Appflow {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Appflow, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Appflow {
    ///  Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result.  If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeConnectorProfilesPaginator(
        _ input: DescribeConnectorProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeConnectorProfilesRequest, DescribeConnectorProfilesResponse> {
        return .init(
            input: input,
            command: self.describeConnectorProfiles,
            inputKey: \DescribeConnectorProfilesRequest.nextToken,
            outputKey: \DescribeConnectorProfilesResponse.nextToken,
            logger: logger
        )
    }

    ///  Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeConnectorsPaginator(
        _ input: DescribeConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeConnectorsRequest, DescribeConnectorsResponse> {
        return .init(
            input: input,
            command: self.describeConnectors,
            inputKey: \DescribeConnectorsRequest.nextToken,
            outputKey: \DescribeConnectorsResponse.nextToken,
            logger: logger
        )
    }

    ///  Fetches the execution history of the flow.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeFlowExecutionRecordsPaginator(
        _ input: DescribeFlowExecutionRecordsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeFlowExecutionRecordsRequest, DescribeFlowExecutionRecordsResponse> {
        return .init(
            input: input,
            command: self.describeFlowExecutionRecords,
            inputKey: \DescribeFlowExecutionRecordsRequest.nextToken,
            outputKey: \DescribeFlowExecutionRecordsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns the list of all registered custom connectors in your Amazon Web Services account. This API lists only custom connectors registered in this account, not the Amazon Web Services authored connectors.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listConnectorsPaginator(
        _ input: ListConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListConnectorsRequest, ListConnectorsResponse> {
        return .init(
            input: input,
            command: self.listConnectors,
            inputKey: \ListConnectorsRequest.nextToken,
            outputKey: \ListConnectorsResponse.nextToken,
            logger: logger
        )
    }

    ///  Lists all of the flows associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listFlowsPaginator(
        _ input: ListFlowsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFlowsRequest, ListFlowsResponse> {
        return .init(
            input: input,
            command: self.listFlows,
            inputKey: \ListFlowsRequest.nextToken,
            outputKey: \ListFlowsResponse.nextToken,
            logger: logger
        )
    }
}

extension Appflow.DescribeConnectorProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Appflow.DescribeConnectorProfilesRequest {
        return .init(
            connectorLabel: self.connectorLabel,
            connectorProfileNames: self.connectorProfileNames,
            connectorType: self.connectorType,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Appflow.DescribeConnectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Appflow.DescribeConnectorsRequest {
        return .init(
            connectorTypes: self.connectorTypes,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Appflow.DescribeFlowExecutionRecordsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Appflow.DescribeFlowExecutionRecordsRequest {
        return .init(
            flowName: self.flowName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Appflow.ListConnectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Appflow.ListConnectorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Appflow.ListFlowsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Appflow.ListFlowsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
