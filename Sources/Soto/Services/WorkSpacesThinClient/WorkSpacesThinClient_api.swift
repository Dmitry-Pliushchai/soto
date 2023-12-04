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

/// Service object for interacting with AWS WorkSpacesThinClient service.
///
/// Amazon WorkSpaces Thin Client is a affordable device built to work with Amazon Web Services End User Computing (EUC) virtual desktops to provide users with a complete cloud desktop solution. WorkSpaces Thin Client is a compact device designed to connect up to two monitors and USB devices like a keyboard, mouse, headset, and webcam. To maximize endpoint security, WorkSpaces Thin Client devices do not allow local data storage or installation of unapproved applications. The WorkSpaces Thin Client device ships preloaded with device management software. You can use these APIs to complete WorkSpaces Thin Client tasks, such as creating environments or viewing devices. For more information about WorkSpaces Thin Client, including the required permissions to use the service, see the Amazon WorkSpaces Thin Client Administrator Guide. For more information about using the Command Line Interface (CLI) to manage your WorkSpaces Thin Client resources, see the WorkSpaces Thin Client section of the CLI Reference.
public struct WorkSpacesThinClient: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the WorkSpacesThinClient client
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
            service: "thinclient",
            serviceProtocol: .restjson,
            apiVersion: "2023-08-22",
            endpoint: endpoint,
            errorType: WorkSpacesThinClientErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an environment for your thin client devices.
    public func createEnvironment(_ input: CreateEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnvironmentResponse> {
        return self.client.execute(operation: "CreateEnvironment", path: "/environments", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a thin client device.
    public func deleteDevice(_ input: DeleteDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        return self.client.execute(operation: "DeleteDevice", path: "/devices/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes an environment.
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEnvironmentResponse> {
        return self.client.execute(operation: "DeleteEnvironment", path: "/environments/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deregisters a thin client device.
    public func deregisterDevice(_ input: DeregisterDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterDeviceResponse> {
        return self.client.execute(operation: "DeregisterDevice", path: "/deregister-device/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Returns information for a thin client device.
    public func getDevice(_ input: GetDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceResponse> {
        return self.client.execute(operation: "GetDevice", path: "/devices/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Returns information for an environment.
    public func getEnvironment(_ input: GetEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEnvironmentResponse> {
        return self.client.execute(operation: "GetEnvironment", path: "/environments/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Returns information for a software set.
    public func getSoftwareSet(_ input: GetSoftwareSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSoftwareSetResponse> {
        return self.client.execute(operation: "GetSoftwareSet", path: "/softwaresets/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Returns a list of thin client devices.
    public func listDevices(_ input: ListDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicesResponse> {
        return self.client.execute(operation: "ListDevices", path: "/devices", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Returns a list of environments.
    public func listEnvironments(_ input: ListEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEnvironmentsResponse> {
        return self.client.execute(operation: "ListEnvironments", path: "/environments", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Returns a list of software sets.
    public func listSoftwareSets(_ input: ListSoftwareSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSoftwareSetsResponse> {
        return self.client.execute(operation: "ListSoftwareSets", path: "/softwaresets", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Returns a list of tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Removes a tag or tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a thin client device.
    public func updateDevice(_ input: UpdateDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceResponse> {
        return self.client.execute(operation: "UpdateDevice", path: "/devices/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an environment.
    public func updateEnvironment(_ input: UpdateEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEnvironmentResponse> {
        return self.client.execute(operation: "UpdateEnvironment", path: "/environments/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a software set.
    public func updateSoftwareSet(_ input: UpdateSoftwareSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSoftwareSetResponse> {
        return self.client.execute(operation: "UpdateSoftwareSet", path: "/softwaresets/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }
}

extension WorkSpacesThinClient {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: WorkSpacesThinClient, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension WorkSpacesThinClient {
    /// Returns a list of thin client devices.
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
    public func listDevicesPaginator<Result>(
        _ input: ListDevicesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDevicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listDevices,
            inputKey: \ListDevicesRequest.nextToken,
            outputKey: \ListDevicesResponse.nextToken,
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
    public func listDevicesPaginator(
        _ input: ListDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listDevices,
            inputKey: \ListDevicesRequest.nextToken,
            outputKey: \ListDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of environments.
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
    public func listEnvironmentsPaginator<Result>(
        _ input: ListEnvironmentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEnvironmentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \ListEnvironmentsResponse.nextToken,
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
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEnvironmentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \ListEnvironmentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of software sets.
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
    public func listSoftwareSetsPaginator<Result>(
        _ input: ListSoftwareSetsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSoftwareSetsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSoftwareSets,
            inputKey: \ListSoftwareSetsRequest.nextToken,
            outputKey: \ListSoftwareSetsResponse.nextToken,
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
    public func listSoftwareSetsPaginator(
        _ input: ListSoftwareSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSoftwareSetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSoftwareSets,
            inputKey: \ListSoftwareSetsRequest.nextToken,
            outputKey: \ListSoftwareSetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension WorkSpacesThinClient.ListDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpacesThinClient.ListDevicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension WorkSpacesThinClient.ListEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpacesThinClient.ListEnvironmentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension WorkSpacesThinClient.ListSoftwareSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkSpacesThinClient.ListSoftwareSetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
