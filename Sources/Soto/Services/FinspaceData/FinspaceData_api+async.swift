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
extension FinspaceData {
    // MARK: Async API Calls

    /// Adds a user to a permission group to grant permissions for actions a user can perform in FinSpace.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func associateUserToPermissionGroup(_ input: AssociateUserToPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateUserToPermissionGroupResponse {
        return try await self.client.execute(operation: "AssociateUserToPermissionGroup", path: "/permission-group/{permissionGroupId}/users/{userId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Changeset in a FinSpace Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func createChangeset(_ input: CreateChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChangesetResponse {
        return try await self.client.execute(operation: "CreateChangeset", path: "/datasets/{datasetId}/changesetsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Dataview for a Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func createDataView(_ input: CreateDataViewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataViewResponse {
        return try await self.client.execute(operation: "CreateDataView", path: "/datasets/{datasetId}/dataviewsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new FinSpace Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatasetResponse {
        return try await self.client.execute(operation: "CreateDataset", path: "/datasetsv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a group of permissions for various actions that a user can perform in FinSpace.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func createPermissionGroup(_ input: CreatePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePermissionGroupResponse {
        return try await self.client.execute(operation: "CreatePermissionGroup", path: "/permission-group", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new user in FinSpace.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        return try await self.client.execute(operation: "CreateUser", path: "/user", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a FinSpace Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func deleteDataset(_ input: DeleteDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatasetResponse {
        return try await self.client.execute(operation: "DeleteDataset", path: "/datasetsv2/{datasetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a permission group. This action is irreversible.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func deletePermissionGroup(_ input: DeletePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePermissionGroupResponse {
        return try await self.client.execute(operation: "DeletePermissionGroup", path: "/permission-group/{permissionGroupId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Denies access to the FinSpace web application and API for the specified user.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func disableUser(_ input: DisableUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUserResponse {
        return try await self.client.execute(operation: "DisableUser", path: "/user/{userId}/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a user from a permission group.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func disassociateUserFromPermissionGroup(_ input: DisassociateUserFromPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateUserFromPermissionGroupResponse {
        return try await self.client.execute(operation: "DisassociateUserFromPermissionGroup", path: "/permission-group/{permissionGroupId}/users/{userId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Allows the specified user to access the FinSpace web application and API.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func enableUser(_ input: EnableUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableUserResponse {
        return try await self.client.execute(operation: "EnableUser", path: "/user/{userId}/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get information about a Changeset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getChangeset(_ input: GetChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChangesetResponse {
        return try await self.client.execute(operation: "GetChangeset", path: "/datasets/{datasetId}/changesetsv2/{changesetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a Dataview.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getDataView(_ input: GetDataViewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataViewResponse {
        return try await self.client.execute(operation: "GetDataView", path: "/datasets/{datasetId}/dataviewsv2/{dataViewId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getDataset(_ input: GetDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatasetResponse {
        return try await self.client.execute(operation: "GetDataset", path: "/datasetsv2/{datasetId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the credentials to access the external Dataview from an S3 location. To call this API:   You must retrieve the programmatic credentials.   You must be a member of a FinSpace user group, where the dataset that you want to access has Read Dataset Data permissions.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getExternalDataViewAccessDetails(_ input: GetExternalDataViewAccessDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetExternalDataViewAccessDetailsResponse {
        return try await self.client.execute(operation: "GetExternalDataViewAccessDetails", path: "/datasets/{datasetId}/dataviewsv2/{dataViewId}/external-access-details", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of a specific permission group.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getPermissionGroup(_ input: GetPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPermissionGroupResponse {
        return try await self.client.execute(operation: "GetPermissionGroup", path: "/permission-group/{permissionGroupId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Request programmatic credentials to use with FinSpace SDK. For more information, see Step 2. Access credentials programmatically using IAM access key id and secret access key.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getProgrammaticAccessCredentials(_ input: GetProgrammaticAccessCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProgrammaticAccessCredentialsResponse {
        return try await self.client.execute(operation: "GetProgrammaticAccessCredentials", path: "/credentials/programmatic", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details for a specific user.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getUser(_ input: GetUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUserResponse {
        return try await self.client.execute(operation: "GetUser", path: "/user/{userId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A temporary Amazon S3 location, where you can copy your files from a source location to stage or use as a scratch space in FinSpace notebook.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func getWorkingLocation(_ input: GetWorkingLocationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkingLocationResponse {
        return try await self.client.execute(operation: "GetWorkingLocation", path: "/workingLocationV1", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the FinSpace Changesets for a Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listChangesets(_ input: ListChangesetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChangesetsResponse {
        return try await self.client.execute(operation: "ListChangesets", path: "/datasets/{datasetId}/changesetsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available Dataviews for a Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listDataViews(_ input: ListDataViewsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataViewsResponse {
        return try await self.client.execute(operation: "ListDataViews", path: "/datasets/{datasetId}/dataviewsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the active Datasets that a user has access to.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listDatasets(_ input: ListDatasetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatasetsResponse {
        return try await self.client.execute(operation: "ListDatasets", path: "/datasetsv2", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available permission groups in FinSpace.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listPermissionGroups(_ input: ListPermissionGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionGroupsResponse {
        return try await self.client.execute(operation: "ListPermissionGroups", path: "/permission-group", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the permission groups that are associated with a specific user.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listPermissionGroupsByUser(_ input: ListPermissionGroupsByUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionGroupsByUserResponse {
        return try await self.client.execute(operation: "ListPermissionGroupsByUser", path: "/user/{userId}/permission-groups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available users in FinSpace.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listUsers(_ input: ListUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        return try await self.client.execute(operation: "ListUsers", path: "/user", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists details of all the users in a specific permission group.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listUsersByPermissionGroup(_ input: ListUsersByPermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersByPermissionGroupResponse {
        return try await self.client.execute(operation: "ListUsersByPermissionGroup", path: "/permission-group/{permissionGroupId}/users", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resets the password for a specified user ID and generates a temporary one. Only a superuser can reset password for other users. Resetting the password immediately invalidates the previous password associated with the user.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func resetUserPassword(_ input: ResetUserPasswordRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetUserPasswordResponse {
        return try await self.client.execute(operation: "ResetUserPassword", path: "/user/{userId}/password", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a FinSpace Changeset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func updateChangeset(_ input: UpdateChangesetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateChangesetResponse {
        return try await self.client.execute(operation: "UpdateChangeset", path: "/datasets/{datasetId}/changesetsv2/{changesetId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a FinSpace Dataset.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func updateDataset(_ input: UpdateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDatasetResponse {
        return try await self.client.execute(operation: "UpdateDataset", path: "/datasetsv2/{datasetId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the details of a permission group. You cannot modify a permissionGroupID.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func updatePermissionGroup(_ input: UpdatePermissionGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePermissionGroupResponse {
        return try await self.client.execute(operation: "UpdatePermissionGroup", path: "/permission-group/{permissionGroupId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the details of the specified user. You cannot update the userId for a user.
    @available(*, deprecated, message: "This method will be discontinued.")
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserResponse {
        return try await self.client.execute(operation: "UpdateUser", path: "/user/{userId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension FinspaceData {
    /// Lists the FinSpace Changesets for a Dataset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listChangesetsPaginator(
        _ input: ListChangesetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChangesetsRequest, ListChangesetsResponse> {
        return .init(
            input: input,
            command: self.listChangesets,
            inputKey: \ListChangesetsRequest.nextToken,
            outputKey: \ListChangesetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all available Dataviews for a Dataset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listDataViewsPaginator(
        _ input: ListDataViewsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataViewsRequest, ListDataViewsResponse> {
        return .init(
            input: input,
            command: self.listDataViews,
            inputKey: \ListDataViewsRequest.nextToken,
            outputKey: \ListDataViewsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all of the active Datasets that a user has access to.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetsRequest, ListDatasetsResponse> {
        return .init(
            input: input,
            command: self.listDatasets,
            inputKey: \ListDatasetsRequest.nextToken,
            outputKey: \ListDatasetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all available permission groups in FinSpace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listPermissionGroupsPaginator(
        _ input: ListPermissionGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionGroupsRequest, ListPermissionGroupsResponse> {
        return .init(
            input: input,
            command: self.listPermissionGroups,
            inputKey: \ListPermissionGroupsRequest.nextToken,
            outputKey: \ListPermissionGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all available users in FinSpace.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    @available(*, deprecated, message: "This method will be discontinued.")
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: self.listUsers,
            inputKey: \ListUsersRequest.nextToken,
            outputKey: \ListUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
