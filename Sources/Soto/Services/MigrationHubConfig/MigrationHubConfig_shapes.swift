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

#if os(Linux)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension MigrationHubConfig {
    // MARK: Enums

    public enum TargetType: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case account = "ACCOUNT"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateHomeRegionControlRequest: AWSEncodableShape {
        /// Optional Boolean flag to indicate whether any effect should take place. It tests whether the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the home region of the calling account.
        public let homeRegion: String
        /// The account for which this command sets up a home region control. The Target is always of type ACCOUNT.
        public let target: Target

        public init(dryRun: Bool? = nil, homeRegion: String, target: Target) {
            self.dryRun = dryRun
            self.homeRegion = homeRegion
            self.target = target
        }

        public func validate(name: String) throws {
            try self.validate(self.homeRegion, name: "homeRegion", parent: name, max: 50)
            try self.validate(self.homeRegion, name: "homeRegion", parent: name, min: 1)
            try self.validate(self.homeRegion, name: "homeRegion", parent: name, pattern: "^([a-z]+)-([a-z]+)-([0-9]+)$")
            try self.target.validate(name: "\(name).target")
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case homeRegion = "HomeRegion"
            case target = "Target"
        }
    }

    public struct CreateHomeRegionControlResult: AWSDecodableShape {
        /// This object is the HomeRegionControl object that's returned by a successful call to CreateHomeRegionControl.
        public let homeRegionControl: HomeRegionControl?

        public init(homeRegionControl: HomeRegionControl? = nil) {
            self.homeRegionControl = homeRegionControl
        }

        private enum CodingKeys: String, CodingKey {
            case homeRegionControl = "HomeRegionControl"
        }
    }

    public struct DeleteHomeRegionControlRequest: AWSEncodableShape {
        /// A unique identifier that's generated for each home region control. It's always a string that begins with "hrc-" followed by 12 lowercase letters and numbers.
        public let controlId: String

        public init(controlId: String) {
            self.controlId = controlId
        }

        public func validate(name: String) throws {
            try self.validate(self.controlId, name: "controlId", parent: name, max: 50)
            try self.validate(self.controlId, name: "controlId", parent: name, min: 1)
            try self.validate(self.controlId, name: "controlId", parent: name, pattern: "^hrc-[a-z0-9]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case controlId = "ControlId"
        }
    }

    public struct DeleteHomeRegionControlResult: AWSDecodableShape {
        public init() {}
    }

    public struct DescribeHomeRegionControlsRequest: AWSEncodableShape {
        /// The ControlID is a unique identifier string of your HomeRegionControl object.
        public let controlId: String?
        /// The name of the home region you'd like to view.
        public let homeRegion: String?
        /// The maximum number of filtering results to display per page.
        public let maxResults: Int?
        /// If a NextToken was returned by a previous call, more results are available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// The target parameter specifies the identifier to which the home region is applied, which is always of type ACCOUNT. It applies the home region to the current ACCOUNT.
        public let target: Target?

        public init(controlId: String? = nil, homeRegion: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, target: Target? = nil) {
            self.controlId = controlId
            self.homeRegion = homeRegion
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.target = target
        }

        public func validate(name: String) throws {
            try self.validate(self.controlId, name: "controlId", parent: name, max: 50)
            try self.validate(self.controlId, name: "controlId", parent: name, min: 1)
            try self.validate(self.controlId, name: "controlId", parent: name, pattern: "^hrc-[a-z0-9]{12}$")
            try self.validate(self.homeRegion, name: "homeRegion", parent: name, max: 50)
            try self.validate(self.homeRegion, name: "homeRegion", parent: name, min: 1)
            try self.validate(self.homeRegion, name: "homeRegion", parent: name, pattern: "^([a-z]+)-([a-z]+)-([0-9]+)$")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 2048)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[a-zA-Z0-9\\/\\+\\=]{0,2048}$")
            try self.target?.validate(name: "\(name).target")
        }

        private enum CodingKeys: String, CodingKey {
            case controlId = "ControlId"
            case homeRegion = "HomeRegion"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case target = "Target"
        }
    }

    public struct DescribeHomeRegionControlsResult: AWSDecodableShape {
        /// An array that contains your HomeRegionControl objects.
        public let homeRegionControls: [HomeRegionControl]?
        /// If a NextToken was returned by a previous call, more results are available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(homeRegionControls: [HomeRegionControl]? = nil, nextToken: String? = nil) {
            self.homeRegionControls = homeRegionControls
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case homeRegionControls = "HomeRegionControls"
            case nextToken = "NextToken"
        }
    }

    public struct GetHomeRegionRequest: AWSEncodableShape {
        public init() {}
    }

    public struct GetHomeRegionResult: AWSDecodableShape {
        /// The name of the home region of the calling account.
        public let homeRegion: String?

        public init(homeRegion: String? = nil) {
            self.homeRegion = homeRegion
        }

        private enum CodingKeys: String, CodingKey {
            case homeRegion = "HomeRegion"
        }
    }

    public struct HomeRegionControl: AWSDecodableShape {
        /// A unique identifier that's generated for each home region control. It's always a string that begins with "hrc-" followed by 12 lowercase letters and numbers.
        public let controlId: String?
        /// The AWS Region that's been set as home region. For example, "us-west-2" or "eu-central-1" are valid home regions.
        public let homeRegion: String?
        /// A timestamp representing the time when the customer called CreateHomeregionControl and set the home region for the account.
        public let requestedTime: Date?
        /// The target parameter specifies the identifier to which the home region is applied, which is always an ACCOUNT. It applies the home region to the current ACCOUNT.
        public let target: Target?

        public init(controlId: String? = nil, homeRegion: String? = nil, requestedTime: Date? = nil, target: Target? = nil) {
            self.controlId = controlId
            self.homeRegion = homeRegion
            self.requestedTime = requestedTime
            self.target = target
        }

        private enum CodingKeys: String, CodingKey {
            case controlId = "ControlId"
            case homeRegion = "HomeRegion"
            case requestedTime = "RequestedTime"
            case target = "Target"
        }
    }

    public struct Target: AWSEncodableShape & AWSDecodableShape {
        /// The TargetID is a 12-character identifier of the ACCOUNT for which the control was created. (This must be the current account.)
        public let id: String?
        /// The target type is always an ACCOUNT.
        public let type: TargetType

        public init(id: String? = nil, type: TargetType) {
            self.id = id
            self.type = type
        }

        public func validate(name: String) throws {
            try self.validate(self.id, name: "id", parent: name, max: 12)
            try self.validate(self.id, name: "id", parent: name, min: 12)
            try self.validate(self.id, name: "id", parent: name, pattern: "^\\d{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case id = "Id"
            case type = "Type"
        }
    }
}

// MARK: - Errors

/// Error enum for MigrationHubConfig
public struct MigrationHubConfigErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case dryRunOperation = "DryRunOperation"
        case internalServerError = "InternalServerError"
        case invalidInputException = "InvalidInputException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MigrationHubConfig
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Exception raised to indicate that authorization of an action was successful, when the DryRun flag is set to true.
    public static var dryRunOperation: Self { .init(.dryRunOperation) }
    /// Exception raised when an internal, configuration, or dependency error is encountered.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.
    public static var invalidInputException: Self { .init(.invalidInputException) }
    /// Exception raised when a request fails due to temporary unavailability of the service.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension MigrationHubConfigErrorType: Equatable {
    public static func == (lhs: MigrationHubConfigErrorType, rhs: MigrationHubConfigErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MigrationHubConfigErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
