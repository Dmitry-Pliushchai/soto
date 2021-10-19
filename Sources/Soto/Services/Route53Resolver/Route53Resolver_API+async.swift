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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Route53Resolver {
    // MARK: Async API Calls

    /// Associates a FirewallRuleGroup with a VPC, to provide DNS filtering for the VPC.
    public func associateFirewallRuleGroup(_ input: AssociateFirewallRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateFirewallRuleGroupResponse {
        return try await self.client.execute(operation: "AssociateFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address,
    /// 			submit one AssociateResolverEndpointIpAddress request for each IP address.
    /// 		       To remove an IP address from an endpoint, see
    /// 			DisassociateResolverEndpointIpAddress.
    ///
    public func associateResolverEndpointIpAddress(_ input: AssociateResolverEndpointIpAddressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateResolverEndpointIpAddressResponse {
        return try await self.client.execute(operation: "AssociateResolverEndpointIpAddress", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs
    /// 			that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one AssociateResolverQueryLogConfig
    /// 			request for each VPC.
    ///
    /// 		        The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.
    ///
    /// 		       To remove a VPC from a query logging configuration, see
    /// 			DisassociateResolverQueryLogConfig.
    ///
    public func associateResolverQueryLogConfig(_ input: AssociateResolverQueryLogConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateResolverQueryLogConfigResponse {
        return try await self.client.execute(operation: "AssociateResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries
    /// 			for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the
    /// 			IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see
    /// 			CreateResolverRule.
    public func associateResolverRule(_ input: AssociateResolverRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateResolverRuleResponse {
        return try await self.client.execute(operation: "AssociateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an empty firewall domain list for use in DNS Firewall rules. You can populate the domains for the new list with a file, using ImportFirewallDomains, or with domain strings, using UpdateFirewallDomains.
    public func createFirewallDomainList(_ input: CreateFirewallDomainListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFirewallDomainListResponse {
        return try await self.client.execute(operation: "CreateFirewallDomainList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a single DNS Firewall rule in the specified rule group, using the specified domain list.
    public func createFirewallRule(_ input: CreateFirewallRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFirewallRuleResponse {
        return try await self.client.execute(operation: "CreateFirewallRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an empty DNS Firewall rule group for filtering DNS network traffic in a VPC. You can add rules to the new rule group  by calling CreateFirewallRule.
    public func createFirewallRuleGroup(_ input: CreateFirewallRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFirewallRuleGroupResponse {
        return try await self.client.execute(operation: "CreateFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:
    /// 		         An inbound Resolver endpoint forwards DNS queries to the DNS service for a VPC
    /// 				from your network.   An outbound Resolver endpoint forwards DNS queries from the DNS service for a VPC
    /// 				to your network.
    public func createResolverEndpoint(_ input: CreateResolverEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResolverEndpointResponse {
        return try await self.client.execute(operation: "CreateResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs.
    /// 			Resolver can log queries only for VPCs that are in the same Region as the query logging configuration.
    ///
    /// 		       To specify which VPCs you want to log queries for, you use AssociateResolverQueryLogConfig. For more information, see
    /// 			AssociateResolverQueryLogConfig.
    ///
    /// 		       You can optionally use Resource Access Manager (RAM) to share a query logging configuration with other Amazon Web Services accounts. The other accounts
    /// 			can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all
    /// 			VPCs that are associated with the configuration.
    public func createResolverQueryLogConfig(_ input: CreateResolverQueryLogConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResolverQueryLogConfigResponse {
        return try await self.client.execute(operation: "CreateResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through,
    /// 			one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.
    public func createResolverRule(_ input: CreateResolverRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResolverRuleResponse {
        return try await self.client.execute(operation: "CreateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified domain list.
    public func deleteFirewallDomainList(_ input: DeleteFirewallDomainListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirewallDomainListResponse {
        return try await self.client.execute(operation: "DeleteFirewallDomainList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified firewall rule.
    public func deleteFirewallRule(_ input: DeleteFirewallRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirewallRuleResponse {
        return try await self.client.execute(operation: "DeleteFirewallRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified firewall rule group.
    public func deleteFirewallRuleGroup(_ input: DeleteFirewallRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFirewallRuleGroupResponse {
        return try await self.client.execute(operation: "DeleteFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound
    /// 			Resolver endpoint:
    /// 		          Inbound: DNS queries from your network are no longer routed
    /// 				to the DNS service for the specified VPC.    Outbound: DNS queries from a VPC are no longer routed to your network.
    public func deleteResolverEndpoint(_ input: DeleteResolverEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResolverEndpointResponse {
        return try await self.client.execute(operation: "DeleteResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are
    /// 			associated with the configuration. This also applies if the query logging configuration is shared with other Amazon Web Services accounts, and
    /// 			the other accounts have associated VPCs with the shared configuration.
    ///
    /// 		       Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See
    /// 			DisassociateResolverQueryLogConfig.
    ///
    /// 		       If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing
    /// 			the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs
    /// 			that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically
    /// 			disassociated from the configuration.
    public func deleteResolverQueryLogConfig(_ input: DeleteResolverQueryLogConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResolverQueryLogConfigResponse {
        return try await self.client.execute(operation: "DeleteResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you
    /// 			associated the Resolver rule with. For more information, see
    /// 			DisassociateResolverRule.
    public func deleteResolverRule(_ input: DeleteResolverRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResolverRuleResponse {
        return try await self.client.execute(operation: "DeleteResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a FirewallRuleGroup from a VPC, to remove DNS filtering from the VPC.
    public func disassociateFirewallRuleGroup(_ input: DisassociateFirewallRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateFirewallRuleGroupResponse {
        return try await self.client.execute(operation: "DisassociateFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address,
    /// 			submit one DisassociateResolverEndpointIpAddress request for each IP address.
    /// 		       To add an IP address to an endpoint, see
    /// 			AssociateResolverEndpointIpAddress.
    ///
    public func disassociateResolverEndpointIpAddress(_ input: DisassociateResolverEndpointIpAddressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateResolverEndpointIpAddressResponse {
        return try await self.client.execute(operation: "DisassociateResolverEndpointIpAddress", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a VPC from a query logging configuration.
    ///
    ///
    /// 			         Before you can delete a query logging configuration, you must first disassociate all VPCs
    /// 				from the configuration. If you used Resource Access Manager (RAM) to share a
    /// 				query logging configuration with other accounts, VPCs can be disassociated from the
    /// 				configuration in the following ways:
    /// 			           The accounts that you shared the configuration with can disassociate VPCs from the configuration.   You can stop sharing the configuration.
    ///
    public func disassociateResolverQueryLogConfig(_ input: DisassociateResolverQueryLogConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateResolverQueryLogConfigResponse {
        return try await self.client.execute(operation: "DisassociateResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the association between a specified Resolver rule and a specified VPC.
    ///
    /// 			         If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the
    /// 				domain name that you specified in the Resolver rule.
    ///
    public func disassociateResolverRule(_ input: DisassociateResolverRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateResolverRuleResponse {
        return try await self.client.execute(operation: "DisassociateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the configuration of the firewall behavior provided by DNS Firewall for a
    /// 			single VPC from Amazon Virtual Private Cloud (Amazon VPC).
    public func getFirewallConfig(_ input: GetFirewallConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFirewallConfigResponse {
        return try await self.client.execute(operation: "GetFirewallConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the specified firewall domain list.
    public func getFirewallDomainList(_ input: GetFirewallDomainListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFirewallDomainListResponse {
        return try await self.client.execute(operation: "GetFirewallDomainList", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the specified firewall rule group.
    public func getFirewallRuleGroup(_ input: GetFirewallRuleGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFirewallRuleGroupResponse {
        return try await self.client.execute(operation: "GetFirewallRuleGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a firewall rule group association, which enables DNS filtering for a VPC with one rule group. A VPC can have more than one firewall rule group association, and a rule group can be associated with more than one VPC.
    public func getFirewallRuleGroupAssociation(_ input: GetFirewallRuleGroupAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFirewallRuleGroupAssociationResponse {
        return try await self.client.execute(operation: "GetFirewallRuleGroupAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the Identity and Access Management (Amazon Web Services IAM) policy for sharing the 	specified rule group. You can use the policy to share the rule group using Resource Access Manager (RAM).
    public func getFirewallRuleGroupPolicy(_ input: GetFirewallRuleGroupPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFirewallRuleGroupPolicyResponse {
        return try await self.client.execute(operation: "GetFirewallRuleGroupPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets DNSSEC validation information for a specified resource.
    public func getResolverDnssecConfig(_ input: GetResolverDnssecConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverDnssecConfigResponse {
        return try await self.client.execute(operation: "GetResolverDnssecConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the
    /// 			current status of the endpoint.
    public func getResolverEndpoint(_ input: GetResolverEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverEndpointResponse {
        return try await self.client.execute(operation: "GetResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration
    /// 			is logging queries for and the location that logs are sent to.
    public func getResolverQueryLogConfig(_ input: GetResolverQueryLogConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverQueryLogConfigResponse {
        return try await self.client.execute(operation: "GetResolverQueryLogConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC
    /// 			with a query logging configuration, Resolver logs DNS queries that originate in that VPC.
    public func getResolverQueryLogConfigAssociation(_ input: GetResolverQueryLogConfigAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverQueryLogConfigAssociationResponse {
        return try await self.client.execute(operation: "GetResolverQueryLogConfigAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a query logging policy. A query logging policy specifies the Resolver query logging
    /// 			operations and resources that you want to allow another Amazon Web Services account to be able to use.
    public func getResolverQueryLogConfigPolicy(_ input: GetResolverQueryLogConfigPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverQueryLogConfigPolicyResponse {
        return try await self.client.execute(operation: "GetResolverQueryLogConfigPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the
    /// 			outbound Resolver endpoint that the rule is associated with.
    public func getResolverRule(_ input: GetResolverRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverRuleResponse {
        return try await self.client.execute(operation: "GetResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using
    /// 			AssociateResolverRule.
    public func getResolverRuleAssociation(_ input: GetResolverRuleAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverRuleAssociationResponse {
        return try await self.client.execute(operation: "GetResolverRuleAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the Resolver rule policy for a specified rule. A Resolver rule policy includes the rule that you want to share
    /// 			with another account, the account that you want to share the rule with, and the Resolver operations that you want to allow the account to use.
    public func getResolverRulePolicy(_ input: GetResolverRulePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResolverRulePolicyResponse {
        return try await self.client.execute(operation: "GetResolverRulePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports domain names from a file into a domain list, for use in a DNS firewall rule group.  Each domain specification in your domain list must satisfy the following
    /// 	requirements:    	        It can optionally start with * (asterisk). 	       	        With the exception of the optional starting asterisk, it must only contain 	   the following characters: A-Z, a-z, 	   0-9, - (hyphen). 	       	        It must be from 1-255 characters in length.
    public func importFirewallDomains(_ input: ImportFirewallDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportFirewallDomainsResponse {
        return try await self.client.execute(operation: "ImportFirewallDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the firewall configurations that you have defined. DNS Firewall uses the configurations to manage firewall behavior for your VPCs.  A single call might return only a partial list of the configurations. For information, see MaxResults.
    public func listFirewallConfigs(_ input: ListFirewallConfigsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirewallConfigsResponse {
        return try await self.client.execute(operation: "ListFirewallConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the firewall domain lists that you have defined. For each firewall domain list, you can retrieve the domains that are defined for a list by calling ListFirewallDomains.  A single call to this list operation might return only a partial list of the domain lists. For information, see MaxResults.
    public func listFirewallDomainLists(_ input: ListFirewallDomainListsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirewallDomainListsResponse {
        return try await self.client.execute(operation: "ListFirewallDomainLists", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the domains that you have defined for the specified firewall domain list.   A single call might return only a partial list of the domains. For information, see MaxResults.
    public func listFirewallDomains(_ input: ListFirewallDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirewallDomainsResponse {
        return try await self.client.execute(operation: "ListFirewallDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the firewall rule group associations that you have defined. Each association enables DNS filtering for a VPC with one rule group.  A single call might return only a partial list of the associations. For information, see MaxResults.
    public func listFirewallRuleGroupAssociations(_ input: ListFirewallRuleGroupAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirewallRuleGroupAssociationsResponse {
        return try await self.client.execute(operation: "ListFirewallRuleGroupAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the minimal high-level information for the rule groups that you have defined.   A single call might return only a partial list of the rule groups. For information, see MaxResults.
    public func listFirewallRuleGroups(_ input: ListFirewallRuleGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirewallRuleGroupsResponse {
        return try await self.client.execute(operation: "ListFirewallRuleGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the firewall rules that you have defined for the specified firewall rule group. DNS Firewall uses the rules in a rule group to filter DNS network traffic for a VPC.  A single call might return only a partial list of the rules. For information, see MaxResults.
    public func listFirewallRules(_ input: ListFirewallRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFirewallRulesResponse {
        return try await self.client.execute(operation: "ListFirewallRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the configurations for DNSSEC validation that are associated with the current Amazon Web Services account.
    public func listResolverDnssecConfigs(_ input: ListResolverDnssecConfigsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolverDnssecConfigsResponse {
        return try await self.client.execute(operation: "ListResolverDnssecConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the IP addresses for a specified Resolver endpoint.
    public func listResolverEndpointIpAddresses(_ input: ListResolverEndpointIpAddressesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolverEndpointIpAddressesResponse {
        return try await self.client.execute(operation: "ListResolverEndpointIpAddresses", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the Resolver endpoints that were created using the current Amazon Web Services account.
    public func listResolverEndpoints(_ input: ListResolverEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolverEndpointsResponse {
        return try await self.client.execute(operation: "ListResolverEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about associations between Amazon VPCs and query logging configurations.
    public func listResolverQueryLogConfigAssociations(_ input: ListResolverQueryLogConfigAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolverQueryLogConfigAssociationsResponse {
        return try await self.client.execute(operation: "ListResolverQueryLogConfigAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save
    /// 			DNS query logs and specifies the VPCs that you want to log queries for.
    public func listResolverQueryLogConfigs(_ input: ListResolverQueryLogConfigsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolverQueryLogConfigsResponse {
        return try await self.client.execute(operation: "ListResolverQueryLogConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the associations that were created between Resolver rules and VPCs using the current Amazon Web Services account.
    public func listResolverRuleAssociations(_ input: ListResolverRuleAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolverRuleAssociationsResponse {
        return try await self.client.execute(operation: "ListResolverRuleAssociations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Resolver rules that were created using the current Amazon Web Services account.
    public func listResolverRules(_ input: ListResolverRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResolverRulesResponse {
        return try await self.client.execute(operation: "ListResolverRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags that you associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches an Identity and Access Management (Amazon Web Services IAM) policy for sharing the rule
    /// 			group. You can use the policy to share the rule group using Resource Access Manager
    /// 			(RAM).
    public func putFirewallRuleGroupPolicy(_ input: PutFirewallRuleGroupPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutFirewallRuleGroupPolicyResponse {
        return try await self.client.execute(operation: "PutFirewallRuleGroupPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies an Amazon Web Services account that you want to share a query logging configuration with, the query logging configuration that you want to share,
    /// 			and the operations that you want the account to be able to perform on the configuration.
    public func putResolverQueryLogConfigPolicy(_ input: PutResolverQueryLogConfigPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResolverQueryLogConfigPolicyResponse {
        return try await self.client.execute(operation: "PutResolverQueryLogConfigPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies an Amazon Web Services rule that you want to share with another account, the account that you want to share the rule with,
    /// 			and the operations that you want the account to be able to perform on the rule.
    public func putResolverRulePolicy(_ input: PutResolverRulePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResolverRulePolicyResponse {
        return try await self.client.execute(operation: "PutResolverRulePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to a specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the configuration of the firewall behavior provided by DNS Firewall for a single
    /// 			VPC from Amazon Virtual Private Cloud (Amazon VPC).
    public func updateFirewallConfig(_ input: UpdateFirewallConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFirewallConfigResponse {
        return try await self.client.execute(operation: "UpdateFirewallConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the firewall domain list from an array of domain specifications.
    public func updateFirewallDomains(_ input: UpdateFirewallDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFirewallDomainsResponse {
        return try await self.client.execute(operation: "UpdateFirewallDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified firewall rule.
    public func updateFirewallRule(_ input: UpdateFirewallRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFirewallRuleResponse {
        return try await self.client.execute(operation: "UpdateFirewallRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the association of a FirewallRuleGroup with a VPC. The association enables DNS filtering for the VPC.
    public func updateFirewallRuleGroupAssociation(_ input: UpdateFirewallRuleGroupAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFirewallRuleGroupAssociationResponse {
        return try await self.client.execute(operation: "UpdateFirewallRuleGroupAssociation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing DNSSEC validation configuration. If there is no existing DNSSEC validation configuration, one is created.
    public func updateResolverDnssecConfig(_ input: UpdateResolverDnssecConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResolverDnssecConfigResponse {
        return try await self.client.execute(operation: "UpdateResolverDnssecConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the name of an inbound or an outbound Resolver endpoint.
    public func updateResolverEndpoint(_ input: UpdateResolverEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResolverEndpointResponse {
        return try await self.client.execute(operation: "UpdateResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates settings for a specified Resolver rule. ResolverRuleId is required, and all other parameters are optional.
    /// 			If you don't specify a parameter, it retains its current value.
    public func updateResolverRule(_ input: UpdateResolverRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResolverRuleResponse {
        return try await self.client.execute(operation: "UpdateResolverRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
