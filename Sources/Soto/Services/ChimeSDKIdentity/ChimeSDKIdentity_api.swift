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

/// Service object for interacting with AWS ChimeSDKIdentity service.
///
/// The Amazon Chime SDK Identity APIs in this section allow software developers to create and manage unique instances of their messaging applications. These APIs provide the overarching framework for creating and sending messages. For more information about the identity APIs, refer to Amazon Chime SDK identity.
public struct ChimeSDKIdentity: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ChimeSDKIdentity client
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
            service: "identity-chime",
            signingName: "chime",
            serviceProtocol: .restjson,
            apiVersion: "2021-04-20",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "identity-chime-fips.us-east-1.amazonaws.com"
                ])
            ],
            errorType: ChimeSDKIdentityErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an Amazon Chime SDK messaging AppInstance under an AWS account. Only SDK messaging customers use this API. CreateAppInstance supports idempotency behavior as described in the AWS API Standard. identity
    public func createAppInstance(_ input: CreateAppInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppInstanceResponse> {
        return self.client.execute(operation: "CreateAppInstance", path: "/app-instances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Promotes an AppInstanceUser to an AppInstanceAdmin. The promoted user can perform the following actions.
    ///     ChannelModerator actions across all channels in the AppInstance.    DeleteChannelMessage actions.
    ///  Only an AppInstanceUser can be promoted to an AppInstanceAdmin role.
    public func createAppInstanceAdmin(_ input: CreateAppInstanceAdminRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppInstanceAdminResponse> {
        return self.client.execute(operation: "CreateAppInstanceAdmin", path: "/app-instances/{AppInstanceArn}/admins", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a user under an Amazon Chime AppInstance. The request consists of a unique appInstanceUserId and Name for that user.
    public func createAppInstanceUser(_ input: CreateAppInstanceUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppInstanceUserResponse> {
        return self.client.execute(operation: "CreateAppInstanceUser", path: "/app-instance-users", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an AppInstance and all associated data asynchronously.
    @discardableResult public func deleteAppInstance(_ input: DeleteAppInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAppInstance", path: "/app-instances/{AppInstanceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Demotes an AppInstanceAdmin to an AppInstanceUser. This action does not delete the user.
    @discardableResult public func deleteAppInstanceAdmin(_ input: DeleteAppInstanceAdminRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAppInstanceAdmin", path: "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an AppInstanceUser.
    @discardableResult public func deleteAppInstanceUser(_ input: DeleteAppInstanceUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAppInstanceUser", path: "/app-instance-users/{AppInstanceUserArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters an AppInstanceUserEndpoint.
    @discardableResult public func deregisterAppInstanceUserEndpoint(_ input: DeregisterAppInstanceUserEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeregisterAppInstanceUserEndpoint", path: "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the full details of an AppInstance.
    public func describeAppInstance(_ input: DescribeAppInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppInstanceResponse> {
        return self.client.execute(operation: "DescribeAppInstance", path: "/app-instances/{AppInstanceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the full details of an AppInstanceAdmin.
    public func describeAppInstanceAdmin(_ input: DescribeAppInstanceAdminRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppInstanceAdminResponse> {
        return self.client.execute(operation: "DescribeAppInstanceAdmin", path: "/app-instances/{AppInstanceArn}/admins/{AppInstanceAdminArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the full details of an AppInstanceUser.
    public func describeAppInstanceUser(_ input: DescribeAppInstanceUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppInstanceUserResponse> {
        return self.client.execute(operation: "DescribeAppInstanceUser", path: "/app-instance-users/{AppInstanceUserArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the full details of an AppInstanceUserEndpoint.
    public func describeAppInstanceUserEndpoint(_ input: DescribeAppInstanceUserEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAppInstanceUserEndpointResponse> {
        return self.client.execute(operation: "DescribeAppInstanceUserEndpoint", path: "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the retention settings for an AppInstance.
    public func getAppInstanceRetentionSettings(_ input: GetAppInstanceRetentionSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppInstanceRetentionSettingsResponse> {
        return self.client.execute(operation: "GetAppInstanceRetentionSettings", path: "/app-instances/{AppInstanceArn}/retention-settings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the administrators in the AppInstance.
    public func listAppInstanceAdmins(_ input: ListAppInstanceAdminsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppInstanceAdminsResponse> {
        return self.client.execute(operation: "ListAppInstanceAdmins", path: "/app-instances/{AppInstanceArn}/admins", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the AppInstanceUserEndpoints created under a single AppInstanceUser.
    public func listAppInstanceUserEndpoints(_ input: ListAppInstanceUserEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppInstanceUserEndpointsResponse> {
        return self.client.execute(operation: "ListAppInstanceUserEndpoints", path: "/app-instance-users/{AppInstanceUserArn}/endpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all AppInstanceUsers created under a single AppInstance.
    public func listAppInstanceUsers(_ input: ListAppInstanceUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppInstanceUsersResponse> {
        return self.client.execute(operation: "ListAppInstanceUsers", path: "/app-instance-users", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Amazon Chime AppInstances created under a single AWS account.
    public func listAppInstances(_ input: ListAppInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppInstancesResponse> {
        return self.client.execute(operation: "ListAppInstances", path: "/app-instances", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags applied to an Amazon Chime SDK identity resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the amount of time in days that a given AppInstance retains data.
    public func putAppInstanceRetentionSettings(_ input: PutAppInstanceRetentionSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutAppInstanceRetentionSettingsResponse> {
        return self.client.execute(operation: "PutAppInstanceRetentionSettings", path: "/app-instances/{AppInstanceArn}/retention-settings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers an endpoint under an Amazon Chime AppInstanceUser. The endpoint receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.
    public func registerAppInstanceUserEndpoint(_ input: RegisterAppInstanceUserEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterAppInstanceUserEndpointResponse> {
        return self.client.execute(operation: "RegisterAppInstanceUserEndpoint", path: "/app-instance-users/{AppInstanceUserArn}/endpoints", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies the specified tags to the specified Amazon Chime SDK identity resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags?operation=tag-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified Amazon Chime SDK identity resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags?operation=untag-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates AppInstance metadata.
    public func updateAppInstance(_ input: UpdateAppInstanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAppInstanceResponse> {
        return self.client.execute(operation: "UpdateAppInstance", path: "/app-instances/{AppInstanceArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the details of an AppInstanceUser. You can update names and metadata.
    public func updateAppInstanceUser(_ input: UpdateAppInstanceUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAppInstanceUserResponse> {
        return self.client.execute(operation: "UpdateAppInstanceUser", path: "/app-instance-users/{AppInstanceUserArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the details of an AppInstanceUserEndpoint. You can update the name and AllowMessage values.
    public func updateAppInstanceUserEndpoint(_ input: UpdateAppInstanceUserEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAppInstanceUserEndpointResponse> {
        return self.client.execute(operation: "UpdateAppInstanceUserEndpoint", path: "/app-instance-users/{AppInstanceUserArn}/endpoints/{EndpointId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ChimeSDKIdentity {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ChimeSDKIdentity, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension ChimeSDKIdentity {
    ///  Returns a list of the administrators in the AppInstance.
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
    public func listAppInstanceAdminsPaginator<Result>(
        _ input: ListAppInstanceAdminsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAppInstanceAdminsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAppInstanceAdmins,
            inputKey: \ListAppInstanceAdminsRequest.nextToken,
            outputKey: \ListAppInstanceAdminsResponse.nextToken,
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
    public func listAppInstanceAdminsPaginator(
        _ input: ListAppInstanceAdminsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAppInstanceAdminsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAppInstanceAdmins,
            inputKey: \ListAppInstanceAdminsRequest.nextToken,
            outputKey: \ListAppInstanceAdminsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all the AppInstanceUserEndpoints created under a single AppInstanceUser.
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
    public func listAppInstanceUserEndpointsPaginator<Result>(
        _ input: ListAppInstanceUserEndpointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAppInstanceUserEndpointsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAppInstanceUserEndpoints,
            inputKey: \ListAppInstanceUserEndpointsRequest.nextToken,
            outputKey: \ListAppInstanceUserEndpointsResponse.nextToken,
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
    public func listAppInstanceUserEndpointsPaginator(
        _ input: ListAppInstanceUserEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAppInstanceUserEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAppInstanceUserEndpoints,
            inputKey: \ListAppInstanceUserEndpointsRequest.nextToken,
            outputKey: \ListAppInstanceUserEndpointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List all AppInstanceUsers created under a single AppInstance.
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
    public func listAppInstanceUsersPaginator<Result>(
        _ input: ListAppInstanceUsersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAppInstanceUsersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAppInstanceUsers,
            inputKey: \ListAppInstanceUsersRequest.nextToken,
            outputKey: \ListAppInstanceUsersResponse.nextToken,
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
    public func listAppInstanceUsersPaginator(
        _ input: ListAppInstanceUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAppInstanceUsersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAppInstanceUsers,
            inputKey: \ListAppInstanceUsersRequest.nextToken,
            outputKey: \ListAppInstanceUsersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all Amazon Chime AppInstances created under a single AWS account.
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
    public func listAppInstancesPaginator<Result>(
        _ input: ListAppInstancesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAppInstancesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAppInstances,
            inputKey: \ListAppInstancesRequest.nextToken,
            outputKey: \ListAppInstancesResponse.nextToken,
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
    public func listAppInstancesPaginator(
        _ input: ListAppInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAppInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAppInstances,
            inputKey: \ListAppInstancesRequest.nextToken,
            outputKey: \ListAppInstancesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ChimeSDKIdentity.ListAppInstanceAdminsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKIdentity.ListAppInstanceAdminsRequest {
        return .init(
            appInstanceArn: self.appInstanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKIdentity.ListAppInstanceUserEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKIdentity.ListAppInstanceUserEndpointsRequest {
        return .init(
            appInstanceUserArn: self.appInstanceUserArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKIdentity.ListAppInstanceUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKIdentity.ListAppInstanceUsersRequest {
        return .init(
            appInstanceArn: self.appInstanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ChimeSDKIdentity.ListAppInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ChimeSDKIdentity.ListAppInstancesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
