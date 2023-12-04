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

extension SageMakerFeatureStoreRuntime {
    // MARK: Enums

    public enum DeletionMode: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case hardDelete = "HardDelete"
        case softDelete = "SoftDelete"
        public var description: String { return self.rawValue }
    }

    public enum ExpirationTimeResponse: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case disabled = "Disabled"
        case enabled = "Enabled"
        public var description: String { return self.rawValue }
    }

    public enum TargetStore: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case offlineStore = "OfflineStore"
        case onlineStore = "OnlineStore"
        public var description: String { return self.rawValue }
    }

    public enum TtlDurationUnit: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case days = "Days"
        case hours = "Hours"
        case minutes = "Minutes"
        case seconds = "Seconds"
        case weeks = "Weeks"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BatchGetRecordError: AWSDecodableShape {
        /// The error code of an error that has occurred when attempting to retrieve a batch of Records. For more information on errors, see Errors.
        public let errorCode: String?
        /// The error message of an error that has occurred when attempting to retrieve a record in the batch.
        public let errorMessage: String?
        /// The name of the feature group that the record belongs to.
        public let featureGroupName: String?
        /// The value for the RecordIdentifier in string format of a Record from a FeatureGroup that is causing an error when attempting to be retrieved.
        public let recordIdentifierValueAsString: String?

        public init(errorCode: String? = nil, errorMessage: String? = nil, featureGroupName: String? = nil, recordIdentifierValueAsString: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.featureGroupName = featureGroupName
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case featureGroupName = "FeatureGroupName"
            case recordIdentifierValueAsString = "RecordIdentifierValueAsString"
        }
    }

    public struct BatchGetRecordIdentifier: AWSEncodableShape & AWSDecodableShape {
        /// The name or Amazon Resource Name (ARN) of the FeatureGroup containing the records you are retrieving in a batch.
        public let featureGroupName: String?
        /// List of names of Features to be retrieved. If not specified, the latest value for all the Features are returned.
        public let featureNames: [String]?
        /// The value for a list of record identifiers in string format.
        public let recordIdentifiersValueAsString: [String]?

        public init(featureGroupName: String? = nil, featureNames: [String]? = nil, recordIdentifiersValueAsString: [String]? = nil) {
            self.featureGroupName = featureGroupName
            self.featureNames = featureNames
            self.recordIdentifiersValueAsString = recordIdentifiersValueAsString
        }

        public func validate(name: String) throws {
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 150)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:feature-group/)?([a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63})$")
            try self.featureNames?.forEach {
                try validate($0, name: "featureNames[]", parent: name, max: 64)
                try validate($0, name: "featureNames[]", parent: name, min: 1)
                try validate($0, name: "featureNames[]", parent: name, pattern: "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63}$")
            }
            try self.validate(self.featureNames, name: "featureNames", parent: name, min: 1)
            try self.recordIdentifiersValueAsString?.forEach {
                try validate($0, name: "recordIdentifiersValueAsString[]", parent: name, max: 358400)
                try validate($0, name: "recordIdentifiersValueAsString[]", parent: name, pattern: ".*")
            }
            try self.validate(self.recordIdentifiersValueAsString, name: "recordIdentifiersValueAsString", parent: name, max: 100)
            try self.validate(self.recordIdentifiersValueAsString, name: "recordIdentifiersValueAsString", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case featureGroupName = "FeatureGroupName"
            case featureNames = "FeatureNames"
            case recordIdentifiersValueAsString = "RecordIdentifiersValueAsString"
        }
    }

    public struct BatchGetRecordRequest: AWSEncodableShape {
        /// Parameter to request ExpiresAt in response. If Enabled, BatchGetRecord will return the value of ExpiresAt, if it is not null. If Disabled and null, BatchGetRecord will return null.
        public let expirationTimeResponse: ExpirationTimeResponse?
        /// A list containing the name or Amazon Resource Name (ARN) of the FeatureGroup, the list of names of Features to be retrieved, and the corresponding RecordIdentifier values as strings.
        public let identifiers: [BatchGetRecordIdentifier]?

        public init(expirationTimeResponse: ExpirationTimeResponse? = nil, identifiers: [BatchGetRecordIdentifier]? = nil) {
            self.expirationTimeResponse = expirationTimeResponse
            self.identifiers = identifiers
        }

        public func validate(name: String) throws {
            try self.identifiers?.forEach {
                try $0.validate(name: "\(name).identifiers[]")
            }
            try self.validate(self.identifiers, name: "identifiers", parent: name, max: 10)
            try self.validate(self.identifiers, name: "identifiers", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case expirationTimeResponse = "ExpirationTimeResponse"
            case identifiers = "Identifiers"
        }
    }

    public struct BatchGetRecordResponse: AWSDecodableShape {
        /// A list of errors that have occurred when retrieving a batch of Records.
        public let errors: [BatchGetRecordError]?
        /// A list of Records you requested to be retrieved in batch.
        public let records: [BatchGetRecordResultDetail]?
        /// A unprocessed list of FeatureGroup names, with their corresponding RecordIdentifier value, and Feature name.
        public let unprocessedIdentifiers: [BatchGetRecordIdentifier]?

        public init(errors: [BatchGetRecordError]? = nil, records: [BatchGetRecordResultDetail]? = nil, unprocessedIdentifiers: [BatchGetRecordIdentifier]? = nil) {
            self.errors = errors
            self.records = records
            self.unprocessedIdentifiers = unprocessedIdentifiers
        }

        private enum CodingKeys: String, CodingKey {
            case errors = "Errors"
            case records = "Records"
            case unprocessedIdentifiers = "UnprocessedIdentifiers"
        }
    }

    public struct BatchGetRecordResultDetail: AWSDecodableShape {
        /// The ExpiresAt ISO string of the requested record.
        public let expiresAt: String?
        /// The FeatureGroupName containing Records you retrieved in a batch.
        public let featureGroupName: String?
        /// The Record retrieved.
        public let record: [FeatureValue]?
        /// The value of the record identifier in string format.
        public let recordIdentifierValueAsString: String?

        public init(expiresAt: String? = nil, featureGroupName: String? = nil, record: [FeatureValue]? = nil, recordIdentifierValueAsString: String? = nil) {
            self.expiresAt = expiresAt
            self.featureGroupName = featureGroupName
            self.record = record
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
        }

        private enum CodingKeys: String, CodingKey {
            case expiresAt = "ExpiresAt"
            case featureGroupName = "FeatureGroupName"
            case record = "Record"
            case recordIdentifierValueAsString = "RecordIdentifierValueAsString"
        }
    }

    public struct DeleteRecordRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deletionMode", location: .querystring("DeletionMode")),
            AWSMemberEncoding(label: "eventTime", location: .querystring("EventTime")),
            AWSMemberEncoding(label: "featureGroupName", location: .uri("FeatureGroupName")),
            AWSMemberEncoding(label: "recordIdentifierValueAsString", location: .querystring("RecordIdentifierValueAsString")),
            AWSMemberEncoding(label: "targetStores", location: .querystring("TargetStores"))
        ]

        /// The name of the deletion mode for deleting the record. By default, the deletion mode is set to SoftDelete.
        public let deletionMode: DeletionMode?
        /// Timestamp indicating when the deletion event occurred. EventTime can be used to query data at a certain point in time.
        public let eventTime: String?
        /// The name or Amazon Resource Name (ARN) of the feature group to delete the record from.
        public let featureGroupName: String
        /// The value for the RecordIdentifier that uniquely identifies the record, in string format.
        public let recordIdentifierValueAsString: String?
        /// A list of stores from which you're deleting the record. By default, Feature Store deletes the record from all of the stores that you're using for the FeatureGroup.
        public let targetStores: [TargetStore]?

        public init(deletionMode: DeletionMode? = nil, eventTime: String? = nil, featureGroupName: String, recordIdentifierValueAsString: String? = nil, targetStores: [TargetStore]? = nil) {
            self.deletionMode = deletionMode
            self.eventTime = eventTime
            self.featureGroupName = featureGroupName
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
            self.targetStores = targetStores
        }

        public func validate(name: String) throws {
            try self.validate(self.eventTime, name: "eventTime", parent: name, max: 358400)
            try self.validate(self.eventTime, name: "eventTime", parent: name, pattern: ".*")
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 150)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:feature-group/)?([a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63})$")
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, max: 358400)
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, pattern: ".*")
            try self.validate(self.targetStores, name: "targetStores", parent: name, max: 2)
            try self.validate(self.targetStores, name: "targetStores", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct FeatureValue: AWSEncodableShape & AWSDecodableShape {
        /// The name of a feature that a feature value corresponds to.
        public let featureName: String?
        /// The value in string format associated with a feature. Used when your CollectionType is None. Note that features types can be String, Integral, or Fractional. This value represents all three types as a string.
        public let valueAsString: String?
        /// The list of values in string format associated with a feature. Used when your CollectionType is a List, Set, or Vector. Note that features types can be String, Integral, or Fractional. These values represents all three types as a string.
        public let valueAsStringList: [String]?

        public init(featureName: String? = nil, valueAsString: String? = nil, valueAsStringList: [String]? = nil) {
            self.featureName = featureName
            self.valueAsString = valueAsString
            self.valueAsStringList = valueAsStringList
        }

        public func validate(name: String) throws {
            try self.validate(self.featureName, name: "featureName", parent: name, max: 64)
            try self.validate(self.featureName, name: "featureName", parent: name, min: 1)
            try self.validate(self.featureName, name: "featureName", parent: name, pattern: "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63}$")
            try self.validate(self.valueAsString, name: "valueAsString", parent: name, max: 358400)
            try self.validate(self.valueAsString, name: "valueAsString", parent: name, pattern: ".*")
            try self.valueAsStringList?.forEach {
                try validate($0, name: "valueAsStringList[]", parent: name, max: 358400)
                try validate($0, name: "valueAsStringList[]", parent: name, pattern: ".*")
            }
            try self.validate(self.valueAsStringList, name: "valueAsStringList", parent: name, max: 358400)
        }

        private enum CodingKeys: String, CodingKey {
            case featureName = "FeatureName"
            case valueAsString = "ValueAsString"
            case valueAsStringList = "ValueAsStringList"
        }
    }

    public struct GetRecordRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "expirationTimeResponse", location: .querystring("ExpirationTimeResponse")),
            AWSMemberEncoding(label: "featureGroupName", location: .uri("FeatureGroupName")),
            AWSMemberEncoding(label: "featureNames", location: .querystring("FeatureName")),
            AWSMemberEncoding(label: "recordIdentifierValueAsString", location: .querystring("RecordIdentifierValueAsString"))
        ]

        /// Parameter to request ExpiresAt in response. If Enabled, GetRecord will return the value of ExpiresAt, if it is not null. If Disabled and null, GetRecord will return null.
        public let expirationTimeResponse: ExpirationTimeResponse?
        /// The name or Amazon Resource Name (ARN) of the feature group from which you want to retrieve a record.
        public let featureGroupName: String
        /// List of names of Features to be retrieved. If not specified, the latest value for all the Features are returned.
        public let featureNames: [String]?
        /// The value that corresponds to RecordIdentifier type and uniquely identifies the record in the FeatureGroup.
        public let recordIdentifierValueAsString: String?

        public init(expirationTimeResponse: ExpirationTimeResponse? = nil, featureGroupName: String, featureNames: [String]? = nil, recordIdentifierValueAsString: String? = nil) {
            self.expirationTimeResponse = expirationTimeResponse
            self.featureGroupName = featureGroupName
            self.featureNames = featureNames
            self.recordIdentifierValueAsString = recordIdentifierValueAsString
        }

        public func validate(name: String) throws {
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 150)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:feature-group/)?([a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63})$")
            try self.featureNames?.forEach {
                try validate($0, name: "featureNames[]", parent: name, max: 64)
                try validate($0, name: "featureNames[]", parent: name, min: 1)
                try validate($0, name: "featureNames[]", parent: name, pattern: "^[a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63}$")
            }
            try self.validate(self.featureNames, name: "featureNames", parent: name, min: 1)
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, max: 358400)
            try self.validate(self.recordIdentifierValueAsString, name: "recordIdentifierValueAsString", parent: name, pattern: ".*")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRecordResponse: AWSDecodableShape {
        /// The ExpiresAt ISO string of the requested record.
        public let expiresAt: String?
        /// The record you requested. A list of FeatureValues.
        public let record: [FeatureValue]?

        public init(expiresAt: String? = nil, record: [FeatureValue]? = nil) {
            self.expiresAt = expiresAt
            self.record = record
        }

        private enum CodingKeys: String, CodingKey {
            case expiresAt = "ExpiresAt"
            case record = "Record"
        }
    }

    public struct PutRecordRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "featureGroupName", location: .uri("FeatureGroupName"))
        ]

        /// The name or Amazon Resource Name (ARN) of the feature group that you want to insert the record into.
        public let featureGroupName: String
        /// List of FeatureValues to be inserted. This will be a full over-write. If you only want to update few of the feature values, do the following:   Use GetRecord to retrieve the latest record.   Update the record returned from GetRecord.    Use PutRecord to update feature values.
        public let record: [FeatureValue]?
        /// A list of stores to which you're adding the record. By default, Feature Store adds the record to all of the stores that you're using for the FeatureGroup.
        public let targetStores: [TargetStore]?
        /// Time to live duration, where the record is hard deleted after the expiration time is reached; ExpiresAt = EventTime + TtlDuration. For information on HardDelete, see the DeleteRecord API in the Amazon SageMaker API Reference guide.
        public let ttlDuration: TtlDuration?

        public init(featureGroupName: String, record: [FeatureValue]? = nil, targetStores: [TargetStore]? = nil, ttlDuration: TtlDuration? = nil) {
            self.featureGroupName = featureGroupName
            self.record = record
            self.targetStores = targetStores
            self.ttlDuration = ttlDuration
        }

        public func validate(name: String) throws {
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, max: 150)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, min: 1)
            try self.validate(self.featureGroupName, name: "featureGroupName", parent: name, pattern: "^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:feature-group/)?([a-zA-Z0-9]([-_]*[a-zA-Z0-9]){0,63})$")
            try self.record?.forEach {
                try $0.validate(name: "\(name).record[]")
            }
            try self.validate(self.record, name: "record", parent: name, min: 1)
            try self.validate(self.targetStores, name: "targetStores", parent: name, max: 2)
            try self.validate(self.targetStores, name: "targetStores", parent: name, min: 1)
            try self.ttlDuration?.validate(name: "\(name).ttlDuration")
        }

        private enum CodingKeys: String, CodingKey {
            case record = "Record"
            case targetStores = "TargetStores"
            case ttlDuration = "TtlDuration"
        }
    }

    public struct TtlDuration: AWSEncodableShape {
        ///  TtlDuration time unit.
        public let unit: TtlDurationUnit?
        ///  TtlDuration time value.
        public let value: Int?

        public init(unit: TtlDurationUnit? = nil, value: Int? = nil) {
            self.unit = unit
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.value, name: "value", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case unit = "Unit"
            case value = "Value"
        }
    }
}

// MARK: - Errors

/// Error enum for SageMakerFeatureStoreRuntime
public struct SageMakerFeatureStoreRuntimeErrorType: AWSErrorType {
    enum Code: String {
        case accessForbidden = "AccessForbidden"
        case internalFailure = "InternalFailure"
        case resourceNotFound = "ResourceNotFound"
        case serviceUnavailable = "ServiceUnavailable"
        case validationError = "ValidationError"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SageMakerFeatureStoreRuntime
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

    /// You do not have permission to perform an action.
    public static var accessForbidden: Self { .init(.accessForbidden) }
    /// An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public static var internalFailure: Self { .init(.internalFailure) }
    /// A resource that is required to perform an action was not found.
    public static var resourceNotFound: Self { .init(.resourceNotFound) }
    /// The service is currently unavailable.
    public static var serviceUnavailable: Self { .init(.serviceUnavailable) }
    /// There was an error validating your request.
    public static var validationError: Self { .init(.validationError) }
}

extension SageMakerFeatureStoreRuntimeErrorType: Equatable {
    public static func == (lhs: SageMakerFeatureStoreRuntimeErrorType, rhs: SageMakerFeatureStoreRuntimeErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SageMakerFeatureStoreRuntimeErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
