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
extension FMS {
    // MARK: Async API Calls

    /// Sets a Firewall Manager default administrator account. The Firewall Manager default administrator account can manage third-party firewalls and has full administrative scope that allows administration of all policy types, accounts, organizational units, and Regions. This account must be a member account of the organization in Organizations whose resources you want to protect. For information about working with Firewall Manager administrator accounts, see Managing Firewall Manager administrators in the Firewall Manager Developer Guide.
    public func associateAdminAccount(_ input: AssociateAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AssociateAdminAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the Firewall Manager policy administrator as a tenant administrator of a third-party firewall service. A tenant is an instance of the third-party firewall service that's associated with your Amazon Web Services customer account.
    public func associateThirdPartyFirewall(_ input: AssociateThirdPartyFirewallRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateThirdPartyFirewallResponse {
        return try await self.client.execute(operation: "AssociateThirdPartyFirewall", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associate resources to a Firewall Manager resource set.
    public func batchAssociateResource(_ input: BatchAssociateResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAssociateResourceResponse {
        return try await self.client.execute(operation: "BatchAssociateResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates resources from a Firewall Manager resource set.
    public func batchDisassociateResource(_ input: BatchDisassociateResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisassociateResourceResponse {
        return try await self.client.execute(operation: "BatchDisassociateResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes an Firewall Manager applications list.
    public func deleteAppsList(_ input: DeleteAppsListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAppsList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.
    public func deleteNotificationChannel(_ input: DeleteNotificationChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteNotificationChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes an Firewall Manager policy.
    public func deletePolicy(_ input: DeletePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeletePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes an Firewall Manager protocols list.
    public func deleteProtocolsList(_ input: DeleteProtocolsListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteProtocolsList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified ResourceSet.
    public func deleteResourceSet(_ input: DeleteResourceSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteResourceSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates an Firewall Manager administrator account. To set a different account as an Firewall Manager administrator, submit a PutAdminAccount request. To set an account as a default administrator account, you must submit an AssociateAdminAccount request. Disassociation of the default administrator account follows the first in, last out principle. If you are the default administrator, all Firewall Manager administrators within the organization must first disassociate their accounts before you can disassociate your account.
    public func disassociateAdminAccount(_ input: DisassociateAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisassociateAdminAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a Firewall Manager policy administrator from a third-party firewall tenant. When you call DisassociateThirdPartyFirewall, the third-party firewall vendor deletes all of the firewalls that are associated with the account.
    public func disassociateThirdPartyFirewall(_ input: DisassociateThirdPartyFirewallRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateThirdPartyFirewallResponse {
        return try await self.client.execute(operation: "DisassociateThirdPartyFirewall", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the Organizations account that is associated with Firewall Manager as the Firewall Manager default administrator.
    public func getAdminAccount(_ input: GetAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAdminAccountResponse {
        return try await self.client.execute(operation: "GetAdminAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified account's administrative scope. The admistrative scope defines the resources that an Firewall Manager administrator can manage.
    public func getAdminScope(_ input: GetAdminScopeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAdminScopeResponse {
        return try await self.client.execute(operation: "GetAdminScope", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified Firewall Manager applications list.
    public func getAppsList(_ input: GetAppsListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppsListResponse {
        return try await self.client.execute(operation: "GetAppsList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy.    Resources are considered noncompliant for WAF and Shield Advanced policies if the specified policy has not been applied to them.   Resources are considered noncompliant for security group policies if they are in scope of the policy, they violate one or more of the policy rules, and remediation is disabled or not possible.   Resources are considered noncompliant for Network Firewall policies if a firewall is missing in the VPC, if the firewall endpoint isn't set up in an expected Availability Zone and subnet, if a subnet created by the Firewall Manager doesn't have the expected route table, and for modifications to a firewall policy that violate the Firewall Manager policy's rules.   Resources are considered noncompliant for DNS Firewall policies if a DNS Firewall rule group is missing from the rule group associations for the VPC.
    public func getComplianceDetail(_ input: GetComplianceDetailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComplianceDetailResponse {
        return try await self.client.execute(operation: "GetComplianceDetail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Information about the Amazon Simple Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.
    public func getNotificationChannel(_ input: GetNotificationChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetNotificationChannelResponse {
        return try await self.client.execute(operation: "GetNotificationChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified Firewall Manager policy.
    public func getPolicy(_ input: GetPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPolicyResponse {
        return try await self.client.execute(operation: "GetPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.
    public func getProtectionStatus(_ input: GetProtectionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProtectionStatusResponse {
        return try await self.client.execute(operation: "GetProtectionStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified Firewall Manager protocols list.
    public func getProtocolsList(_ input: GetProtocolsListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProtocolsListResponse {
        return try await self.client.execute(operation: "GetProtocolsList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a specific resource set.
    public func getResourceSet(_ input: GetResourceSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceSetResponse {
        return try await self.client.execute(operation: "GetResourceSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The onboarding status of a Firewall Manager admin account to third-party firewall vendor tenant.
    public func getThirdPartyFirewallAssociationStatus(_ input: GetThirdPartyFirewallAssociationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetThirdPartyFirewallAssociationStatusResponse {
        return try await self.client.execute(operation: "GetThirdPartyFirewallAssociationStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.
    public func getViolationDetails(_ input: GetViolationDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetViolationDetailsResponse {
        return try await self.client.execute(operation: "GetViolationDetails", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a AdminAccounts object that lists the Firewall Manager administrators within the organization that are onboarded to Firewall Manager by AssociateAdminAccount. This operation can be called only from the organization's management account.
    public func listAdminAccountsForOrganization(_ input: ListAdminAccountsForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAdminAccountsForOrganizationResponse {
        return try await self.client.execute(operation: "ListAdminAccountsForOrganization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the accounts that are managing the specified Organizations member account. This is useful for any member account so that they can view the accounts who are managing their account. This operation only returns the managing administrators that have the requested account within their AdminScope.
    public func listAdminsManagingAccount(_ input: ListAdminsManagingAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAdminsManagingAccountResponse {
        return try await self.client.execute(operation: "ListAdminsManagingAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of AppsListDataSummary objects.
    public func listAppsLists(_ input: ListAppsListsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppsListsResponse {
        return try await self.client.execute(operation: "ListAppsLists", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of PolicyComplianceStatus objects. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy.
    public func listComplianceStatus(_ input: ListComplianceStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComplianceStatusResponse {
        return try await self.client.execute(operation: "ListComplianceStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of resources in the organization's accounts that are available to be associated with a resource set.
    public func listDiscoveredResources(_ input: ListDiscoveredResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDiscoveredResourcesResponse {
        return try await self.client.execute(operation: "ListDiscoveredResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a MemberAccounts object that lists the member accounts in the administrator's Amazon Web Services organization. Either an Firewall Manager administrator or the organization's management account can make this request.
    public func listMemberAccounts(_ input: ListMemberAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMemberAccountsResponse {
        return try await self.client.execute(operation: "ListMemberAccounts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of PolicySummary objects.
    public func listPolicies(_ input: ListPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPoliciesResponse {
        return try await self.client.execute(operation: "ListPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of ProtocolsListDataSummary objects.
    public func listProtocolsLists(_ input: ListProtocolsListsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProtocolsListsResponse {
        return try await self.client.execute(operation: "ListProtocolsLists", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of resources that are currently associated to a resource set.
    public func listResourceSetResources(_ input: ListResourceSetResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourceSetResourcesResponse {
        return try await self.client.execute(operation: "ListResourceSetResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of ResourceSetSummary objects.
    public func listResourceSets(_ input: ListResourceSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourceSetsResponse {
        return try await self.client.execute(operation: "ListResourceSets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of tags for the specified Amazon Web Services resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of all of the third-party firewall policies that are associated with the third-party firewall administrator's account.
    public func listThirdPartyFirewallFirewallPolicies(_ input: ListThirdPartyFirewallFirewallPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListThirdPartyFirewallFirewallPoliciesResponse {
        return try await self.client.execute(operation: "ListThirdPartyFirewallFirewallPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates an Firewall Manager administrator account. The account must be a member of the organization that was onboarded to Firewall Manager by AssociateAdminAccount. Only the organization's management account can create an Firewall Manager administrator account. When you create an Firewall Manager administrator account, the service checks to see if the account is already a delegated administrator within Organizations. If the account isn't a delegated administrator, Firewall Manager calls Organizations to delegate the account within Organizations. For more information about administrator accounts within Organizations, see Managing the Amazon Web Services Accounts in Your Organization.
    public func putAdminAccount(_ input: PutAdminAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutAdminAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Firewall Manager applications list.
    public func putAppsList(_ input: PutAppsListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAppsListResponse {
        return try await self.client.execute(operation: "PutAppsList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Designates the IAM role and Amazon Simple Notification Service (SNS) topic that Firewall Manager uses to record SNS logs. To perform this action outside of the console, you must first configure the SNS topic's access policy to allow the SnsRoleName to publish SNS logs. If the SnsRoleName provided is a role other than the AWSServiceRoleForFMS service-linked role, this role must have a trust relationship configured to allow the Firewall Manager service principal fms.amazonaws.com to assume this role. For information about configuring an SNS access policy, see Service roles for Firewall Manager in the Firewall Manager Developer Guide.
    public func putNotificationChannel(_ input: PutNotificationChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutNotificationChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Firewall Manager policy. A Firewall Manager policy is specific to the individual policy type. If you want to enforce multiple
    /// 		policy types across accounts, you can create multiple policies. You can create more than one
    /// 		policy for each type.  If you add a new account to an organization that you created with Organizations, Firewall Manager
    /// 		automatically applies the policy to the resources in that account that are within scope of
    /// 		the policy.  Firewall Manager provides the following types of policies:     Shield Advanced policy - This policy applies Shield Advanced
    /// 				protection to specified accounts and resources.     Security Groups policy - This type of policy gives you
    /// 				control over security groups that are in use throughout your organization in
    /// 				Organizations and lets you enforce a baseline set of rules across your organization.     Network Firewall policy - This policy applies
    /// 				Network Firewall protection to your organization's VPCs.     DNS Firewall policy - This policy applies
    /// 				Amazon Route 53 Resolver DNS Firewall protections to your organization's VPCs.     Third-party firewall policy - This policy applies third-party firewall protections. Third-party firewalls are available by subscription through the Amazon Web Services Marketplace console at Amazon Web Services Marketplace.    Palo Alto Networks Cloud NGFW policy - This policy applies Palo Alto Networks Cloud Next Generation Firewall (NGFW) protections and Palo Alto Networks Cloud NGFW rulestacks to your organization's VPCs.    Fortigate CNF policy - This policy applies
    /// 						Fortigate Cloud Native Firewall (CNF) protections. Fortigate CNF is a cloud-centered solution that blocks Zero-Day threats and secures cloud infrastructures with industry-leading advanced threat prevention, smart web application firewalls (WAF), and API protection.
    public func putPolicy(_ input: PutPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutPolicyResponse {
        return try await self.client.execute(operation: "PutPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Firewall Manager protocols list.
    public func putProtocolsList(_ input: PutProtocolsListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutProtocolsListResponse {
        return try await self.client.execute(operation: "PutProtocolsList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the resource set. An Firewall Manager resource set defines the resources to import into an Firewall Manager policy from another Amazon Web Services service.
    public func putResourceSet(_ input: PutResourceSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourceSetResponse {
        return try await self.client.execute(operation: "PutResourceSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to an Amazon Web Services resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from an Amazon Web Services resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension FMS {
    /// Returns a AdminAccounts object that lists the Firewall Manager administrators within the organization that are onboarded to Firewall Manager by AssociateAdminAccount. This operation can be called only from the organization's management account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAdminAccountsForOrganizationPaginator(
        _ input: ListAdminAccountsForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAdminAccountsForOrganizationRequest, ListAdminAccountsForOrganizationResponse> {
        return .init(
            input: input,
            command: self.listAdminAccountsForOrganization,
            inputKey: \ListAdminAccountsForOrganizationRequest.nextToken,
            outputKey: \ListAdminAccountsForOrganizationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the accounts that are managing the specified Organizations member account. This is useful for any member account so that they can view the accounts who are managing their account. This operation only returns the managing administrators that have the requested account within their AdminScope.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAdminsManagingAccountPaginator(
        _ input: ListAdminsManagingAccountRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAdminsManagingAccountRequest, ListAdminsManagingAccountResponse> {
        return .init(
            input: input,
            command: self.listAdminsManagingAccount,
            inputKey: \ListAdminsManagingAccountRequest.nextToken,
            outputKey: \ListAdminsManagingAccountResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of AppsListDataSummary objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppsListsPaginator(
        _ input: ListAppsListsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppsListsRequest, ListAppsListsResponse> {
        return .init(
            input: input,
            command: self.listAppsLists,
            inputKey: \ListAppsListsRequest.nextToken,
            outputKey: \ListAppsListsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of PolicyComplianceStatus objects. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComplianceStatusPaginator(
        _ input: ListComplianceStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComplianceStatusRequest, ListComplianceStatusResponse> {
        return .init(
            input: input,
            command: self.listComplianceStatus,
            inputKey: \ListComplianceStatusRequest.nextToken,
            outputKey: \ListComplianceStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a MemberAccounts object that lists the member accounts in the administrator's Amazon Web Services organization. Either an Firewall Manager administrator or the organization's management account can make this request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMemberAccountsPaginator(
        _ input: ListMemberAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMemberAccountsRequest, ListMemberAccountsResponse> {
        return .init(
            input: input,
            command: self.listMemberAccounts,
            inputKey: \ListMemberAccountsRequest.nextToken,
            outputKey: \ListMemberAccountsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of PolicySummary objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPoliciesPaginator(
        _ input: ListPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPoliciesRequest, ListPoliciesResponse> {
        return .init(
            input: input,
            command: self.listPolicies,
            inputKey: \ListPoliciesRequest.nextToken,
            outputKey: \ListPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of ProtocolsListDataSummary objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProtocolsListsPaginator(
        _ input: ListProtocolsListsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProtocolsListsRequest, ListProtocolsListsResponse> {
        return .init(
            input: input,
            command: self.listProtocolsLists,
            inputKey: \ListProtocolsListsRequest.nextToken,
            outputKey: \ListProtocolsListsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves a list of all of the third-party firewall policies that are associated with the third-party firewall administrator's account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listThirdPartyFirewallFirewallPoliciesPaginator(
        _ input: ListThirdPartyFirewallFirewallPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListThirdPartyFirewallFirewallPoliciesRequest, ListThirdPartyFirewallFirewallPoliciesResponse> {
        return .init(
            input: input,
            command: self.listThirdPartyFirewallFirewallPolicies,
            inputKey: \ListThirdPartyFirewallFirewallPoliciesRequest.nextToken,
            outputKey: \ListThirdPartyFirewallFirewallPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
