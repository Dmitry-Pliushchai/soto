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

/// Service object for interacting with AWS IoTDataPlane service.
///
/// IoT data IoT data enables secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the Amazon Web Services cloud. It implements a broker for applications and things to publish messages over HTTP (Publish) and retrieve, update, and delete shadows. A shadow is a persistent representation of your things and their state in the Amazon Web Services cloud. Find the endpoint address for actions in IoT data by running this CLI command:  aws iot describe-endpoint --endpoint-type iot:Data-ATS  The service name used by Amazon Web ServicesSignature Version 4 to sign requests is: iotdevicegateway.
public struct IoTDataPlane: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoTDataPlane client
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
            service: "data-ats.iot",
            signingName: "iotdata",
            serviceProtocol: .restjson,
            apiVersion: "2015-05-28",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "ca-central-1": "data.iot-fips.ca-central-1.amazonaws.com",
                    "us-east-1": "data.iot-fips.us-east-1.amazonaws.com",
                    "us-east-2": "data.iot-fips.us-east-2.amazonaws.com",
                    "us-gov-east-1": "data.iot-fips.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "data.iot-fips.us-gov-west-1.amazonaws.com",
                    "us-west-1": "data.iot-fips.us-west-1.amazonaws.com",
                    "us-west-2": "data.iot-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: IoTDataPlaneErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Deletes the shadow for the specified thing. Requires permission to access the DeleteThingShadow action. For more information, see DeleteThingShadow in the IoT Developer Guide.
    public func deleteThingShadow(_ input: DeleteThingShadowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteThingShadowResponse> {
        return self.client.execute(operation: "DeleteThingShadow", path: "/things/{thingName}/shadow", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the details of a single retained message for the specified topic. This action returns the message payload of the retained message, which can  incur messaging costs. To list only the topic names of the retained messages, call ListRetainedMessages. Requires permission to access the GetRetainedMessage action. For more information about messaging costs, see Amazon Web Services IoT Core pricing - Messaging.
    public func getRetainedMessage(_ input: GetRetainedMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRetainedMessageResponse> {
        return self.client.execute(operation: "GetRetainedMessage", path: "/retainedMessage/{topic}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the shadow for the specified thing. Requires permission to access the GetThingShadow action. For more information, see GetThingShadow in the IoT Developer Guide.
    public func getThingShadow(_ input: GetThingShadowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetThingShadowResponse> {
        return self.client.execute(operation: "GetThingShadow", path: "/things/{thingName}/shadow", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the shadows for the specified thing. Requires permission to access the ListNamedShadowsForThing action.
    public func listNamedShadowsForThing(_ input: ListNamedShadowsForThingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNamedShadowsForThingResponse> {
        return self.client.execute(operation: "ListNamedShadowsForThing", path: "/api/things/shadow/ListNamedShadowsForThing/{thingName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists summary information about the retained messages stored for the account. This action returns only the topic names of the retained messages. It doesn't  return any message payloads. Although this action doesn't return a message payload, it can still incur messaging costs. To get the message payload of a retained message, call GetRetainedMessage with the topic name of the retained message. Requires permission to access the ListRetainedMessages action. For more information about messaging costs, see Amazon Web Services IoT Core pricing - Messaging.
    public func listRetainedMessages(_ input: ListRetainedMessagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRetainedMessagesResponse> {
        return self.client.execute(operation: "ListRetainedMessages", path: "/retainedMessage", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Publishes an MQTT message. Requires permission to access the Publish action. For more information about MQTT messages, see  MQTT Protocol in the IoT Developer Guide. For more information about messaging costs, see Amazon Web Services IoT Core pricing - Messaging.
    @discardableResult public func publish(_ input: PublishRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "Publish", path: "/topics/{topic}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the shadow for the specified thing. Requires permission to access the UpdateThingShadow action. For more information, see UpdateThingShadow in the IoT Developer Guide.
    public func updateThingShadow(_ input: UpdateThingShadowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateThingShadowResponse> {
        return self.client.execute(operation: "UpdateThingShadow", path: "/things/{thingName}/shadow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension IoTDataPlane {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoTDataPlane, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension IoTDataPlane {
    ///  Lists summary information about the retained messages stored for the account. This action returns only the topic names of the retained messages. It doesn't  return any message payloads. Although this action doesn't return a message payload, it can still incur messaging costs. To get the message payload of a retained message, call GetRetainedMessage with the topic name of the retained message. Requires permission to access the ListRetainedMessages action. For more information about messaging costs, see Amazon Web Services IoT Core pricing - Messaging.
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
    public func listRetainedMessagesPaginator<Result>(
        _ input: ListRetainedMessagesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRetainedMessagesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listRetainedMessages,
            inputKey: \ListRetainedMessagesRequest.nextToken,
            outputKey: \ListRetainedMessagesResponse.nextToken,
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
    public func listRetainedMessagesPaginator(
        _ input: ListRetainedMessagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRetainedMessagesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listRetainedMessages,
            inputKey: \ListRetainedMessagesRequest.nextToken,
            outputKey: \ListRetainedMessagesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension IoTDataPlane.ListRetainedMessagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTDataPlane.ListRetainedMessagesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
