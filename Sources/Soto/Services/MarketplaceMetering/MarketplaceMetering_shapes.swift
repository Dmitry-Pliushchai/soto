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

extension MarketplaceMetering {
    // MARK: Enums

    public enum UsageRecordResultStatus: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case customerNotSubscribed = "CustomerNotSubscribed"
        case duplicateRecord = "DuplicateRecord"
        case success = "Success"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BatchMeterUsageRequest: AWSEncodableShape {
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String
        /// The set of UsageRecords to submit. BatchMeterUsage accepts up to 25 UsageRecords at a time.
        public let usageRecords: [UsageRecord]

        public init(productCode: String, usageRecords: [UsageRecord]) {
            self.productCode = productCode
            self.usageRecords = usageRecords
        }

        public func validate(name: String) throws {
            try self.validate(self.productCode, name: "productCode", parent: name, max: 255)
            try self.validate(self.productCode, name: "productCode", parent: name, min: 1)
            try self.validate(self.productCode, name: "productCode", parent: name, pattern: "^[-a-zA-Z0-9/=:_.@]*$")
            try self.usageRecords.forEach {
                try $0.validate(name: "\(name).usageRecords[]")
            }
            try self.validate(self.usageRecords, name: "usageRecords", parent: name, max: 25)
        }

        private enum CodingKeys: String, CodingKey {
            case productCode = "ProductCode"
            case usageRecords = "UsageRecords"
        }
    }

    public struct BatchMeterUsageResult: AWSDecodableShape {
        /// Contains all UsageRecords processed by BatchMeterUsage. These records were either honored by AWS Marketplace Metering Service or were invalid. Invalid records should be fixed before being resubmitted.
        public let results: [UsageRecordResult]?
        /// Contains all UsageRecords that were not processed by BatchMeterUsage. This is a list of UsageRecords. You can retry the failed request by making another BatchMeterUsage call with this list as input in the BatchMeterUsageRequest.
        public let unprocessedRecords: [UsageRecord]?

        public init(results: [UsageRecordResult]? = nil, unprocessedRecords: [UsageRecord]? = nil) {
            self.results = results
            self.unprocessedRecords = unprocessedRecords
        }

        private enum CodingKeys: String, CodingKey {
            case results = "Results"
            case unprocessedRecords = "UnprocessedRecords"
        }
    }

    public struct MeterUsageRequest: AWSEncodableShape {
        /// Checks whether you have the permissions required for the action, but does not make the request. If you have the permissions, the request returns DryRunOperation; otherwise, it returns UnauthorizedException. Defaults to false if not specified.
        public let dryRun: Bool?
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String
        /// Timestamp, in UTC, for which the usage is being reported. Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage.
        public let timestamp: Date
        /// The set of UsageAllocations to submit. The sum of all UsageAllocation quantities must equal the UsageQuantity of the MeterUsage request, and each UsageAllocation must have a unique set of tags (include no tags).
        public let usageAllocations: [UsageAllocation]?
        /// It will be one of the fcp dimension name provided during the publishing of the product.
        public let usageDimension: String
        /// Consumption value for the hour. Defaults to 0 if not specified.
        public let usageQuantity: Int?

        public init(dryRun: Bool? = nil, productCode: String, timestamp: Date, usageAllocations: [UsageAllocation]? = nil, usageDimension: String, usageQuantity: Int? = nil) {
            self.dryRun = dryRun
            self.productCode = productCode
            self.timestamp = timestamp
            self.usageAllocations = usageAllocations
            self.usageDimension = usageDimension
            self.usageQuantity = usageQuantity
        }

        public func validate(name: String) throws {
            try self.validate(self.productCode, name: "productCode", parent: name, max: 255)
            try self.validate(self.productCode, name: "productCode", parent: name, min: 1)
            try self.validate(self.productCode, name: "productCode", parent: name, pattern: "^[-a-zA-Z0-9/=:_.@]*$")
            try self.usageAllocations?.forEach {
                try $0.validate(name: "\(name).usageAllocations[]")
            }
            try self.validate(self.usageAllocations, name: "usageAllocations", parent: name, max: 2500)
            try self.validate(self.usageAllocations, name: "usageAllocations", parent: name, min: 1)
            try self.validate(self.usageDimension, name: "usageDimension", parent: name, max: 255)
            try self.validate(self.usageDimension, name: "usageDimension", parent: name, min: 1)
            try self.validate(self.usageDimension, name: "usageDimension", parent: name, pattern: "^[\\s\\S]+$")
            try self.validate(self.usageQuantity, name: "usageQuantity", parent: name, max: 2147483647)
            try self.validate(self.usageQuantity, name: "usageQuantity", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case productCode = "ProductCode"
            case timestamp = "Timestamp"
            case usageAllocations = "UsageAllocations"
            case usageDimension = "UsageDimension"
            case usageQuantity = "UsageQuantity"
        }
    }

    public struct MeterUsageResult: AWSDecodableShape {
        /// Metering record id.
        public let meteringRecordId: String?

        public init(meteringRecordId: String? = nil) {
            self.meteringRecordId = meteringRecordId
        }

        private enum CodingKeys: String, CodingKey {
            case meteringRecordId = "MeteringRecordId"
        }
    }

    public struct RegisterUsageRequest: AWSEncodableShape {
        /// (Optional) To scope down the registration to a specific running software instance and guard against replay attacks.
        public let nonce: String?
        /// Product code is used to uniquely identify a product in AWS Marketplace. The product code should be the same as the one used during the publishing of a new product.
        public let productCode: String
        /// Public Key Version provided by AWS Marketplace
        public let publicKeyVersion: Int

        public init(nonce: String? = nil, productCode: String, publicKeyVersion: Int) {
            self.nonce = nonce
            self.productCode = productCode
            self.publicKeyVersion = publicKeyVersion
        }

        public func validate(name: String) throws {
            try self.validate(self.nonce, name: "nonce", parent: name, max: 255)
            try self.validate(self.nonce, name: "nonce", parent: name, pattern: "^[\\s\\S]*$")
            try self.validate(self.productCode, name: "productCode", parent: name, max: 255)
            try self.validate(self.productCode, name: "productCode", parent: name, min: 1)
            try self.validate(self.productCode, name: "productCode", parent: name, pattern: "^[-a-zA-Z0-9/=:_.@]*$")
            try self.validate(self.publicKeyVersion, name: "publicKeyVersion", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case nonce = "Nonce"
            case productCode = "ProductCode"
            case publicKeyVersion = "PublicKeyVersion"
        }
    }

    public struct RegisterUsageResult: AWSDecodableShape {
        /// (Optional) Only included when public key version has expired
        public let publicKeyRotationTimestamp: Date?
        /// JWT Token
        public let signature: String?

        public init(publicKeyRotationTimestamp: Date? = nil, signature: String? = nil) {
            self.publicKeyRotationTimestamp = publicKeyRotationTimestamp
            self.signature = signature
        }

        private enum CodingKeys: String, CodingKey {
            case publicKeyRotationTimestamp = "PublicKeyRotationTimestamp"
            case signature = "Signature"
        }
    }

    public struct ResolveCustomerRequest: AWSEncodableShape {
        /// When a buyer visits your website during the registration process, the buyer submits a registration token through the browser. The registration token is resolved to obtain a CustomerIdentifier along with the CustomerAWSAccountId and ProductCode.
        public let registrationToken: String

        public init(registrationToken: String) {
            self.registrationToken = registrationToken
        }

        public func validate(name: String) throws {
            try self.validate(self.registrationToken, name: "registrationToken", parent: name, pattern: "^[\\s\\S]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case registrationToken = "RegistrationToken"
        }
    }

    public struct ResolveCustomerResult: AWSDecodableShape {
        /// The CustomerAWSAccountId provides the AWS account ID associated with the CustomerIdentifier for the individual customer.
        public let customerAWSAccountId: String?
        /// The CustomerIdentifier is used to identify an individual customer in your application. Calls to BatchMeterUsage require CustomerIdentifiers for each UsageRecord.
        public let customerIdentifier: String?
        /// The product code is returned to confirm that the buyer is registering for your product. Subsequent BatchMeterUsage calls should be made using this product code.
        public let productCode: String?

        public init(customerAWSAccountId: String? = nil, customerIdentifier: String? = nil, productCode: String? = nil) {
            self.customerAWSAccountId = customerAWSAccountId
            self.customerIdentifier = customerIdentifier
            self.productCode = productCode
        }

        private enum CodingKeys: String, CodingKey {
            case customerAWSAccountId = "CustomerAWSAccountId"
            case customerIdentifier = "CustomerIdentifier"
            case productCode = "ProductCode"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// One part of a key-value pair that makes up a tag. A key is a label that acts like a category for the specific tag values.
        public let key: String
        /// One part of a key-value pair that makes up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 100)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "^[a-zA-Z0-9+ -=._:\\/@]+$")
            try self.validate(self.value, name: "value", parent: name, max: 256)
            try self.validate(self.value, name: "value", parent: name, min: 1)
            try self.validate(self.value, name: "value", parent: name, pattern: "^[a-zA-Z0-9+ -=._:\\/@]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct UsageAllocation: AWSEncodableShape & AWSDecodableShape {
        /// The total quantity allocated to this bucket of usage.
        public let allocatedUsageQuantity: Int
        /// The set of tags that define the bucket of usage. For the bucket of items with no tags, this parameter can be left out.
        public let tags: [Tag]?

        public init(allocatedUsageQuantity: Int, tags: [Tag]? = nil) {
            self.allocatedUsageQuantity = allocatedUsageQuantity
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.allocatedUsageQuantity, name: "allocatedUsageQuantity", parent: name, max: 2147483647)
            try self.validate(self.allocatedUsageQuantity, name: "allocatedUsageQuantity", parent: name, min: 0)
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 5)
            try self.validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case allocatedUsageQuantity = "AllocatedUsageQuantity"
            case tags = "Tags"
        }
    }

    public struct UsageRecord: AWSEncodableShape & AWSDecodableShape {
        /// The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
        public let customerIdentifier: String
        /// During the process of registering a product on AWS Marketplace, dimensions are specified. These represent different units of value in your application.
        public let dimension: String
        /// The quantity of usage consumed by the customer for the given dimension and time. Defaults to 0 if not specified.
        public let quantity: Int?
        /// Timestamp, in UTC, for which the usage is being reported. Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage.
        public let timestamp: Date
        /// The set of UsageAllocations to submit. The sum of all UsageAllocation quantities must equal the Quantity of the UsageRecord.
        public let usageAllocations: [UsageAllocation]?

        public init(customerIdentifier: String, dimension: String, quantity: Int? = nil, timestamp: Date, usageAllocations: [UsageAllocation]? = nil) {
            self.customerIdentifier = customerIdentifier
            self.dimension = dimension
            self.quantity = quantity
            self.timestamp = timestamp
            self.usageAllocations = usageAllocations
        }

        public func validate(name: String) throws {
            try self.validate(self.customerIdentifier, name: "customerIdentifier", parent: name, max: 255)
            try self.validate(self.customerIdentifier, name: "customerIdentifier", parent: name, min: 1)
            try self.validate(self.customerIdentifier, name: "customerIdentifier", parent: name, pattern: "^[\\s\\S]+$")
            try self.validate(self.dimension, name: "dimension", parent: name, max: 255)
            try self.validate(self.dimension, name: "dimension", parent: name, min: 1)
            try self.validate(self.dimension, name: "dimension", parent: name, pattern: "^[\\s\\S]+$")
            try self.validate(self.quantity, name: "quantity", parent: name, max: 2147483647)
            try self.validate(self.quantity, name: "quantity", parent: name, min: 0)
            try self.usageAllocations?.forEach {
                try $0.validate(name: "\(name).usageAllocations[]")
            }
            try self.validate(self.usageAllocations, name: "usageAllocations", parent: name, max: 2500)
            try self.validate(self.usageAllocations, name: "usageAllocations", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case customerIdentifier = "CustomerIdentifier"
            case dimension = "Dimension"
            case quantity = "Quantity"
            case timestamp = "Timestamp"
            case usageAllocations = "UsageAllocations"
        }
    }

    public struct UsageRecordResult: AWSDecodableShape {
        /// The MeteringRecordId is a unique identifier for this metering event.
        public let meteringRecordId: String?
        /// The UsageRecordResult Status indicates the status of an individual UsageRecord processed by BatchMeterUsage.    Success- The UsageRecord was accepted and honored by BatchMeterUsage.    CustomerNotSubscribed- The CustomerIdentifier specified is not able to use your product. The UsageRecord was not honored. There are three causes for this result:   The customer identifier is invalid.   The customer identifier provided in the metering record does not have an active agreement or subscription with this product. Future UsageRecords for this customer will fail until the customer subscribes to your product.   The customer's AWS account was suspended.      DuplicateRecord- Indicates that the UsageRecord was invalid and not honored. A previously metered UsageRecord had the same customer, dimension, and time, but a different quantity.
        public let status: UsageRecordResultStatus?
        /// The UsageRecord that was part of the BatchMeterUsage request.
        public let usageRecord: UsageRecord?

        public init(meteringRecordId: String? = nil, status: UsageRecordResultStatus? = nil, usageRecord: UsageRecord? = nil) {
            self.meteringRecordId = meteringRecordId
            self.status = status
            self.usageRecord = usageRecord
        }

        private enum CodingKeys: String, CodingKey {
            case meteringRecordId = "MeteringRecordId"
            case status = "Status"
            case usageRecord = "UsageRecord"
        }
    }
}

// MARK: - Errors

/// Error enum for MarketplaceMetering
public struct MarketplaceMeteringErrorType: AWSErrorType {
    enum Code: String {
        case customerNotEntitledException = "CustomerNotEntitledException"
        case disabledApiException = "DisabledApiException"
        case duplicateRequestException = "DuplicateRequestException"
        case expiredTokenException = "ExpiredTokenException"
        case internalServiceErrorException = "InternalServiceErrorException"
        case invalidCustomerIdentifierException = "InvalidCustomerIdentifierException"
        case invalidEndpointRegionException = "InvalidEndpointRegionException"
        case invalidProductCodeException = "InvalidProductCodeException"
        case invalidPublicKeyVersionException = "InvalidPublicKeyVersionException"
        case invalidRegionException = "InvalidRegionException"
        case invalidTagException = "InvalidTagException"
        case invalidTokenException = "InvalidTokenException"
        case invalidUsageAllocationsException = "InvalidUsageAllocationsException"
        case invalidUsageDimensionException = "InvalidUsageDimensionException"
        case platformNotSupportedException = "PlatformNotSupportedException"
        case throttlingException = "ThrottlingException"
        case timestampOutOfBoundsException = "TimestampOutOfBoundsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MarketplaceMetering
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

    /// Exception thrown when the customer does not have a valid subscription for the product.
    public static var customerNotEntitledException: Self { .init(.customerNotEntitledException) }
    /// The API is disabled in the Region.
    public static var disabledApiException: Self { .init(.disabledApiException) }
    /// A metering record has already been emitted by the same EC2 instance, ECS task, or EKS pod for the given {usageDimension, timestamp} with a different usageQuantity.
    public static var duplicateRequestException: Self { .init(.duplicateRequestException) }
    /// The submitted registration token has expired. This can happen if the buyer's browser takes too long to redirect to your page, the buyer has resubmitted the registration token, or your application has held on to the registration token for too long. Your SaaS registration website should redeem this token as soon as it is submitted by the buyer's browser.
    public static var expiredTokenException: Self { .init(.expiredTokenException) }
    /// An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// You have metered usage for a CustomerIdentifier that does not exist.
    public static var invalidCustomerIdentifierException: Self { .init(.invalidCustomerIdentifierException) }
    /// The endpoint being called is in a AWS Region different from your EC2 instance, ECS task, or EKS pod. The Region of the Metering Service endpoint and the AWS Region of the resource must match.
    public static var invalidEndpointRegionException: Self { .init(.invalidEndpointRegionException) }
    /// The product code passed does not match the product code used for publishing the product.
    public static var invalidProductCodeException: Self { .init(.invalidProductCodeException) }
    /// Public Key version is invalid.
    public static var invalidPublicKeyVersionException: Self { .init(.invalidPublicKeyVersionException) }
    ///  RegisterUsage must be called in the same AWS Region the ECS task was launched in. This prevents a container from hardcoding a Region (e.g. withRegion(“us-east-1”) when calling RegisterUsage.
    public static var invalidRegionException: Self { .init(.invalidRegionException) }
    /// The tag is invalid, or the number of tags is greater than 5.
    public static var invalidTagException: Self { .init(.invalidTagException) }
    /// Registration token is invalid.
    public static var invalidTokenException: Self { .init(.invalidTokenException) }
    /// The usage allocation objects are invalid, or the number of allocations is greater than 500 for a single usage record.
    public static var invalidUsageAllocationsException: Self { .init(.invalidUsageAllocationsException) }
    /// The usage dimension does not match one of the UsageDimensions associated with products.
    public static var invalidUsageDimensionException: Self { .init(.invalidUsageDimensionException) }
    /// AWS Marketplace does not support metering usage from the underlying platform. Currently, Amazon ECS, Amazon EKS, and AWS Fargate are supported.
    public static var platformNotSupportedException: Self { .init(.platformNotSupportedException) }
    /// The calls to the API are throttled.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The timestamp value passed in the UsageRecord is out of allowed range. For BatchMeterUsage, if any of the records are outside of the allowed range, the entire batch is not processed. You must remove invalid records and try again.
    public static var timestampOutOfBoundsException: Self { .init(.timestampOutOfBoundsException) }
}

extension MarketplaceMeteringErrorType: Equatable {
    public static func == (lhs: MarketplaceMeteringErrorType, rhs: MarketplaceMeteringErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MarketplaceMeteringErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
