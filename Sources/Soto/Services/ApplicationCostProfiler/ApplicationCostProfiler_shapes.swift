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

extension ApplicationCostProfiler {
    // MARK: Enums

    public enum Format: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case csv = "CSV"
        case parquet = "PARQUET"
        public var description: String { return self.rawValue }
    }

    public enum ReportFrequency: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case all = "ALL"
        case daily = "DAILY"
        case monthly = "MONTHLY"
        public var description: String { return self.rawValue }
    }

    public enum S3BucketRegion: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case afSouth1 = "af-south-1"
        case apEast1 = "ap-east-1"
        case euSouth1 = "eu-south-1"
        case meSouth1 = "me-south-1"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DeleteReportDefinitionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "reportId", location: .uri("reportId"))
        ]

        /// Required. ID of the report to delete.
        public let reportId: String

        public init(reportId: String) {
            self.reportId = reportId
        }

        public func validate(name: String) throws {
            try self.validate(self.reportId, name: "reportId", parent: name, max: 255)
            try self.validate(self.reportId, name: "reportId", parent: name, min: 1)
            try self.validate(self.reportId, name: "reportId", parent: name, pattern: "^[0-9A-Za-z\\.\\-_]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteReportDefinitionResult: AWSDecodableShape {
        /// ID of the report that was deleted.
        public let reportId: String?

        public init(reportId: String? = nil) {
            self.reportId = reportId
        }

        private enum CodingKeys: String, CodingKey {
            case reportId = "reportId"
        }
    }

    public struct GetReportDefinitionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "reportId", location: .uri("reportId"))
        ]

        /// ID of the report to retrieve.
        public let reportId: String

        public init(reportId: String) {
            self.reportId = reportId
        }

        public func validate(name: String) throws {
            try self.validate(self.reportId, name: "reportId", parent: name, max: 255)
            try self.validate(self.reportId, name: "reportId", parent: name, min: 1)
            try self.validate(self.reportId, name: "reportId", parent: name, pattern: "^[0-9A-Za-z\\.\\-_]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetReportDefinitionResult: AWSDecodableShape {
        /// Timestamp (milliseconds) when this report definition was created.
        public let createdAt: Date
        /// Amazon Simple Storage Service (Amazon S3) location where the report is uploaded.
        public let destinationS3Location: S3Location
        /// Format of the generated report.
        public let format: Format
        /// Timestamp (milliseconds) when this report definition was last updated.
        public let lastUpdated: Date
        /// Description of the report.
        public let reportDescription: String
        /// Cadence used to generate the report.
        public let reportFrequency: ReportFrequency
        /// ID of the report retrieved.
        public let reportId: String

        public init(createdAt: Date, destinationS3Location: S3Location, format: Format, lastUpdated: Date, reportDescription: String, reportFrequency: ReportFrequency, reportId: String) {
            self.createdAt = createdAt
            self.destinationS3Location = destinationS3Location
            self.format = format
            self.lastUpdated = lastUpdated
            self.reportDescription = reportDescription
            self.reportFrequency = reportFrequency
            self.reportId = reportId
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt = "createdAt"
            case destinationS3Location = "destinationS3Location"
            case format = "format"
            case lastUpdated = "lastUpdated"
            case reportDescription = "reportDescription"
            case reportFrequency = "reportFrequency"
            case reportId = "reportId"
        }
    }

    public struct ImportApplicationUsageRequest: AWSEncodableShape {
        /// Amazon S3 location to import application usage data from.
        public let sourceS3Location: SourceS3Location

        public init(sourceS3Location: SourceS3Location) {
            self.sourceS3Location = sourceS3Location
        }

        public func validate(name: String) throws {
            try self.sourceS3Location.validate(name: "\(name).sourceS3Location")
        }

        private enum CodingKeys: String, CodingKey {
            case sourceS3Location = "sourceS3Location"
        }
    }

    public struct ImportApplicationUsageResult: AWSDecodableShape {
        /// ID of the import request.
        public let importId: String

        public init(importId: String) {
            self.importId = importId
        }

        private enum CodingKeys: String, CodingKey {
            case importId = "importId"
        }
    }

    public struct ListReportDefinitionsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The maximum number of results to return.
        public let maxResults: Int?
        /// The token value from a previous call to access the next page of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 102400)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListReportDefinitionsResult: AWSDecodableShape {
        /// The value of the next token, if it exists. Null if there are no more results.
        public let nextToken: String?
        /// The retrieved reports.
        public let reportDefinitions: [ReportDefinition]?

        public init(nextToken: String? = nil, reportDefinitions: [ReportDefinition]? = nil) {
            self.nextToken = nextToken
            self.reportDefinitions = reportDefinitions
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case reportDefinitions = "reportDefinitions"
        }
    }

    public struct PutReportDefinitionRequest: AWSEncodableShape {
        /// Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the report.
        public let destinationS3Location: S3Location
        /// Required. The format to use for the generated report.
        public let format: Format
        /// Required. Description of the report.
        public let reportDescription: String
        /// Required. The cadence to generate the report.
        public let reportFrequency: ReportFrequency
        /// Required. ID of the report. You can choose any valid string matching the pattern for the ID.
        public let reportId: String

        public init(destinationS3Location: S3Location, format: Format, reportDescription: String, reportFrequency: ReportFrequency, reportId: String) {
            self.destinationS3Location = destinationS3Location
            self.format = format
            self.reportDescription = reportDescription
            self.reportFrequency = reportFrequency
            self.reportId = reportId
        }

        public func validate(name: String) throws {
            try self.destinationS3Location.validate(name: "\(name).destinationS3Location")
            try self.validate(self.reportDescription, name: "reportDescription", parent: name, max: 1024)
            try self.validate(self.reportDescription, name: "reportDescription", parent: name, min: 1)
            try self.validate(self.reportDescription, name: "reportDescription", parent: name, pattern: "\\S")
            try self.validate(self.reportId, name: "reportId", parent: name, max: 255)
            try self.validate(self.reportId, name: "reportId", parent: name, min: 1)
            try self.validate(self.reportId, name: "reportId", parent: name, pattern: "^[0-9A-Za-z\\.\\-_]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case destinationS3Location = "destinationS3Location"
            case format = "format"
            case reportDescription = "reportDescription"
            case reportFrequency = "reportFrequency"
            case reportId = "reportId"
        }
    }

    public struct PutReportDefinitionResult: AWSDecodableShape {
        /// ID of the report.
        public let reportId: String?

        public init(reportId: String? = nil) {
            self.reportId = reportId
        }

        private enum CodingKeys: String, CodingKey {
            case reportId = "reportId"
        }
    }

    public struct ReportDefinition: AWSDecodableShape {
        /// Timestamp (milliseconds) when this report definition was created.
        public let createdAt: Date?
        /// The location in Amazon Simple Storage Service (Amazon S3) the reports should be saved to.
        public let destinationS3Location: S3Location?
        /// The format used for the generated reports.
        public let format: Format?
        /// Timestamp (milliseconds) when this report definition was last updated.
        public let lastUpdatedAt: Date?
        /// Description of the report
        public let reportDescription: String?
        /// The cadence at which the report is generated.
        public let reportFrequency: ReportFrequency?
        /// The ID of the report.
        public let reportId: String?

        public init(createdAt: Date? = nil, destinationS3Location: S3Location? = nil, format: Format? = nil, lastUpdatedAt: Date? = nil, reportDescription: String? = nil, reportFrequency: ReportFrequency? = nil, reportId: String? = nil) {
            self.createdAt = createdAt
            self.destinationS3Location = destinationS3Location
            self.format = format
            self.lastUpdatedAt = lastUpdatedAt
            self.reportDescription = reportDescription
            self.reportFrequency = reportFrequency
            self.reportId = reportId
        }

        private enum CodingKeys: String, CodingKey {
            case createdAt = "createdAt"
            case destinationS3Location = "destinationS3Location"
            case format = "format"
            case lastUpdatedAt = "lastUpdatedAt"
            case reportDescription = "reportDescription"
            case reportFrequency = "reportFrequency"
            case reportId = "reportId"
        }
    }

    public struct S3Location: AWSEncodableShape & AWSDecodableShape {
        /// Name of the S3 bucket.
        public let bucket: String
        /// Prefix for the location to write to.
        public let prefix: String

        public init(bucket: String, prefix: String) {
            self.bucket = bucket
            self.prefix = prefix
        }

        public func validate(name: String) throws {
            try self.validate(self.bucket, name: "bucket", parent: name, max: 63)
            try self.validate(self.bucket, name: "bucket", parent: name, min: 3)
            try self.validate(self.bucket, name: "bucket", parent: name, pattern: "^(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)$")
            try self.validate(self.prefix, name: "prefix", parent: name, max: 512)
            try self.validate(self.prefix, name: "prefix", parent: name, min: 1)
            try self.validate(self.prefix, name: "prefix", parent: name, pattern: "\\S")
        }

        private enum CodingKeys: String, CodingKey {
            case bucket = "bucket"
            case prefix = "prefix"
        }
    }

    public struct SourceS3Location: AWSEncodableShape {
        /// Name of the bucket.
        public let bucket: String
        /// Key of the object.
        public let key: String
        /// Region of the bucket. Only required for Regions that are disabled by default. For more infomration about Regions that are disabled by default, see  Enabling a Region in the AWS General Reference guide.
        public let region: S3BucketRegion?

        public init(bucket: String, key: String, region: S3BucketRegion? = nil) {
            self.bucket = bucket
            self.key = key
            self.region = region
        }

        public func validate(name: String) throws {
            try self.validate(self.bucket, name: "bucket", parent: name, max: 63)
            try self.validate(self.bucket, name: "bucket", parent: name, min: 3)
            try self.validate(self.bucket, name: "bucket", parent: name, pattern: "^(?=^.{3,63}$)(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)$")
            try self.validate(self.key, name: "key", parent: name, max: 512)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "\\S")
        }

        private enum CodingKeys: String, CodingKey {
            case bucket = "bucket"
            case key = "key"
            case region = "region"
        }
    }

    public struct UpdateReportDefinitionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "reportId", location: .uri("reportId"))
        ]

        /// Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the report.
        public let destinationS3Location: S3Location
        /// Required. The format to use for the generated report.
        public let format: Format
        /// Required. Description of the report.
        public let reportDescription: String
        /// Required. The cadence to generate the report.
        public let reportFrequency: ReportFrequency
        /// Required. ID of the report to update.
        public let reportId: String

        public init(destinationS3Location: S3Location, format: Format, reportDescription: String, reportFrequency: ReportFrequency, reportId: String) {
            self.destinationS3Location = destinationS3Location
            self.format = format
            self.reportDescription = reportDescription
            self.reportFrequency = reportFrequency
            self.reportId = reportId
        }

        public func validate(name: String) throws {
            try self.destinationS3Location.validate(name: "\(name).destinationS3Location")
            try self.validate(self.reportDescription, name: "reportDescription", parent: name, max: 1024)
            try self.validate(self.reportDescription, name: "reportDescription", parent: name, min: 1)
            try self.validate(self.reportDescription, name: "reportDescription", parent: name, pattern: "\\S")
            try self.validate(self.reportId, name: "reportId", parent: name, max: 255)
            try self.validate(self.reportId, name: "reportId", parent: name, min: 1)
            try self.validate(self.reportId, name: "reportId", parent: name, pattern: "^[0-9A-Za-z\\.\\-_]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case destinationS3Location = "destinationS3Location"
            case format = "format"
            case reportDescription = "reportDescription"
            case reportFrequency = "reportFrequency"
        }
    }

    public struct UpdateReportDefinitionResult: AWSDecodableShape {
        /// ID of the report.
        public let reportId: String?

        public init(reportId: String? = nil) {
            self.reportId = reportId
        }

        private enum CodingKeys: String, CodingKey {
            case reportId = "reportId"
        }
    }
}

// MARK: - Errors

/// Error enum for ApplicationCostProfiler
public struct ApplicationCostProfilerErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServerException = "InternalServerException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ApplicationCostProfiler
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

    /// You do not have permission to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// An internal server error occurred. Retry your request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Your request exceeds one or more of the service quotas.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The calls to AWS Application Cost Profiler API are throttled. The request was denied.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The input fails to satisfy the constraints for the API.
    public static var validationException: Self { .init(.validationException) }
}

extension ApplicationCostProfilerErrorType: Equatable {
    public static func == (lhs: ApplicationCostProfilerErrorType, rhs: ApplicationCostProfilerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ApplicationCostProfilerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
