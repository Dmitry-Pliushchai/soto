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

/// Service object for interacting with AWS IdentityStore service.
///
/// The Identity Store service used by AWS IAM Identity Center (successor to AWS Single Sign-On) provides a single place to retrieve all of your identities (users and groups). For more information, see the IAM Identity Center User Guide.   Although AWS Single Sign-On was renamed, the sso and identitystore API namespaces will continue to retain their original name for backward compatibility purposes. For more information, see IAM Identity Center rename.   This reference guide describes the identity store operations that you can call programatically and includes detailed information about data types and errors.
public struct IdentityStore: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IdentityStore client
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
            amzTarget: "AWSIdentityStore",
            service: "identitystore",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2020-06-15",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-gov-east-1": "identitystore.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "identitystore.us-gov-west-1.amazonaws.com"
                ])
            ],
            errorType: IdentityStoreErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a group within the specified identity store.
    @Sendable
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGroupResponse {
        return try await self.client.execute(operation: "CreateGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a relationship between a member and a group. The following identifiers must be specified: GroupId, IdentityStoreId, and MemberId.
    @Sendable
    public func createGroupMembership(_ input: CreateGroupMembershipRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateGroupMembershipResponse {
        return try await self.client.execute(operation: "CreateGroupMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a user within the specified identity store.
    @Sendable
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateUserResponse {
        return try await self.client.execute(operation: "CreateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete a group within an identity store given GroupId.
    @Sendable
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteGroupResponse {
        return try await self.client.execute(operation: "DeleteGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete a membership within a group given MembershipId.
    @Sendable
    public func deleteGroupMembership(_ input: DeleteGroupMembershipRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteGroupMembershipResponse {
        return try await self.client.execute(operation: "DeleteGroupMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a user within an identity store given UserId.
    @Sendable
    public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteUserResponse {
        return try await self.client.execute(operation: "DeleteUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the group metadata and attributes from GroupId in an identity store.
    @Sendable
    public func describeGroup(_ input: DescribeGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeGroupResponse {
        return try await self.client.execute(operation: "DescribeGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves membership metadata and attributes from MembershipId in an identity store.
    @Sendable
    public func describeGroupMembership(_ input: DescribeGroupMembershipRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeGroupMembershipResponse {
        return try await self.client.execute(operation: "DescribeGroupMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the user metadata and attributes from the UserId in an identity store.
    @Sendable
    public func describeUser(_ input: DescribeUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeUserResponse {
        return try await self.client.execute(operation: "DescribeUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves GroupId in an identity store.
    @Sendable
    public func getGroupId(_ input: GetGroupIdRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGroupIdResponse {
        return try await self.client.execute(operation: "GetGroupId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the MembershipId in an identity store.
    @Sendable
    public func getGroupMembershipId(_ input: GetGroupMembershipIdRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGroupMembershipIdResponse {
        return try await self.client.execute(operation: "GetGroupMembershipId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the UserId in an identity store.
    @Sendable
    public func getUserId(_ input: GetUserIdRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetUserIdResponse {
        return try await self.client.execute(operation: "GetUserId", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Checks the user's membership in all requested groups and returns if the member exists in all queried groups.
    @Sendable
    public func isMemberInGroups(_ input: IsMemberInGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> IsMemberInGroupsResponse {
        return try await self.client.execute(operation: "IsMemberInGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// For the specified group in the specified identity store, returns the list of all GroupMembership objects and returns results in paginated form.
    @Sendable
    public func listGroupMemberships(_ input: ListGroupMembershipsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGroupMembershipsResponse {
        return try await self.client.execute(operation: "ListGroupMemberships", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// For the specified member in the specified identity store, returns the list of all GroupMembership objects and returns results in paginated form.
    @Sendable
    public func listGroupMembershipsForMember(_ input: ListGroupMembershipsForMemberRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGroupMembershipsForMemberResponse {
        return try await self.client.execute(operation: "ListGroupMembershipsForMember", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists all groups in the identity store. Returns a paginated list of complete Group objects.  Filtering for a Group by the DisplayName attribute is deprecated. Instead, use the GetGroupId API action.
    @Sendable
    public func listGroups(_ input: ListGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGroupsResponse {
        return try await self.client.execute(operation: "ListGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists all users in the identity store. Returns a paginated list of complete User objects.  Filtering for a User by the UserName attribute is deprecated. Instead, use the GetUserId API action.
    @Sendable
    public func listUsers(_ input: ListUsersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListUsersResponse {
        return try await self.client.execute(operation: "ListUsers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// For the specified group in the specified identity store, updates the group metadata and attributes.
    @Sendable
    public func updateGroup(_ input: UpdateGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateGroupResponse {
        return try await self.client.execute(operation: "UpdateGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// For the specified user in the specified identity store, updates the user metadata and attributes.
    @Sendable
    public func updateUser(_ input: UpdateUserRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateUserResponse {
        return try await self.client.execute(operation: "UpdateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension IdentityStore {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IdentityStore, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IdentityStore {
    /// For the specified group in the specified identity store, returns the list of all GroupMembership objects and returns results in paginated form.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listGroupMembershipsPaginator(
        _ input: ListGroupMembershipsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListGroupMembershipsRequest, ListGroupMembershipsResponse> {
        return .init(
            input: input,
            command: self.listGroupMemberships,
            inputKey: \ListGroupMembershipsRequest.nextToken,
            outputKey: \ListGroupMembershipsResponse.nextToken,
            logger: logger
        )
    }

    /// For the specified member in the specified identity store, returns the list of all GroupMembership objects and returns results in paginated form.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listGroupMembershipsForMemberPaginator(
        _ input: ListGroupMembershipsForMemberRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListGroupMembershipsForMemberRequest, ListGroupMembershipsForMemberResponse> {
        return .init(
            input: input,
            command: self.listGroupMembershipsForMember,
            inputKey: \ListGroupMembershipsForMemberRequest.nextToken,
            outputKey: \ListGroupMembershipsForMemberResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all groups in the identity store. Returns a paginated list of complete Group objects.  Filtering for a Group by the DisplayName attribute is deprecated. Instead, use the GetGroupId API action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListGroupsRequest, ListGroupsResponse> {
        return .init(
            input: input,
            command: self.listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists all users in the identity store. Returns a paginated list of complete User objects.  Filtering for a User by the UserName attribute is deprecated. Instead, use the GetUserId API action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: self.listUsers,
            inputKey: \ListUsersRequest.nextToken,
            outputKey: \ListUsersResponse.nextToken,
            logger: logger
        )
    }
}

extension IdentityStore.ListGroupMembershipsForMemberRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IdentityStore.ListGroupMembershipsForMemberRequest {
        return .init(
            identityStoreId: self.identityStoreId,
            maxResults: self.maxResults,
            memberId: self.memberId,
            nextToken: token
        )
    }
}

extension IdentityStore.ListGroupMembershipsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IdentityStore.ListGroupMembershipsRequest {
        return .init(
            groupId: self.groupId,
            identityStoreId: self.identityStoreId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IdentityStore.ListGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IdentityStore.ListGroupsRequest {
        return .init(
            identityStoreId: self.identityStoreId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IdentityStore.ListUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IdentityStore.ListUsersRequest {
        return .init(
            identityStoreId: self.identityStoreId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
