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

#if compiler(>=5.7) && os(Linux)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
import SotoCore

extension IoTDataPlane {
    // MARK: Enums

    public enum PayloadFormatIndicator: String, CustomStringConvertible, Codable, Sendable {
        case unspecifiedBytes = "UNSPECIFIED_BYTES"
        case utf8Data = "UTF8_DATA"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DeleteThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring("name")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(shadowName: String? = nil, thingName: String) {
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "^[$a-zA-Z0-9:_-]+$")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]
        /// The state information, in JSON format.
        public let payload: AWSHTTPBody

        public init(payload: AWSHTTPBody) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }

    public struct GetRetainedMessageRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "topic", location: .uri("topic"))
        ]

        /// The topic name of the retained message to retrieve.
        public let topic: String

        public init(topic: String) {
            self.topic = topic
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRetainedMessageResponse: AWSDecodableShape {
        /// The Epoch date and time, in milliseconds, when the retained message was stored by IoT.
        public let lastModifiedTime: Int64?
        /// The Base64-encoded message payload of the retained message body.
        public let payload: AWSBase64Data?
        /// The quality of service (QoS) level used to publish the retained message.
        public let qos: Int?
        /// The topic name to which the retained message was published.
        public let topic: String?
        /// A base64-encoded JSON string that includes an array of JSON objects, or null if the retained message doesn't include any user properties. The following example userProperties parameter is a JSON string that represents two user properties. Note that it will be base64-encoded:  [{"deviceName": "alpha"}, {"deviceCnt": "45"}]
        public let userProperties: AWSBase64Data?

        public init(lastModifiedTime: Int64? = nil, payload: AWSBase64Data? = nil, qos: Int? = nil, topic: String? = nil, userProperties: AWSBase64Data? = nil) {
            self.lastModifiedTime = lastModifiedTime
            self.payload = payload
            self.qos = qos
            self.topic = topic
            self.userProperties = userProperties
        }

        private enum CodingKeys: String, CodingKey {
            case lastModifiedTime = "lastModifiedTime"
            case payload = "payload"
            case qos = "qos"
            case topic = "topic"
            case userProperties = "userProperties"
        }
    }

    public struct GetThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring("name")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(shadowName: String? = nil, thingName: String) {
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "^[$a-zA-Z0-9:_-]+$")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]
        /// The state information, in JSON format.
        public let payload: AWSHTTPBody?

        public init(payload: AWSHTTPBody? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }

    public struct ListNamedShadowsForThingRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken")),
            AWSMemberEncoding(label: "pageSize", location: .querystring("pageSize")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The token to retrieve the next set of results.
        public let nextToken: String?
        /// The result page size.
        public let pageSize: Int?
        /// The name of the thing.
        public let thingName: String

        public init(nextToken: String? = nil, pageSize: Int? = nil, thingName: String) {
            self.nextToken = nextToken
            self.pageSize = pageSize
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.pageSize, name: "pageSize", parent: name, max: 100)
            try self.validate(self.pageSize, name: "pageSize", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListNamedShadowsForThingResponse: AWSDecodableShape {
        /// The token to use to get the next set of results, or null if there are no additional results.
        public let nextToken: String?
        /// The list of shadows for the specified thing.
        public let results: [String]?
        /// The Epoch date and time the response was generated by IoT.
        public let timestamp: Int64?

        public init(nextToken: String? = nil, results: [String]? = nil, timestamp: Int64? = nil) {
            self.nextToken = nextToken
            self.results = results
            self.timestamp = timestamp
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case results = "results"
            case timestamp = "timestamp"
        }
    }

    public struct ListRetainedMessagesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The maximum number of results to return at one time.
        public let maxResults: Int?
        /// To retrieve the next set of results, the nextToken value from a previous response; otherwise null to receive the first set of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 200)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListRetainedMessagesResponse: AWSDecodableShape {
        /// The token for the next set of results, or null if there are no additional results.
        public let nextToken: String?
        /// A summary list the account's retained messages. The information returned doesn't include the message payloads of the retained messages.
        public let retainedTopics: [RetainedMessageSummary]?

        public init(nextToken: String? = nil, retainedTopics: [RetainedMessageSummary]? = nil) {
            self.nextToken = nextToken
            self.retainedTopics = retainedTopics
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case retainedTopics = "retainedTopics"
        }
    }

    public struct PublishRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]
        public static var _encoding = [
            AWSMemberEncoding(label: "contentType", location: .querystring("contentType")),
            AWSMemberEncoding(label: "correlationData", location: .header("x-amz-mqtt5-correlation-data")),
            AWSMemberEncoding(label: "messageExpiry", location: .querystring("messageExpiry")),
            AWSMemberEncoding(label: "payloadFormatIndicator", location: .header("x-amz-mqtt5-payload-format-indicator")),
            AWSMemberEncoding(label: "qos", location: .querystring("qos")),
            AWSMemberEncoding(label: "responseTopic", location: .querystring("responseTopic")),
            AWSMemberEncoding(label: "retain", location: .querystring("retain")),
            AWSMemberEncoding(label: "topic", location: .uri("topic")),
            AWSMemberEncoding(label: "userProperties", location: .header("x-amz-mqtt5-user-properties"))
        ]

        /// A UTF-8 encoded string that describes the content of the publishing message.
        public let contentType: String?
        /// The base64-encoded binary data used by the sender of the request message to identify which request the response message is for when it's received. correlationData is an HTTP header value in the API.
        public let correlationData: String?
        /// A user-defined integer value that represents the message expiry interval in seconds. If absent, the message doesn't expire. For more information about the limits of messageExpiry, see Amazon Web Services IoT Core message broker and protocol limits and quotas  from the Amazon Web Services Reference Guide.
        public let messageExpiry: Int64?
        /// The message body. MQTT accepts text, binary, and empty (null) message payloads. Publishing an empty (null) payload with retain = true deletes the retained message identified by topic from Amazon Web Services IoT Core.
        public let payload: AWSHTTPBody?
        /// An Enum string value that indicates whether the payload is formatted as UTF-8. payloadFormatIndicator is an HTTP header value in the API.
        public let payloadFormatIndicator: PayloadFormatIndicator?
        /// The Quality of Service (QoS) level. The default QoS level is 0.
        public let qos: Int?
        /// A UTF-8 encoded string that's used as the topic name for a response message. The response topic is used to describe the topic which the receiver should publish to as part of the request-response flow. The topic must not contain wildcard characters.
        public let responseTopic: String?
        /// A Boolean value that determines whether to set the RETAIN flag when the message is published. Setting the RETAIN flag causes the message to be retained and sent to new subscribers to the topic. Valid values: true | false  Default value: false
        public let retain: Bool?
        /// The name of the MQTT topic.
        public let topic: String
        /// A JSON string that contains an array of JSON objects. If you don’t use Amazon Web Services SDK or CLI, you must encode the JSON string to base64 format before adding it to the HTTP header. userProperties is an HTTP header value in the API. The following example userProperties parameter is a JSON string which represents two User Properties. Note that it needs to be base64-encoded:  [{"deviceName": "alpha"}, {"deviceCnt": "45"}]
        public let userProperties: String?

        public init(contentType: String? = nil, correlationData: String? = nil, messageExpiry: Int64? = nil, payload: AWSHTTPBody? = nil, payloadFormatIndicator: PayloadFormatIndicator? = nil, qos: Int? = nil, responseTopic: String? = nil, retain: Bool? = nil, topic: String, userProperties: String? = nil) {
            self.contentType = contentType
            self.correlationData = correlationData
            self.messageExpiry = messageExpiry
            self.payload = payload
            self.payloadFormatIndicator = payloadFormatIndicator
            self.qos = qos
            self.responseTopic = responseTopic
            self.retain = retain
            self.topic = topic
            self.userProperties = userProperties
        }

        public func validate(name: String) throws {
            try self.validate(self.qos, name: "qos", parent: name, max: 1)
            try self.validate(self.qos, name: "qos", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct RetainedMessageSummary: AWSDecodableShape {
        /// The Epoch date and time, in milliseconds, when the retained message was stored by IoT.
        public let lastModifiedTime: Int64?
        /// The size of the retained message's payload in bytes.
        public let payloadSize: Int64?
        /// The quality of service (QoS) level used to publish the retained message.
        public let qos: Int?
        /// The topic name to which the retained message was published.
        public let topic: String?

        public init(lastModifiedTime: Int64? = nil, payloadSize: Int64? = nil, qos: Int? = nil, topic: String? = nil) {
            self.lastModifiedTime = lastModifiedTime
            self.payloadSize = payloadSize
            self.qos = qos
            self.topic = topic
        }

        private enum CodingKeys: String, CodingKey {
            case lastModifiedTime = "lastModifiedTime"
            case payloadSize = "payloadSize"
            case qos = "qos"
            case topic = "topic"
        }
    }

    public struct UpdateThingShadowRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring("name")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The state information, in JSON format.
        public let payload: AWSHTTPBody
        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(payload: AWSHTTPBody, shadowName: String? = nil, thingName: String) {
            self.payload = payload
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "^[$a-zA-Z0-9:_-]+$")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]
        /// The state information, in JSON format.
        public let payload: AWSHTTPBody?

        public init(payload: AWSHTTPBody? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload = "payload"
        }
    }
}

// MARK: - Errors

/// Error enum for IoTDataPlane
public struct IoTDataPlaneErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalFailureException = "InternalFailureException"
        case invalidRequestException = "InvalidRequestException"
        case methodNotAllowedException = "MethodNotAllowedException"
        case requestEntityTooLargeException = "RequestEntityTooLargeException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
        case unauthorizedException = "UnauthorizedException"
        case unsupportedDocumentEncodingException = "UnsupportedDocumentEncodingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTDataPlane
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The specified version does not match the version of the document.
    public static var conflictException: Self { .init(.conflictException) }
    /// An unexpected error has occurred.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// The request is not valid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The specified combination of HTTP verb and URI is not supported.
    public static var methodNotAllowedException: Self { .init(.methodNotAllowedException) }
    /// The payload exceeds the maximum size allowed.
    public static var requestEntityTooLargeException: Self { .init(.requestEntityTooLargeException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service is temporarily unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The rate exceeds the limit.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// You are not authorized to perform this operation.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
    /// The document encoding is not supported.
    public static var unsupportedDocumentEncodingException: Self { .init(.unsupportedDocumentEncodingException) }
}

extension IoTDataPlaneErrorType: Equatable {
    public static func == (lhs: IoTDataPlaneErrorType, rhs: IoTDataPlaneErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTDataPlaneErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
