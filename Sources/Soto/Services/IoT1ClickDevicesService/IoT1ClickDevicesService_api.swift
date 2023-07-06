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

/// Service object for interacting with AWS IoT1ClickDevicesService service.
///
/// Describes all of the AWS IoT 1-Click device-related API operations for the service. Also provides sample requests, responses, and errors for the supported web services protocols.
public struct IoT1ClickDevicesService: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoT1ClickDevicesService client
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
            service: "devices.iot1click",
            signingName: "iot1click",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            errorType: IoT1ClickDevicesServiceErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Adds device(s) to your account (i.e., claim one or more devices) if and only if you received a claim code with the device(s).
    @Sendable
    public func claimDevicesByClaimCode(_ input: ClaimDevicesByClaimCodeRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ClaimDevicesByClaimCodeResponse {
        return try await self.client.execute(operation: "ClaimDevicesByClaimCode", path: "/claims/{ClaimCode}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Given a device ID, returns a DescribeDeviceResponse object describing the details of the device.
    @Sendable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDeviceResponse {
        return try await self.client.execute(operation: "DescribeDevice", path: "/devices/{DeviceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Given a device ID, finalizes the claim request for the associated device. Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.
    @Sendable
    public func finalizeDeviceClaim(_ input: FinalizeDeviceClaimRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> FinalizeDeviceClaimResponse {
        return try await self.client.execute(operation: "FinalizeDeviceClaim", path: "/devices/{DeviceId}/finalize-claim", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Given a device ID, returns the invokable methods associated with the device.
    @Sendable
    public func getDeviceMethods(_ input: GetDeviceMethodsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDeviceMethodsResponse {
        return try await self.client.execute(operation: "GetDeviceMethods", path: "/devices/{DeviceId}/methods", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Given a device ID, initiates a claim request for the associated device. Claiming a device consists of initiating a claim, then publishing a device event, and finalizing the claim. For a device of type button, a device event can be published by simply clicking the device.
    @Sendable
    public func initiateDeviceClaim(_ input: InitiateDeviceClaimRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> InitiateDeviceClaimResponse {
        return try await self.client.execute(operation: "InitiateDeviceClaim", path: "/devices/{DeviceId}/initiate-claim", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Given a device ID, issues a request to invoke a named device method (with possible parameters). See the "Example POST" code snippet below.
    @Sendable
    public func invokeDeviceMethod(_ input: InvokeDeviceMethodRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> InvokeDeviceMethodResponse {
        return try await self.client.execute(operation: "InvokeDeviceMethod", path: "/devices/{DeviceId}/methods", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Using a device ID, returns a DeviceEventsResponse object containing an array of events for the device.
    @Sendable
    public func listDeviceEvents(_ input: ListDeviceEventsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDeviceEventsResponse {
        return try await self.client.execute(operation: "ListDeviceEvents", path: "/devices/{DeviceId}/events", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists the 1-Click compatible devices associated with your AWS account.
    @Sendable
    public func listDevices(_ input: ListDevicesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDevicesResponse {
        return try await self.client.execute(operation: "ListDevices", path: "/devices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists the tags associated with the specified resource ARN.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Adds or updates the tags associated with the resource ARN. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Disassociates a device from your AWS account using its device ID.
    @Sendable
    public func unclaimDevice(_ input: UnclaimDeviceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UnclaimDeviceResponse {
        return try await self.client.execute(operation: "UnclaimDevice", path: "/devices/{DeviceId}/unclaim", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Using tag keys, deletes the tags (key/value pairs) associated with the specified resource ARN.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Using a Boolean value (true or false), this operation enables or disables the device given a device ID.
    @Sendable
    public func updateDeviceState(_ input: UpdateDeviceStateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDeviceStateResponse {
        return try await self.client.execute(operation: "UpdateDeviceState", path: "/devices/{DeviceId}/state", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension IoT1ClickDevicesService {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoT1ClickDevicesService, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
