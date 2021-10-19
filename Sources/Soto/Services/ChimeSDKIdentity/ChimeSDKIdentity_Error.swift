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

import SotoCore

/// Error enum for ChimeSDKIdentity
public struct ChimeSDKIdentityErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case resourceLimitExceededException = "ResourceLimitExceededException"
        case serviceFailureException = "ServiceFailureException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttledClientException = "ThrottledClientException"
        case unauthorizedClientException = "UnauthorizedClientException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ChimeSDKIdentity
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

    /// The input parameters don't match the service's restrictions.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The request could not be processed because of conflict in the current state of the resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// The client is permanently forbidden from making the request.
    public static var forbiddenException: Self { .init(.forbiddenException) }
    /// The request exceeds the resource limit.
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    /// The service encountered an unexpected error.
    public static var serviceFailureException: Self { .init(.serviceFailureException) }
    /// The service is currently unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The client exceeded its request rate limit.
    public static var throttledClientException: Self { .init(.throttledClientException) }
    /// The client is not currently authorized to make the request.
    public static var unauthorizedClientException: Self { .init(.unauthorizedClientException) }
}

extension ChimeSDKIdentityErrorType: Equatable {
    public static func == (lhs: ChimeSDKIdentityErrorType, rhs: ChimeSDKIdentityErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ChimeSDKIdentityErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
