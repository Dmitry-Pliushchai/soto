//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

/// Service object for interacting with AWS IoTSecureTunneling service.
///
/// IoT Secure Tunneling
/// 		       IoT Secure Tunneling creates remote connections to devices deployed in the
/// 			field.
/// 		       For more information about how IoT Secure Tunneling works, see IoT
/// 				Secure Tunneling.
public struct IoTSecureTunneling: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoTSecureTunneling client
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
            amzTarget: "IoTSecuredTunneling",
            service: "api.tunneling.iot",
            signingName: "IoTSecuredTunneling",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-10-05",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "ap-east-1": "api.tunneling.iot-fips.ap-east-1.amazonaws.com",
                    "ap-northeast-1": "api.tunneling.iot-fips.ap-northeast-1.amazonaws.com",
                    "ap-northeast-2": "api.tunneling.iot-fips.ap-northeast-2.amazonaws.com",
                    "ap-south-1": "api.tunneling.iot-fips.ap-south-1.amazonaws.com",
                    "ap-southeast-1": "api.tunneling.iot-fips.ap-southeast-1.amazonaws.com",
                    "ap-southeast-2": "api.tunneling.iot-fips.ap-southeast-2.amazonaws.com",
                    "ca-central-1": "api.tunneling.iot-fips.ca-central-1.amazonaws.com",
                    "eu-central-1": "api.tunneling.iot-fips.eu-central-1.amazonaws.com",
                    "eu-north-1": "api.tunneling.iot-fips.eu-north-1.amazonaws.com",
                    "eu-west-1": "api.tunneling.iot-fips.eu-west-1.amazonaws.com",
                    "eu-west-2": "api.tunneling.iot-fips.eu-west-2.amazonaws.com",
                    "eu-west-3": "api.tunneling.iot-fips.eu-west-3.amazonaws.com",
                    "me-south-1": "api.tunneling.iot-fips.me-south-1.amazonaws.com",
                    "sa-east-1": "api.tunneling.iot-fips.sa-east-1.amazonaws.com",
                    "us-east-1": "api.tunneling.iot-fips.us-east-1.amazonaws.com",
                    "us-east-2": "api.tunneling.iot-fips.us-east-2.amazonaws.com",
                    "us-gov-east-1": "api.tunneling.iot-fips.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "api.tunneling.iot-fips.us-gov-west-1.amazonaws.com",
                    "us-west-1": "api.tunneling.iot-fips.us-west-1.amazonaws.com",
                    "us-west-2": "api.tunneling.iot-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: IoTSecureTunnelingErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Closes a tunnel identified by the unique tunnel id. When a CloseTunnel
    /// 			request is received, we close the WebSocket connections between the client and proxy
    /// 			server so no data can be transmitted.
    /// 		       Requires permission to access the CloseTunnel action.
    public func closeTunnel(_ input: CloseTunnelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseTunnelResponse> {
        return self.client.execute(operation: "CloseTunnel", path: "/tunnels/{tunnelId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a tunnel identified by the unique tunnel id.
    /// 		       Requires permission to access the DescribeTunnel action.
    public func describeTunnel(_ input: DescribeTunnelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTunnelResponse> {
        return self.client.execute(operation: "DescribeTunnel", path: "/tunnels/{tunnelId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all tunnels for an Amazon Web Services account. Tunnels are listed by creation time in
    /// 			descending order, newer tunnels will be listed before older tunnels.
    /// 		       Requires permission to access the ListTunnels action.
    public func listTunnels(_ input: ListTunnelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTunnelsResponse> {
        return self.client.execute(operation: "ListTunnels", path: "/tunnels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new tunnel, and returns two client access tokens for clients to use to
    /// 			connect to the IoT Secure Tunneling proxy server.
    /// 		       Requires permission to access the OpenTunnel action.
    public func openTunnel(_ input: OpenTunnelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenTunnelResponse> {
        return self.client.execute(operation: "OpenTunnel", path: "/tunnels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Revokes the current client access token (CAT) and returns new CAT for clients to
    /// 			use when reconnecting to secure tunneling to access the same tunnel.
    /// 		       Requires permission to access the RotateTunnelAccessToken action.
    ///
    /// 			         Rotating the CAT doesn't extend the tunnel duration. For example, say the tunnel
    /// 				duration is 12 hours and the tunnel has already been open for 4 hours. When you
    /// 				rotate the access tokens, the new tokens that are generated can only be used for the
    /// 				remaining 8 hours.
    ///
    public func rotateTunnelAccessToken(_ input: RotateTunnelAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RotateTunnelAccessTokenResponse> {
        return self.client.execute(operation: "RotateTunnelAccessToken", path: "/tunnel/{tunnelId}/rotate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A resource tag.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/untag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension IoTSecureTunneling {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoTSecureTunneling, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension IoTSecureTunneling {
    ///  List all tunnels for an Amazon Web Services account. Tunnels are listed by creation time in
    ///  			descending order, newer tunnels will be listed before older tunnels.
    ///  		       Requires permission to access the ListTunnels action.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTunnelsPaginator<Result>(
        _ input: ListTunnelsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTunnelsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listTunnels,
            inputKey: \ListTunnelsRequest.nextToken,
            outputKey: \ListTunnelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTunnelsPaginator(
        _ input: ListTunnelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTunnelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listTunnels,
            inputKey: \ListTunnelsRequest.nextToken,
            outputKey: \ListTunnelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension IoTSecureTunneling.ListTunnelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTSecureTunneling.ListTunnelsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            thingName: self.thingName
        )
    }
}
