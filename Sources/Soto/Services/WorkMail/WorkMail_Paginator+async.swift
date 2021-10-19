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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension WorkMail {
    ///  Creates a paginated call to list the aliases associated with a given entity.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAliasesPaginator(
        _ input: ListAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAliasesRequest, ListAliasesResponse> {
        return .init(
            input: input,
            command: listAliases,
            inputKey: \ListAliasesRequest.nextToken,
            outputKey: \ListAliasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an overview of the members of a group. Users and groups can be members of a group.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupMembersPaginator(
        _ input: ListGroupMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupMembersRequest, ListGroupMembersResponse> {
        return .init(
            input: input,
            command: listGroupMembers,
            inputKey: \ListGroupMembersRequest.nextToken,
            outputKey: \ListGroupMembersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summaries of the organization's groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupsRequest, ListGroupsResponse> {
        return .init(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the mailbox export jobs started for the specified organization within the last seven days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMailboxExportJobsPaginator(
        _ input: ListMailboxExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMailboxExportJobsRequest, ListMailboxExportJobsResponse> {
        return .init(
            input: input,
            command: listMailboxExportJobs,
            inputKey: \ListMailboxExportJobsRequest.nextToken,
            outputKey: \ListMailboxExportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the mailbox permissions associated with a user, group, or resource mailbox.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMailboxPermissionsPaginator(
        _ input: ListMailboxPermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMailboxPermissionsRequest, ListMailboxPermissionsResponse> {
        return .init(
            input: input,
            command: listMailboxPermissions,
            inputKey: \ListMailboxPermissionsRequest.nextToken,
            outputKey: \ListMailboxPermissionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMobileDeviceAccessOverridesPaginator(
        _ input: ListMobileDeviceAccessOverridesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMobileDeviceAccessOverridesRequest, ListMobileDeviceAccessOverridesResponse> {
        return .init(
            input: input,
            command: listMobileDeviceAccessOverrides,
            inputKey: \ListMobileDeviceAccessOverridesRequest.nextToken,
            outputKey: \ListMobileDeviceAccessOverridesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summaries of the customer's organizations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrganizationsPaginator(
        _ input: ListOrganizationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationsRequest, ListOrganizationsResponse> {
        return .init(
            input: input,
            command: listOrganizations,
            inputKey: \ListOrganizationsRequest.nextToken,
            outputKey: \ListOrganizationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourceDelegatesPaginator(
        _ input: ListResourceDelegatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourceDelegatesRequest, ListResourceDelegatesResponse> {
        return .init(
            input: input,
            command: listResourceDelegates,
            inputKey: \ListResourceDelegatesRequest.nextToken,
            outputKey: \ListResourceDelegatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summaries of the organization's resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourcesPaginator(
        _ input: ListResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourcesRequest, ListResourcesResponse> {
        return .init(
            input: input,
            command: listResources,
            inputKey: \ListResourcesRequest.nextToken,
            outputKey: \ListResourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summaries of the organization's users.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: listUsers,
            inputKey: \ListUsersRequest.nextToken,
            outputKey: \ListUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
