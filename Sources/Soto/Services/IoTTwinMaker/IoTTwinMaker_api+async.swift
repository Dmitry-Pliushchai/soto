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

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IoTTwinMaker {
    // MARK: Async API Calls

    /// Sets values for multiple time series properties.
    public func batchPutPropertyValues(_ input: BatchPutPropertyValuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchPutPropertyValuesResponse {
        return try await self.client.execute(operation: "BatchPutPropertyValues", path: "/workspaces/{workspaceId}/entity-properties", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Cancels the metadata transfer job.
    public func cancelMetadataTransferJob(_ input: CancelMetadataTransferJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelMetadataTransferJobResponse {
        return try await self.client.execute(operation: "CancelMetadataTransferJob", path: "/metadata-transfer-jobs/{metadataTransferJobId}/cancel", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a component type.
    public func createComponentType(_ input: CreateComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComponentTypeResponse {
        return try await self.client.execute(operation: "CreateComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates an entity.
    public func createEntity(_ input: CreateEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEntityResponse {
        return try await self.client.execute(operation: "CreateEntity", path: "/workspaces/{workspaceId}/entities", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a new metadata transfer job.
    public func createMetadataTransferJob(_ input: CreateMetadataTransferJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMetadataTransferJobResponse {
        return try await self.client.execute(operation: "CreateMetadataTransferJob", path: "/metadata-transfer-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a scene.
    public func createScene(_ input: CreateSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSceneResponse {
        return try await self.client.execute(operation: "CreateScene", path: "/workspaces/{workspaceId}/scenes", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// This action creates a SyncJob.
    public func createSyncJob(_ input: CreateSyncJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSyncJobResponse {
        return try await self.client.execute(operation: "CreateSyncJob", path: "/workspaces/{workspaceId}/sync-jobs/{syncSource}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a workplace.
    public func createWorkspace(_ input: CreateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceResponse {
        return try await self.client.execute(operation: "CreateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a component type.
    public func deleteComponentType(_ input: DeleteComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteComponentTypeResponse {
        return try await self.client.execute(operation: "DeleteComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes an entity.
    public func deleteEntity(_ input: DeleteEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEntityResponse {
        return try await self.client.execute(operation: "DeleteEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a scene.
    public func deleteScene(_ input: DeleteSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSceneResponse {
        return try await self.client.execute(operation: "DeleteScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Delete the SyncJob.
    public func deleteSyncJob(_ input: DeleteSyncJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSyncJobResponse {
        return try await self.client.execute(operation: "DeleteSyncJob", path: "/workspaces/{workspaceId}/sync-jobs/{syncSource}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a workspace.
    public func deleteWorkspace(_ input: DeleteWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkspaceResponse {
        return try await self.client.execute(operation: "DeleteWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Run queries to access information from your knowledge graph of entities within individual workspaces.  The ExecuteQuery action only works with Amazon Web Services Java SDK2. ExecuteQuery will not work with any Amazon Web Services Java SDK version &lt; 2.x.
    public func executeQuery(_ input: ExecuteQueryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteQueryResponse {
        return try await self.client.execute(operation: "ExecuteQuery", path: "/queries/execution", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a component type.
    public func getComponentType(_ input: GetComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentTypeResponse {
        return try await self.client.execute(operation: "GetComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about an entity.
    public func getEntity(_ input: GetEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEntityResponse {
        return try await self.client.execute(operation: "GetEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets a nmetadata transfer job.
    public func getMetadataTransferJob(_ input: GetMetadataTransferJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMetadataTransferJobResponse {
        return try await self.client.execute(operation: "GetMetadataTransferJob", path: "/metadata-transfer-jobs/{metadataTransferJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets the pricing plan.
    public func getPricingPlan(_ input: GetPricingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPricingPlanResponse {
        return try await self.client.execute(operation: "GetPricingPlan", path: "/pricingplan", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets the property values for a component, component type, entity, or workspace. You must specify a value for either componentName, componentTypeId, entityId, or workspaceId.
    public func getPropertyValue(_ input: GetPropertyValueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPropertyValueResponse {
        return try await self.client.execute(operation: "GetPropertyValue", path: "/workspaces/{workspaceId}/entity-properties/value", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about the history of a time series property value for a component, component type, entity, or workspace. You must specify a value for workspaceId. For entity-specific queries, specify values for componentName and entityId. For cross-entity quries, specify a value for componentTypeId.
    public func getPropertyValueHistory(_ input: GetPropertyValueHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPropertyValueHistoryResponse {
        return try await self.client.execute(operation: "GetPropertyValueHistory", path: "/workspaces/{workspaceId}/entity-properties/history", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a scene.
    public func getScene(_ input: GetSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSceneResponse {
        return try await self.client.execute(operation: "GetScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets the SyncJob.
    public func getSyncJob(_ input: GetSyncJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSyncJobResponse {
        return try await self.client.execute(operation: "GetSyncJob", path: "/sync-jobs/{syncSource}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a workspace.
    public func getWorkspace(_ input: GetWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkspaceResponse {
        return try await self.client.execute(operation: "GetWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all component types in a workspace.
    public func listComponentTypes(_ input: ListComponentTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentTypesResponse {
        return try await self.client.execute(operation: "ListComponentTypes", path: "/workspaces/{workspaceId}/component-types-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// This API lists the components of an entity.
    public func listComponents(_ input: ListComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentsResponse {
        return try await self.client.execute(operation: "ListComponents", path: "/workspaces/{workspaceId}/entities/{entityId}/components-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all entities in a workspace.
    public func listEntities(_ input: ListEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEntitiesResponse {
        return try await self.client.execute(operation: "ListEntities", path: "/workspaces/{workspaceId}/entities-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists the metadata transfer jobs.
    public func listMetadataTransferJobs(_ input: ListMetadataTransferJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMetadataTransferJobsResponse {
        return try await self.client.execute(operation: "ListMetadataTransferJobs", path: "/metadata-transfer-jobs-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// This API lists the properties of a component.
    public func listProperties(_ input: ListPropertiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPropertiesResponse {
        return try await self.client.execute(operation: "ListProperties", path: "/workspaces/{workspaceId}/properties-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all scenes in a workspace.
    public func listScenes(_ input: ListScenesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScenesResponse {
        return try await self.client.execute(operation: "ListScenes", path: "/workspaces/{workspaceId}/scenes-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// List all SyncJobs.
    public func listSyncJobs(_ input: ListSyncJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSyncJobsResponse {
        return try await self.client.execute(operation: "ListSyncJobs", path: "/workspaces/{workspaceId}/sync-jobs-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists the sync resources.
    public func listSyncResources(_ input: ListSyncResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSyncResourcesResponse {
        return try await self.client.execute(operation: "ListSyncResources", path: "/workspaces/{workspaceId}/sync-jobs/{syncSource}/resources-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all tags associated with a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about workspaces in the current account.
    public func listWorkspaces(_ input: ListWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkspacesResponse {
        return try await self.client.execute(operation: "ListWorkspaces", path: "/workspaces-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates information in a component type.
    public func updateComponentType(_ input: UpdateComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateComponentTypeResponse {
        return try await self.client.execute(operation: "UpdateComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an entity.
    public func updateEntity(_ input: UpdateEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEntityResponse {
        return try await self.client.execute(operation: "UpdateEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Update the pricing plan.
    public func updatePricingPlan(_ input: UpdatePricingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePricingPlanResponse {
        return try await self.client.execute(operation: "UpdatePricingPlan", path: "/pricingplan", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a scene.
    public func updateScene(_ input: UpdateSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSceneResponse {
        return try await self.client.execute(operation: "UpdateScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a workspace.
    public func updateWorkspace(_ input: UpdateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkspaceResponse {
        return try await self.client.execute(operation: "UpdateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IoTTwinMaker {
    /// Run queries to access information from your knowledge graph of entities within individual workspaces.  The ExecuteQuery action only works with Amazon Web Services Java SDK2. ExecuteQuery will not work with any Amazon Web Services Java SDK version &lt; 2.x.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func executeQueryPaginator(
        _ input: ExecuteQueryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ExecuteQueryRequest, ExecuteQueryResponse> {
        return .init(
            input: input,
            command: self.executeQuery,
            inputKey: \ExecuteQueryRequest.nextToken,
            outputKey: \ExecuteQueryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Gets the property values for a component, component type, entity, or workspace. You must specify a value for either componentName, componentTypeId, entityId, or workspaceId.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getPropertyValuePaginator(
        _ input: GetPropertyValueRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetPropertyValueRequest, GetPropertyValueResponse> {
        return .init(
            input: input,
            command: self.getPropertyValue,
            inputKey: \GetPropertyValueRequest.nextToken,
            outputKey: \GetPropertyValueResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves information about the history of a time series property value for a component, component type, entity, or workspace. You must specify a value for workspaceId. For entity-specific queries, specify values for componentName and entityId. For cross-entity quries, specify a value for componentTypeId.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getPropertyValueHistoryPaginator(
        _ input: GetPropertyValueHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetPropertyValueHistoryRequest, GetPropertyValueHistoryResponse> {
        return .init(
            input: input,
            command: self.getPropertyValueHistory,
            inputKey: \GetPropertyValueHistoryRequest.nextToken,
            outputKey: \GetPropertyValueHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all component types in a workspace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentTypesPaginator(
        _ input: ListComponentTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentTypesRequest, ListComponentTypesResponse> {
        return .init(
            input: input,
            command: self.listComponentTypes,
            inputKey: \ListComponentTypesRequest.nextToken,
            outputKey: \ListComponentTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// This API lists the components of an entity.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentsRequest, ListComponentsResponse> {
        return .init(
            input: input,
            command: self.listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all entities in a workspace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEntitiesPaginator(
        _ input: ListEntitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEntitiesRequest, ListEntitiesResponse> {
        return .init(
            input: input,
            command: self.listEntities,
            inputKey: \ListEntitiesRequest.nextToken,
            outputKey: \ListEntitiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the metadata transfer jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMetadataTransferJobsPaginator(
        _ input: ListMetadataTransferJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMetadataTransferJobsRequest, ListMetadataTransferJobsResponse> {
        return .init(
            input: input,
            command: self.listMetadataTransferJobs,
            inputKey: \ListMetadataTransferJobsRequest.nextToken,
            outputKey: \ListMetadataTransferJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// This API lists the properties of a component.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPropertiesPaginator(
        _ input: ListPropertiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPropertiesRequest, ListPropertiesResponse> {
        return .init(
            input: input,
            command: self.listProperties,
            inputKey: \ListPropertiesRequest.nextToken,
            outputKey: \ListPropertiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all scenes in a workspace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listScenesPaginator(
        _ input: ListScenesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListScenesRequest, ListScenesResponse> {
        return .init(
            input: input,
            command: self.listScenes,
            inputKey: \ListScenesRequest.nextToken,
            outputKey: \ListScenesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// List all SyncJobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSyncJobsPaginator(
        _ input: ListSyncJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSyncJobsRequest, ListSyncJobsResponse> {
        return .init(
            input: input,
            command: self.listSyncJobs,
            inputKey: \ListSyncJobsRequest.nextToken,
            outputKey: \ListSyncJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the sync resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSyncResourcesPaginator(
        _ input: ListSyncResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSyncResourcesRequest, ListSyncResourcesResponse> {
        return .init(
            input: input,
            command: self.listSyncResources,
            inputKey: \ListSyncResourcesRequest.nextToken,
            outputKey: \ListSyncResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves information about workspaces in the current account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkspacesPaginator(
        _ input: ListWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkspacesRequest, ListWorkspacesResponse> {
        return .init(
            input: input,
            command: self.listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
