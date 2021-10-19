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

/// Error enum for IoTEventsData
public struct IoTEventsDataErrorType: AWSErrorType {
    enum Code: String {
        case internalFailureException = "InternalFailureException"
        case invalidRequestException = "InvalidRequestException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTEventsData
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

    /// An internal failure occurred.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// The request was invalid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service is currently unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request could not be completed due to throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension IoTEventsDataErrorType: Equatable {
    public static func == (lhs: IoTEventsDataErrorType, rhs: IoTEventsDataErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTEventsDataErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
