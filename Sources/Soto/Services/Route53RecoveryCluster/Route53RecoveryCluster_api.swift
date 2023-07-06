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

/// Service object for interacting with AWS Route53RecoveryCluster service.
///
/// Welcome to the Routing Control (Recovery Cluster) API Reference Guide for Amazon Route 53 Application Recovery Controller.
/// 			      With Route 53 ARC, you can use routing control with extreme reliability to
/// 			recover applications by rerouting traffic across
/// 			Availability Zones or Amazon Web Services Regions. Routing controls are simple on/off switches hosted
/// 			on a highly available cluster in Route 53 ARC. A cluster provides a set of five redundant Regional endpoints against which you
/// 			can run API calls to get or update the state of routing controls. To implement failover, you set
/// 			one routing control On and another one Off, to reroute traffic from one Availability Zone or Amazon Web Services Region
/// 			to another.
/// 			       Be aware that you must specify a Regional endpoint for a cluster when you work with API cluster operations
/// 				to get or update routing control states in Route 53 ARC. In addition, you must specify the US West (Oregon) Region
/// 				for Route 53 ARC API calls. For example, use the parameter --region us-west-2 with AWS CLI commands.
/// 				For more information, see
///
/// 					Get and update routing control states using the API in the Amazon Route 53 Application Recovery Controller Developer Guide.
/// 		       This API guide includes information about the API operations for how to get and update routing control states
/// 			in Route 53 ARC. To work with routing control in Route 53 ARC, you must first create the required components (clusters, control
/// 			panels, and routing controls) using the recovery cluster configuration API.
/// 			      For more information about working with routing control in Route 53 ARC, see the following:
///
/// 				           Create clusters, control panels, and routing controls by using API operations. For more information,
/// 					see the Recovery Control Configuration API Reference Guide for Amazon Route 53 Application Recovery Controller.
/// 			           Learn about the components in recovery control, including clusters,
/// 				routing controls, and control panels, and how to work with Route 53 ARC in the Amazon Web Services console. For more
/// 				information, see
/// 					Recovery control components in the Amazon Route 53 Application Recovery Controller Developer Guide.
/// 				           Route 53 ARC also provides readiness checks that continually audit resources to help make sure that your
/// 					applications are scaled and ready to handle failover traffic. For more information about
/// 					the related API operations, see the Recovery Readiness API Reference Guide for Amazon Route 53 Application Recovery Controller.
///
/// 				           For more information about creating resilient applications and preparing for
/// 					recovery readiness with Route 53 ARC, see the Amazon Route 53 Application Recovery Controller Developer Guide.
///
public struct Route53RecoveryCluster: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Route53RecoveryCluster client
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
            amzTarget: "ToggleCustomerAPI",
            service: "route53-recovery-cluster",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            errorType: Route53RecoveryClusterErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Get the state for a routing control. A routing control is a simple on/off switch that you
    /// 				can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    /// 				the state is Off, traffic does not flow.
    /// 			      Before you can create a routing control, you must first create a cluster, and then host the control
    /// 				in a control panel on the cluster. For more information, see
    /// 					Create routing control structures in the Amazon Route 53 Application Recovery Controller Developer Guide.
    /// 				You access one of the endpoints for the cluster to get or update the routing control state to
    /// 				redirect traffic for your application.
    /// 			       You must specify Regional endpoints when you work with API cluster operations
    /// 				to get or update routing control states in Route 53 ARC.
    /// 			      To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    /// 				in sequence, see API examples
    /// 				in the Amazon Route 53 Application Recovery Controller Developer Guide.
    /// 			      Learn more about working with routing controls in the following topics in the
    /// 				Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// 					Viewing and updating routing control states     Working with
    /// 					routing controls in Route 53 ARC
    @Sendable
    public func getRoutingControlState(_ input: GetRoutingControlStateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRoutingControlStateResponse {
        return try await self.client.execute(operation: "GetRoutingControlState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// List routing control names and Amazon Resource Names (ARNs), as well as the routing control
    /// 			state for each routing control, along with the control panel name and control panel ARN for the routing controls.
    /// 			If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists
    /// 			all the routing controls in the cluster.
    /// 		       A routing control is a simple on/off switch in Route 53 ARC that you
    /// 			can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    /// 			the state is Off, traffic does not flow.
    /// 		       Before you can create a routing control, you must first create a cluster, and then host the control
    /// 			in a control panel on the cluster. For more information, see
    /// 				Create routing control structures in the Amazon Route 53 Application Recovery Controller Developer Guide.
    /// 			You access one of the endpoints for the cluster to get or update the routing control state to
    /// 			redirect traffic for your application.
    /// 		        You must specify Regional endpoints when you work with API cluster operations
    /// 			to use this API operation to list routing controls in Route 53 ARC.
    /// 		       Learn more about working with routing controls in the following topics in the
    /// 			Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// 				Viewing and updating routing control states     Working with
    /// 				routing controls in Route 53 ARC
    @Sendable
    public func listRoutingControls(_ input: ListRoutingControlsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRoutingControlsResponse {
        return try await self.client.execute(operation: "ListRoutingControls", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Set the state of the routing control to reroute traffic. You can set the value to be On or
    /// 			Off. When the state is On, traffic flows to a cell. When the state is Off, traffic does not
    /// 			flow.
    /// 			      With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing
    /// 				control state updates that help prevent unexpected outcomes, like fail open traffic routing. However,
    /// 				there are scenarios when you might want to bypass the routing control safeguards that are enforced with
    /// 				safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery,
    /// 				and one or more safety rules might be unexpectedly preventing you from updating a routing control state to
    /// 				reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change
    /// 				a routing control state and fail over your application.
    /// 			      The SafetyRulesToOverride property enables you override one or more safety rules and
    /// 				update routing control states. For more information, see
    ///
    /// 					Override safety rules to reroute traffic in the Amazon Route 53 Application Recovery Controller Developer Guide.
    /// 			       You must specify Regional endpoints when you work with API cluster operations
    /// 				to get or update routing control states in Route 53 ARC.
    /// 			      To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    /// 				in sequence, see API examples
    /// 				in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// 					Viewing and updating routing control states     Working with routing controls overall
    @Sendable
    public func updateRoutingControlState(_ input: UpdateRoutingControlStateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRoutingControlStateResponse {
        return try await self.client.execute(operation: "UpdateRoutingControlState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Set multiple routing control states. You can set the value for each state to be On or Off.
    /// 			When the state is On, traffic flows to a cell. When it's Off, traffic does not
    /// 			flow.
    /// 			      With Route 53 ARC, you can add safety rules for routing controls, which are safeguards for routing
    /// 				control state updates that help prevent unexpected outcomes, like fail open traffic routing. However,
    /// 				there are scenarios when you might want to bypass the routing control safeguards that are enforced with
    /// 				safety rules that you've configured. For example, you might want to fail over quickly for disaster recovery,
    /// 				and one or more safety rules might be unexpectedly preventing you from updating a routing control state to
    /// 				reroute traffic. In a "break glass" scenario like this, you can override one or more safety rules to change
    /// 				a routing control state and fail over your application.
    /// 			      The SafetyRulesToOverride property enables you override one or more safety rules and
    /// 				update routing control states. For more information, see
    ///
    /// 					Override safety rules to reroute traffic in the Amazon Route 53 Application Recovery Controller Developer Guide.			  You must specify Regional endpoints when you work with API cluster operations
    /// 				to get or update routing control states in Route 53 ARC.
    /// 			      To see a code example for getting a routing control state, including accessing Regional cluster endpoints
    /// 				in sequence, see API examples
    /// 				in the Amazon Route 53 Application Recovery Controller Developer Guide.
    ///
    /// 					Viewing and updating routing control states     Working with routing controls overall
    @Sendable
    public func updateRoutingControlStates(_ input: UpdateRoutingControlStatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRoutingControlStatesResponse {
        return try await self.client.execute(operation: "UpdateRoutingControlStates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension Route53RecoveryCluster {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Route53RecoveryCluster, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Route53RecoveryCluster {
    /// List routing control names and Amazon Resource Names (ARNs), as well as the routing control
    /// 			state for each routing control, along with the control panel name and control panel ARN for the routing controls.
    /// 			If you specify a control panel ARN, this call lists the routing controls in the control panel. Otherwise, it lists
    /// 			all the routing controls in the cluster.
    /// 		       A routing control is a simple on/off switch in Route 53 ARC that you
    /// 			can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    /// 			the state is Off, traffic does not flow.
    /// 		       Before you can create a routing control, you must first create a cluster, and then host the control
    /// 			in a control panel on the cluster. For more information, see
    /// 				Create routing control structures in the Amazon Route 53 Application Recovery Controller Developer Guide.
    /// 			You access one of the endpoints for the cluster to get or update the routing control state to
    /// 			redirect traffic for your application.
    /// 		        You must specify Regional endpoints when you work with API cluster operations
    /// 			to use this API operation to list routing controls in Route 53 ARC.
    /// 		       Learn more about working with routing controls in the following topics in the
    /// 			Amazon Route 53 Application Recovery Controller Developer Guide:
    ///
    /// 				Viewing and updating routing control states     Working with
    /// 				routing controls in Route 53 ARC
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRoutingControlsPaginator(
        _ input: ListRoutingControlsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRoutingControlsRequest, ListRoutingControlsResponse> {
        return .init(
            input: input,
            command: self.listRoutingControls,
            inputKey: \ListRoutingControlsRequest.nextToken,
            outputKey: \ListRoutingControlsResponse.nextToken,
            logger: logger
        )
    }
}

extension Route53RecoveryCluster.ListRoutingControlsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53RecoveryCluster.ListRoutingControlsRequest {
        return .init(
            controlPanelArn: self.controlPanelArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
