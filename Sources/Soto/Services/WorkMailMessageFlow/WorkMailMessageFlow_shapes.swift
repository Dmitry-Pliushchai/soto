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

extension WorkMailMessageFlow {
    // MARK: Enums

    // MARK: Shapes

    public struct GetRawMessageContentRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "messageId", location: .uri("messageId"))
        ]

        /// The identifier of the email message to retrieve.
        public let messageId: String

        public init(messageId: String) {
            self.messageId = messageId
        }

        public func validate(name: String) throws {
            try self.validate(self.messageId, name: "messageId", parent: name, max: 120)
            try self.validate(self.messageId, name: "messageId", parent: name, min: 1)
            try self.validate(self.messageId, name: "messageId", parent: name, pattern: "[a-z0-9\\-]*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRawMessageContentResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "messageContent"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming]
        /// The raw content of the email message, in MIME format.
        public let messageContent: HTTPBody

        public init(messageContent: HTTPBody) {
            self.messageContent = messageContent
        }

        private enum CodingKeys: String, CodingKey {
            case messageContent = "messageContent"
        }
    }

    public struct PutRawMessageContentRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "messageId", location: .uri("messageId"))
        ]

        /// Describes the raw message content of the updated email message.
        public let content: RawMessageContent
        /// The identifier of the email message being updated.
        public let messageId: String

        public init(content: RawMessageContent, messageId: String) {
            self.content = content
            self.messageId = messageId
        }

        public func validate(name: String) throws {
            try self.content.validate(name: "\(name).content")
            try self.validate(self.messageId, name: "messageId", parent: name, max: 120)
            try self.validate(self.messageId, name: "messageId", parent: name, min: 1)
            try self.validate(self.messageId, name: "messageId", parent: name, pattern: "[a-z0-9\\-]*")
        }

        private enum CodingKeys: String, CodingKey {
            case content = "content"
        }
    }

    public struct PutRawMessageContentResponse: AWSDecodableShape {
        public init() {}
    }

    public struct RawMessageContent: AWSEncodableShape {
        /// The S3 reference of an email message.
        public let s3Reference: S3Reference

        public init(s3Reference: S3Reference) {
            self.s3Reference = s3Reference
        }

        public func validate(name: String) throws {
            try self.s3Reference.validate(name: "\(name).s3Reference")
        }

        private enum CodingKeys: String, CodingKey {
            case s3Reference = "s3Reference"
        }
    }

    public struct S3Reference: AWSEncodableShape {
        /// The S3 bucket name.
        public let bucket: String
        /// The S3 key object name.
        public let key: String
        /// If you enable versioning for the bucket, you can specify the object version.
        public let objectVersion: String?

        public init(bucket: String, key: String, objectVersion: String? = nil) {
            self.bucket = bucket
            self.key = key
            self.objectVersion = objectVersion
        }

        public func validate(name: String) throws {
            try self.validate(self.bucket, name: "bucket", parent: name, max: 63)
            try self.validate(self.bucket, name: "bucket", parent: name, min: 3)
            try self.validate(self.bucket, name: "bucket", parent: name, pattern: "^[a-z0-9][a-z0-9\\-]*")
            try self.validate(self.key, name: "key", parent: name, max: 1024)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "[a-zA-Z0-9\\-/]*")
            try self.validate(self.objectVersion, name: "objectVersion", parent: name, max: 1024)
            try self.validate(self.objectVersion, name: "objectVersion", parent: name, min: 1)
            try self.validate(self.objectVersion, name: "objectVersion", parent: name, pattern: ".+")
        }

        private enum CodingKeys: String, CodingKey {
            case bucket = "bucket"
            case key = "key"
            case objectVersion = "objectVersion"
        }
    }
}

// MARK: - Errors

/// Error enum for WorkMailMessageFlow
public struct WorkMailMessageFlowErrorType: AWSErrorType {
    enum Code: String {
        case invalidContentLocation = "InvalidContentLocation"
        case messageFrozen = "MessageFrozen"
        case messageRejected = "MessageRejected"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WorkMailMessageFlow
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

    /// WorkMail could not access the updated email content. Possible reasons:   You made the request in a region other than your S3 bucket region.   The S3 bucket owner is not the  same as the calling AWS account.   You have an incomplete or missing S3 bucket policy. For more information about policies, see   Updating message content with AWS Lambda in the WorkMail Administrator Guide.
    public static var invalidContentLocation: Self { .init(.invalidContentLocation) }
    /// The requested email is not eligible for update. This is usually the case for a redirected email.
    public static var messageFrozen: Self { .init(.messageFrozen) }
    /// The requested email could not be updated due to an error in the MIME content. Check the error message for more information about  what caused the error.
    public static var messageRejected: Self { .init(.messageRejected) }
    /// The requested email message is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension WorkMailMessageFlowErrorType: Equatable {
    public static func == (lhs: WorkMailMessageFlowErrorType, rhs: WorkMailMessageFlowErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WorkMailMessageFlowErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
