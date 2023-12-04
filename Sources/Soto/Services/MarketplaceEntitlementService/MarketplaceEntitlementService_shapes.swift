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

extension MarketplaceEntitlementService {
    // MARK: Enums

    public enum GetEntitlementFilterName: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case customerIdentifier = "CUSTOMER_IDENTIFIER"
        case dimension = "DIMENSION"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Entitlement: AWSDecodableShape {
        /// The customer identifier is a handle to each unique customer in an application. Customer identifiers are obtained through the ResolveCustomer operation in AWS Marketplace Metering Service.
        public let customerIdentifier: String?
        /// The dimension for which the given entitlement applies. Dimensions represent categories of capacity in a product and are specified when the product is listed in AWS Marketplace.
        public let dimension: String?
        /// The expiration date represents the minimum date through which this entitlement is expected to remain valid. For contractual products listed on AWS Marketplace, the expiration date is the date at which the customer will renew or cancel their contract. Customers who are opting to renew their contract will still have entitlements with an expiration date.
        public let expirationDate: Date?
        /// The product code for which the given entitlement applies. Product codes are provided by AWS Marketplace when the product listing is created.
        public let productCode: String?
        /// The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.
        public let value: EntitlementValue?

        public init(customerIdentifier: String? = nil, dimension: String? = nil, expirationDate: Date? = nil, productCode: String? = nil, value: EntitlementValue? = nil) {
            self.customerIdentifier = customerIdentifier
            self.dimension = dimension
            self.expirationDate = expirationDate
            self.productCode = productCode
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case customerIdentifier = "CustomerIdentifier"
            case dimension = "Dimension"
            case expirationDate = "ExpirationDate"
            case productCode = "ProductCode"
            case value = "Value"
        }
    }

    public struct EntitlementValue: AWSDecodableShape {
        /// The BooleanValue field will be populated with a boolean value when the entitlement is a boolean type. Otherwise, the field will not be set.
        public let booleanValue: Bool?
        /// The DoubleValue field will be populated with a double value when the entitlement is a double type. Otherwise, the field will not be set.
        public let doubleValue: Double?
        /// The IntegerValue field will be populated with an integer value when the entitlement is an integer type. Otherwise, the field will not be set.
        public let integerValue: Int?
        /// The StringValue field will be populated with a string value when the entitlement is a string type. Otherwise, the field will not be set.
        public let stringValue: String?

        public init(booleanValue: Bool? = nil, doubleValue: Double? = nil, integerValue: Int? = nil, stringValue: String? = nil) {
            self.booleanValue = booleanValue
            self.doubleValue = doubleValue
            self.integerValue = integerValue
            self.stringValue = stringValue
        }

        private enum CodingKeys: String, CodingKey {
            case booleanValue = "BooleanValue"
            case doubleValue = "DoubleValue"
            case integerValue = "IntegerValue"
            case stringValue = "StringValue"
        }
    }

    public struct GetEntitlementsRequest: AWSEncodableShape {
        /// Filter is used to return entitlements for a specific customer or for a specific dimension. Filters are described as keys mapped to a lists of values. Filtered requests are unioned for each value in the value list, and then intersected for each filter key.
        public let filter: [GetEntitlementFilterName: [String]]?
        /// The maximum number of items to retrieve from the GetEntitlements operation. For pagination, use the NextToken field in subsequent calls to GetEntitlements.
        public let maxResults: Int?
        /// For paginated calls to GetEntitlements, pass the NextToken from the previous GetEntitlementsResult.
        public let nextToken: String?
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code will be provided by AWS Marketplace when the product listing is created.
        public let productCode: String

        public init(filter: [GetEntitlementFilterName: [String]]? = nil, maxResults: Int? = nil, nextToken: String? = nil, productCode: String) {
            self.filter = filter
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.productCode = productCode
        }

        public func validate(name: String) throws {
            try self.filter?.forEach {
                try validate($0.value, name: "filter[\"\($0.key)\"]", parent: name, min: 1)
            }
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 25)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^\\S+$")
            try self.validate(self.productCode, name: "productCode", parent: name, max: 255)
            try self.validate(self.productCode, name: "productCode", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case productCode = "ProductCode"
        }
    }

    public struct GetEntitlementsResult: AWSDecodableShape {
        /// The set of entitlements found through the GetEntitlements operation. If the result contains an empty set of entitlements, NextToken might still be present and should be used.
        public let entitlements: [Entitlement]?
        /// For paginated results, use NextToken in subsequent calls to GetEntitlements. If the result contains an empty set of entitlements, NextToken might still be present and should be used.
        public let nextToken: String?

        public init(entitlements: [Entitlement]? = nil, nextToken: String? = nil) {
            self.entitlements = entitlements
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case entitlements = "Entitlements"
            case nextToken = "NextToken"
        }
    }
}

// MARK: - Errors

/// Error enum for MarketplaceEntitlementService
public struct MarketplaceEntitlementServiceErrorType: AWSErrorType {
    enum Code: String {
        case internalServiceErrorException = "InternalServiceErrorException"
        case invalidParameterException = "InvalidParameterException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MarketplaceEntitlementService
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

    /// An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// One or more parameters in your request was invalid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The calls to the GetEntitlements API are throttled.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension MarketplaceEntitlementServiceErrorType: Equatable {
    public static func == (lhs: MarketplaceEntitlementServiceErrorType, rhs: MarketplaceEntitlementServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MarketplaceEntitlementServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
