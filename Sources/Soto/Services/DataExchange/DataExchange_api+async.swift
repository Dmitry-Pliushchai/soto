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
extension DataExchange {
    // MARK: Async API Calls

    /// This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "CancelJob", path: "/v1/jobs/{JobId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation creates a data set.
    public func createDataSet(_ input: CreateDataSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataSetResponse {
        return try await self.client.execute(operation: "CreateDataSet", path: "/v1/data-sets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation creates an event action.
    public func createEventAction(_ input: CreateEventActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEventActionResponse {
        return try await self.client.execute(operation: "CreateEventAction", path: "/v1/event-actions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation creates a job.
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateJobResponse {
        return try await self.client.execute(operation: "CreateJob", path: "/v1/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation creates a revision for a data set.
    public func createRevision(_ input: CreateRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRevisionResponse {
        return try await self.client.execute(operation: "CreateRevision", path: "/v1/data-sets/{DataSetId}/revisions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation deletes an asset.
    public func deleteAsset(_ input: DeleteAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation deletes a data set.
    public func deleteDataSet(_ input: DeleteDataSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation deletes the event action.
    public func deleteEventAction(_ input: DeleteEventActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteEventAction", path: "/v1/event-actions/{EventActionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation deletes a revision.
    public func deleteRevision(_ input: DeleteRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns information about an asset.
    public func getAsset(_ input: GetAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssetResponse {
        return try await self.client.execute(operation: "GetAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns information about a data set.
    public func getDataSet(_ input: GetDataSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataSetResponse {
        return try await self.client.execute(operation: "GetDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation retrieves information about an event action.
    public func getEventAction(_ input: GetEventActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEventActionResponse {
        return try await self.client.execute(operation: "GetEventAction", path: "/v1/event-actions/{EventActionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns information about a job.
    public func getJob(_ input: GetJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetJobResponse {
        return try await self.client.execute(operation: "GetJob", path: "/v1/jobs/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns information about a revision.
    public func getRevision(_ input: GetRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRevisionResponse {
        return try await self.client.execute(operation: "GetRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation lists a data set's revisions sorted by CreatedAt in descending order.
    public func listDataSetRevisions(_ input: ListDataSetRevisionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataSetRevisionsResponse {
        return try await self.client.execute(operation: "ListDataSetRevisions", path: "/v1/data-sets/{DataSetId}/revisions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    public func listDataSets(_ input: ListDataSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataSetsResponse {
        return try await self.client.execute(operation: "ListDataSets", path: "/v1/data-sets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation lists your event actions.
    public func listEventActions(_ input: ListEventActionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventActionsResponse {
        return try await self.client.execute(operation: "ListEventActions", path: "/v1/event-actions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation lists your jobs sorted by CreatedAt in descending order.
    public func listJobs(_ input: ListJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResponse {
        return try await self.client.execute(operation: "ListJobs", path: "/v1/jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation lists a revision's assets sorted alphabetically in descending order.
    public func listRevisionAssets(_ input: ListRevisionAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRevisionAssetsResponse {
        return try await self.client.execute(operation: "ListRevisionAssets", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation lists the tags on the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation revokes subscribers' access to a revision.
    public func revokeRevision(_ input: RevokeRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeRevisionResponse {
        return try await self.client.execute(operation: "RevokeRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation invokes an API Gateway API asset. The request is proxied to the provider’s API Gateway API.
    public func sendApiAsset(_ input: SendApiAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendApiAssetResponse {
        return try await self.client.execute(operation: "SendApiAsset", path: "/v1", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api-fulfill.", logger: logger, on: eventLoop)
    }

    /// The type of event associated with the data set.
    public func sendDataSetNotification(_ input: SendDataSetNotificationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendDataSetNotificationResponse {
        return try await self.client.execute(operation: "SendDataSetNotification", path: "/v1/data-sets/{DataSetId}/notification", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation starts a job.
    public func startJob(_ input: StartJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartJobResponse {
        return try await self.client.execute(operation: "StartJob", path: "/v1/jobs/{JobId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation tags a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation removes one or more tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation updates an asset.
    public func updateAsset(_ input: UpdateAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssetResponse {
        return try await self.client.execute(operation: "UpdateAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation updates a data set.
    public func updateDataSet(_ input: UpdateDataSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDataSetResponse {
        return try await self.client.execute(operation: "UpdateDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation updates the event action.
    public func updateEventAction(_ input: UpdateEventActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEventActionResponse {
        return try await self.client.execute(operation: "UpdateEventAction", path: "/v1/event-actions/{EventActionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation updates a revision.
    public func updateRevision(_ input: UpdateRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRevisionResponse {
        return try await self.client.execute(operation: "UpdateRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension DataExchange {
    /// This operation lists a data set's revisions sorted by CreatedAt in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataSetRevisionsPaginator(
        _ input: ListDataSetRevisionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataSetRevisionsRequest, ListDataSetRevisionsResponse> {
        return .init(
            input: input,
            command: self.listDataSetRevisions,
            inputKey: \ListDataSetRevisionsRequest.nextToken,
            outputKey: \ListDataSetRevisionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataSetsPaginator(
        _ input: ListDataSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataSetsRequest, ListDataSetsResponse> {
        return .init(
            input: input,
            command: self.listDataSets,
            inputKey: \ListDataSetsRequest.nextToken,
            outputKey: \ListDataSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// This operation lists your event actions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventActionsPaginator(
        _ input: ListEventActionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventActionsRequest, ListEventActionsResponse> {
        return .init(
            input: input,
            command: self.listEventActions,
            inputKey: \ListEventActionsRequest.nextToken,
            outputKey: \ListEventActionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// This operation lists your jobs sorted by CreatedAt in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResponse> {
        return .init(
            input: input,
            command: self.listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// This operation lists a revision's assets sorted alphabetically in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRevisionAssetsPaginator(
        _ input: ListRevisionAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRevisionAssetsRequest, ListRevisionAssetsResponse> {
        return .init(
            input: input,
            command: self.listRevisionAssets,
            inputKey: \ListRevisionAssetsRequest.nextToken,
            outputKey: \ListRevisionAssetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
