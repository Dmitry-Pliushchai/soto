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
extension Detective {
    // MARK: Async API Calls

    /// Accepts an invitation for the member account to contribute data to a behavior graph. This operation can only be called by an invited member account.  The request provides the ARN of behavior graph. The member account status in the graph must be INVITED.
    public func acceptInvitation(_ input: AcceptInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AcceptInvitation", path: "/invitation", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets data source package information for the behavior graph.
    public func batchGetGraphMemberDatasources(_ input: BatchGetGraphMemberDatasourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetGraphMemberDatasourcesResponse {
        return try await self.client.execute(operation: "BatchGetGraphMemberDatasources", path: "/graph/datasources/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information on the data source package history for an account.
    public func batchGetMembershipDatasources(_ input: BatchGetMembershipDatasourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetMembershipDatasourcesResponse {
        return try await self.client.execute(operation: "BatchGetMembershipDatasources", path: "/membership/datasources/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new behavior graph for the calling account, and sets that account as the administrator account. This operation is called by the account that is enabling Detective. Before you try to enable Detective, make sure that your account has been enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this requirement, you cannot enable Detective. If you do meet the GuardDuty prerequisite, then when you make the request to enable Detective, it checks whether your data volume is within the Detective quota. If it exceeds the quota, then you cannot enable Detective.  The operation also enables Detective for the calling account in the currently selected Region. It returns the ARN of the new behavior graph.  CreateGraph triggers a process to create the corresponding data tables for the new behavior graph. An account can only be the administrator account for one behavior graph within a Region. If the same account calls CreateGraph with the same administrator account, it always returns the same behavior graph ARN. It does not create a new behavior graph.
    public func createGraph(_ input: CreateGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGraphResponse {
        return try await self.client.execute(operation: "CreateGraph", path: "/graph", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  CreateMembers is used to send invitations to accounts. For the organization behavior graph, the Detective administrator account uses CreateMembers to enable organization accounts as member accounts. For invited accounts, CreateMembers sends a request to invite the specified Amazon Web Services accounts to be member accounts in the behavior graph. This operation can only be called by the administrator account for a behavior graph.   CreateMembers verifies the accounts and then invites the verified accounts. The administrator can optionally specify to not send invitation emails to the member accounts. This would be used when the administrator manages their member accounts centrally. For organization accounts in the organization behavior graph, CreateMembers attempts to enable the accounts. The organization accounts do not receive invitations. The request provides the behavior graph ARN and the list of accounts to invite or to enable. The response separates the requested accounts into two lists:   The accounts that CreateMembers was able to process. For invited accounts, includes member accounts that are being verified, that have passed verification and are to be invited, and that have failed verification. For organization accounts in the organization behavior graph, includes accounts that can be enabled and that cannot be enabled.   The accounts that CreateMembers was unable to process. This list includes accounts that were already invited to be member accounts in the behavior graph.
    public func createMembers(_ input: CreateMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMembersResponse {
        return try await self.client.execute(operation: "CreateMembers", path: "/graph/members", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the specified behavior graph and queues it to be deleted. This operation removes the behavior graph from each member account's list of behavior graphs.  DeleteGraph can only be called by the administrator account for a behavior graph.
    public func deleteGraph(_ input: DeleteGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteGraph", path: "/graph/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified member accounts from the behavior graph. The removed accounts no longer contribute data to the behavior graph. This operation can only be called by the administrator account for the behavior graph. For invited accounts, the removed accounts are deleted from the list of accounts in the behavior graph. To restore the account, the administrator account must send another invitation. For organization accounts in the organization behavior graph, the Detective administrator account can always enable the organization account again. Organization accounts that are not enabled as member accounts are not included in the ListMembers results for the organization behavior graph. An administrator account cannot use DeleteMembers to remove their own account from the behavior graph. To disable a behavior graph, the administrator account uses the DeleteGraph API method.
    public func deleteMembers(_ input: DeleteMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMembersResponse {
        return try await self.client.execute(operation: "DeleteMembers", path: "/graph/members/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the configuration for the organization behavior graph. Currently indicates whether to automatically enable new organization accounts as member accounts. Can only be called by the Detective administrator account for the organization.
    public func describeOrganizationConfiguration(_ input: DescribeOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationConfigurationResponse {
        return try await self.client.execute(operation: "DescribeOrganizationConfiguration", path: "/orgs/describeOrganizationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the Detective administrator account in the current Region. Deletes the organization behavior graph. Can only be called by the organization management account. Removing the Detective administrator account does not affect the delegated administrator account for Detective in Organizations. To remove the delegated administrator account in Organizations, use the Organizations API. Removing the delegated administrator account also removes the Detective administrator account in all Regions, except for Regions where the Detective administrator account is the organization management account.
    public func disableOrganizationAdminAccount(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisableOrganizationAdminAccount", path: "/orgs/disableAdminAccount", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Removes the member account from the specified behavior graph. This operation can only be called by an invited member account that has the ENABLED status.  DisassociateMembership cannot be called by an organization account in the organization behavior graph. For the organization behavior graph, the Detective administrator account determines which organization accounts to enable or disable as member accounts.
    public func disassociateMembership(_ input: DisassociateMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisassociateMembership", path: "/membership/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Designates the Detective administrator account for the organization in the current Region. If the account does not have Detective enabled, then enables Detective for that account and creates a new behavior graph. Can only be called by the organization management account. If the organization has a delegated administrator account in Organizations, then the Detective administrator account must be either the delegated administrator account or the organization management account. If the organization does not have a delegated administrator account in Organizations, then you can choose any account in the organization. If you choose an account other than the organization management account, Detective calls Organizations to make that account the delegated administrator account for Detective. The organization management account cannot be the delegated administrator account.
    public func enableOrganizationAdminAccount(_ input: EnableOrganizationAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "EnableOrganizationAdminAccount", path: "/orgs/enableAdminAccount", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the investigation results of an investigation for a behavior graph.
    public func getInvestigation(_ input: GetInvestigationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInvestigationResponse {
        return try await self.client.execute(operation: "GetInvestigation", path: "/investigations/getInvestigation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the membership details for specified member accounts for a behavior graph.
    public func getMembers(_ input: GetMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMembersResponse {
        return try await self.client.execute(operation: "GetMembers", path: "/graph/members/get", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists data source packages in the behavior graph.
    public func listDatasourcePackages(_ input: ListDatasourcePackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatasourcePackagesResponse {
        return try await self.client.execute(operation: "ListDatasourcePackages", path: "/graph/datasources/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of behavior graphs that the calling account is an administrator account of. This operation can only be called by an administrator account. Because an account can currently only be the administrator of one behavior graph within a Region, the results always contain a single behavior graph.
    public func listGraphs(_ input: ListGraphsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGraphsResponse {
        return try await self.client.execute(operation: "ListGraphs", path: "/graphs/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the indicators from an investigation
    public func listIndicators(_ input: ListIndicatorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIndicatorsResponse {
        return try await self.client.execute(operation: "ListIndicators", path: "/investigations/listIndicators", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all Investigations.
    public func listInvestigations(_ input: ListInvestigationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInvestigationsResponse {
        return try await self.client.execute(operation: "ListInvestigations", path: "/investigations/listInvestigations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by an invited member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
    public func listInvitations(_ input: ListInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInvitationsResponse {
        return try await self.client.execute(operation: "ListInvitations", path: "/invitations/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of member accounts for a behavior graph. For invited accounts, the results do not include member accounts that were removed from the behavior graph. For the organization behavior graph, the results do not include organization accounts that the Detective administrator account has not enabled as member accounts.
    public func listMembers(_ input: ListMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMembersResponse {
        return try await self.client.execute(operation: "ListMembers", path: "/graph/members/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the Detective administrator account for an organization. Can only be called by the organization management account.
    public func listOrganizationAdminAccounts(_ input: ListOrganizationAdminAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationAdminAccountsResponse {
        return try await self.client.execute(operation: "ListOrganizationAdminAccounts", path: "/orgs/adminAccountslist", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the tag values that are assigned to a behavior graph.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rejects an invitation to contribute the account data to a behavior graph. This operation must be called by an invited member account that has the INVITED status.  RejectInvitation cannot be called by an organization account in the organization behavior graph. In the organization behavior graph, organization accounts do not receive an invitation.
    public func rejectInvitation(_ input: RejectInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RejectInvitation", path: "/invitation/removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// initiate an investigation on an entity in a graph
    public func startInvestigation(_ input: StartInvestigationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartInvestigationResponse {
        return try await self.client.execute(operation: "StartInvestigation", path: "/investigations/startInvestigation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a request to enable data ingest for a member account that has a status of ACCEPTED_BUT_DISABLED. For valid member accounts, the status is updated as follows.   If Detective enabled the member account, then the new status is ENABLED.   If Detective cannot enable the member account, the status remains ACCEPTED_BUT_DISABLED.
    public func startMonitoringMember(_ input: StartMonitoringMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "StartMonitoringMember", path: "/graph/member/monitoringstate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies tag values to a behavior graph.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a behavior graph.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a data source packages for the behavior graph.
    public func updateDatasourcePackages(_ input: UpdateDatasourcePackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateDatasourcePackages", path: "/graph/datasources/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the state of an investigation.
    public func updateInvestigationState(_ input: UpdateInvestigationStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateInvestigationState", path: "/investigations/updateInvestigationState", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration for the Organizations integration in the current Region. Can only be called by the Detective administrator account for the organization.
    public func updateOrganizationConfiguration(_ input: UpdateOrganizationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateOrganizationConfiguration", path: "/orgs/updateOrganizationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Detective {
    /// Lists data source packages in the behavior graph.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasourcePackagesPaginator(
        _ input: ListDatasourcePackagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasourcePackagesRequest, ListDatasourcePackagesResponse> {
        return .init(
            input: input,
            command: self.listDatasourcePackages,
            inputKey: \ListDatasourcePackagesRequest.nextToken,
            outputKey: \ListDatasourcePackagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns the list of behavior graphs that the calling account is an administrator account of. This operation can only be called by an administrator account. Because an account can currently only be the administrator of one behavior graph within a Region, the results always contain a single behavior graph.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGraphsPaginator(
        _ input: ListGraphsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGraphsRequest, ListGraphsResponse> {
        return .init(
            input: input,
            command: self.listGraphs,
            inputKey: \ListGraphsRequest.nextToken,
            outputKey: \ListGraphsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by an invited member account. Open invitations are invitations that the member account has not responded to. The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInvitationsPaginator(
        _ input: ListInvitationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInvitationsRequest, ListInvitationsResponse> {
        return .init(
            input: input,
            command: self.listInvitations,
            inputKey: \ListInvitationsRequest.nextToken,
            outputKey: \ListInvitationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves the list of member accounts for a behavior graph. For invited accounts, the results do not include member accounts that were removed from the behavior graph. For the organization behavior graph, the results do not include organization accounts that the Detective administrator account has not enabled as member accounts.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMembersRequest, ListMembersResponse> {
        return .init(
            input: input,
            command: self.listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns information about the Detective administrator account for an organization. Can only be called by the organization management account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrganizationAdminAccountsPaginator(
        _ input: ListOrganizationAdminAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationAdminAccountsRequest, ListOrganizationAdminAccountsResponse> {
        return .init(
            input: input,
            command: self.listOrganizationAdminAccounts,
            inputKey: \ListOrganizationAdminAccountsRequest.nextToken,
            outputKey: \ListOrganizationAdminAccountsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
