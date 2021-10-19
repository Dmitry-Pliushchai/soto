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

/// Error enum for Synthetics
public struct SyntheticsErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Synthetics
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

    /// A conflicting operation is already in progress.
    public static var conflictException: Self { .init(.conflictException) }
    /// An unknown internal error occurred.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// One of the specified resources was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// A parameter could not be validated.
    public static var validationException: Self { .init(.validationException) }
}

extension SyntheticsErrorType: Equatable {
    public static func == (lhs: SyntheticsErrorType, rhs: SyntheticsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SyntheticsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
