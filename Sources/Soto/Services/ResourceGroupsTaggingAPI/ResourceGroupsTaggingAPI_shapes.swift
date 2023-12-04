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

extension ResourceGroupsTaggingAPI {
    // MARK: Enums

    public enum ErrorCode: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case internalServiceException = "InternalServiceException"
        case invalidParameterException = "InvalidParameterException"
        public var description: String { return self.rawValue }
    }

    public enum GroupByAttribute: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case region = "REGION"
        case resourceType = "RESOURCE_TYPE"
        case targetId = "TARGET_ID"
        public var description: String { return self.rawValue }
    }

    public enum TargetIdType: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case account = "ACCOUNT"
        case ou = "OU"
        case root = "ROOT"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct ComplianceDetails: AWSDecodableShape {
        /// Whether a resource is compliant with the effective tag policy.
        public let complianceStatus: Bool?
        /// These are keys defined in the effective policy that are on the resource with either incorrect case treatment or noncompliant values.
        public let keysWithNoncompliantValues: [String]?
        /// These tag keys on the resource are noncompliant with the effective tag policy.
        public let noncompliantKeys: [String]?

        public init(complianceStatus: Bool? = nil, keysWithNoncompliantValues: [String]? = nil, noncompliantKeys: [String]? = nil) {
            self.complianceStatus = complianceStatus
            self.keysWithNoncompliantValues = keysWithNoncompliantValues
            self.noncompliantKeys = noncompliantKeys
        }

        private enum CodingKeys: String, CodingKey {
            case complianceStatus = "ComplianceStatus"
            case keysWithNoncompliantValues = "KeysWithNoncompliantValues"
            case noncompliantKeys = "NoncompliantKeys"
        }
    }

    public struct DescribeReportCreationInput: AWSEncodableShape {
        public init() {}
    }

    public struct DescribeReportCreationOutput: AWSDecodableShape {
        /// Details of the common errors that all operations return.
        public let errorMessage: String?
        /// The path to the Amazon S3 bucket where the report was stored on creation.
        public let s3Location: String?
        /// The date and time that the report was started.
        public let startDate: String?
        /// Reports the status of the operation. The operation status can be one of the following:    RUNNING - Report creation is in progress.    SUCCEEDED - Report creation is complete. You can open the report from the Amazon S3 bucket that you specified when you ran StartReportCreation.    FAILED - Report creation timed out or the Amazon S3 bucket is not accessible.     NO REPORT - No report was generated in the last 90 days.
        public let status: String?

        public init(errorMessage: String? = nil, s3Location: String? = nil, startDate: String? = nil, status: String? = nil) {
            self.errorMessage = errorMessage
            self.s3Location = s3Location
            self.startDate = startDate
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case errorMessage = "ErrorMessage"
            case s3Location = "S3Location"
            case startDate = "StartDate"
            case status = "Status"
        }
    }

    public struct FailureInfo: AWSDecodableShape {
        /// The code of the common error. Valid values include InternalServiceException, InvalidParameterException, and any valid error code returned by the Amazon Web Services service that hosts the resource that you want to tag.
        public let errorCode: ErrorCode?
        /// The message of the common error.
        public let errorMessage: String?
        /// The HTTP status code of the common error.
        public let statusCode: Int?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, statusCode: Int? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.statusCode = statusCode
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case statusCode = "StatusCode"
        }
    }

    public struct GetComplianceSummaryInput: AWSEncodableShape {
        /// Specifies a list of attributes to group the counts of noncompliant resources by. If supplied, the counts are sorted by those attributes.
        public let groupBy: [GroupByAttribute]?
        /// Specifies the maximum number of results to be returned in each page. A  query can return fewer than this maximum, even if there are more results still to return. You should always check the PaginationToken response value to see if there are more results. You can specify a minimum of 1 and a maximum value of 100.
        public let maxResults: Int?
        /// Specifies a PaginationToken response value from a  previous request to indicate that you want the next page of results. Leave this parameter empty  in your initial request.
        public let paginationToken: String?
        /// Specifies a list of Amazon Web Services Regions to limit the output to. If you use this parameter, the count of returned noncompliant resources includes only resources in the specified Regions.
        public let regionFilters: [String]?
        /// Specifies that you want the response to include information for only resources of the specified types. The format of each resource type is service[:resourceType]. For example, specifying a resource type of ec2 returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances. The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the  Amazon Web Services General Reference  for the following:   For a list of service name strings, see Amazon Web Services Service Namespaces.   For resource type strings, see Example ARNs.   For more information about ARNs, see Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces.   You can specify multiple resource types by using a comma separated array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter.
        public let resourceTypeFilters: [String]?
        /// Specifies that you want the response to include information for only resources that have tags with the specified tag keys. If you use this parameter, the count of returned noncompliant resources includes only resources that have the specified tag keys.
        public let tagKeyFilters: [String]?
        /// Specifies target identifiers (usually, specific account IDs) to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources with the specified target IDs.
        public let targetIdFilters: [String]?

        public init(groupBy: [GroupByAttribute]? = nil, maxResults: Int? = nil, paginationToken: String? = nil, regionFilters: [String]? = nil, resourceTypeFilters: [String]? = nil, tagKeyFilters: [String]? = nil, targetIdFilters: [String]? = nil) {
            self.groupBy = groupBy
            self.maxResults = maxResults
            self.paginationToken = paginationToken
            self.regionFilters = regionFilters
            self.resourceTypeFilters = resourceTypeFilters
            self.tagKeyFilters = tagKeyFilters
            self.targetIdFilters = targetIdFilters
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "^[\\s\\S]*$")
            try self.regionFilters?.forEach {
                try validate($0, name: "regionFilters[]", parent: name, max: 256)
                try validate($0, name: "regionFilters[]", parent: name, min: 1)
                try validate($0, name: "regionFilters[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.regionFilters, name: "regionFilters", parent: name, max: 100)
            try self.validate(self.regionFilters, name: "regionFilters", parent: name, min: 1)
            try self.resourceTypeFilters?.forEach {
                try validate($0, name: "resourceTypeFilters[]", parent: name, max: 256)
                try validate($0, name: "resourceTypeFilters[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.tagKeyFilters?.forEach {
                try validate($0, name: "tagKeyFilters[]", parent: name, max: 128)
                try validate($0, name: "tagKeyFilters[]", parent: name, min: 1)
                try validate($0, name: "tagKeyFilters[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.tagKeyFilters, name: "tagKeyFilters", parent: name, max: 50)
            try self.validate(self.tagKeyFilters, name: "tagKeyFilters", parent: name, min: 1)
            try self.targetIdFilters?.forEach {
                try validate($0, name: "targetIdFilters[]", parent: name, max: 68)
                try validate($0, name: "targetIdFilters[]", parent: name, min: 6)
                try validate($0, name: "targetIdFilters[]", parent: name, pattern: "^[a-zA-Z0-9-]*$")
            }
            try self.validate(self.targetIdFilters, name: "targetIdFilters", parent: name, max: 100)
            try self.validate(self.targetIdFilters, name: "targetIdFilters", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case groupBy = "GroupBy"
            case maxResults = "MaxResults"
            case paginationToken = "PaginationToken"
            case regionFilters = "RegionFilters"
            case resourceTypeFilters = "ResourceTypeFilters"
            case tagKeyFilters = "TagKeyFilters"
            case targetIdFilters = "TargetIdFilters"
        }
    }

    public struct GetComplianceSummaryOutput: AWSDecodableShape {
        /// A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value  as the PaginationToken value in the request for the next page.
        public let paginationToken: String?
        /// A table that shows counts of noncompliant resources.
        public let summaryList: [Summary]?

        public init(paginationToken: String? = nil, summaryList: [Summary]? = nil) {
            self.paginationToken = paginationToken
            self.summaryList = summaryList
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case summaryList = "SummaryList"
        }
    }

    public struct GetResourcesInput: AWSEncodableShape {
        /// Specifies whether to exclude resources that are compliant with the tag policy. Set this to true if you are interested in retrieving information on noncompliant resources only. You can use this parameter only if the IncludeComplianceDetails parameter is also set to true.
        public let excludeCompliantResources: Bool?
        /// Specifies whether to include details regarding the compliance with the effective tag policy. Set this to true to determine whether resources are compliant with the tag policy and to get details.
        public let includeComplianceDetails: Bool?
        /// Specifies a PaginationToken response value from a  previous request to indicate that you want the next page of results. Leave this parameter empty  in your initial request.
        public let paginationToken: String?
        /// Specifies a list of ARNs of resources for which you want to retrieve tag data. You can't specify both this parameter and any of the pagination parameters (ResourcesPerPage, TagsPerPage, PaginationToken) in the same request. If you specify both, you get an Invalid Parameter exception. If a resource specified by this parameter doesn't exist, it doesn't generate an error; it simply isn't included in the response. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces in the Amazon Web Services General Reference.
        public let resourceARNList: [String]?
        /// Specifies the maximum number of results to be returned in each page. A  query can return fewer than this maximum, even if there are more results still to return. You should always check the PaginationToken response value to see if there are more results. You can specify a minimum of 1 and a maximum value of 100.
        public let resourcesPerPage: Int?
        /// Specifies the resource types that you want included in the response. The format of each resource type is service[:resourceType]. For example, specifying a resource type of ec2 returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). For the list of services whose resources you can use in this parameter, see Services that support the Resource Groups Tagging API. You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter. For example, the following string would limit the response to only Amazon EC2 instances, Amazon S3 buckets, or any Audit Manager resource:  ec2:instance,s3:bucket,auditmanager
        public let resourceTypeFilters: [String]?
        /// Specifies a list of TagFilters (keys and values) to restrict the output to only those resources that have tags with the specified keys and, if included, the specified values. Each TagFilter must contain a key with values optional. A request can include up to 50 keys, and each key can include up to 20 values.  Note the following when deciding how to use TagFilters:   If you don't specify a TagFilter, the response includes all resources that are currently tagged or ever had a tag. Resources that currently don't have tags are shown with an empty tag set, like this: "Tags": [].   If you specify more than one filter in a single request, the response returns only those resources that satisfy all filters.   If you specify a filter that contains more than one value for a key, the response returns resources that match any of the specified values for that key.   If you don't specify a value for a key, the response returns all resources that are tagged with that key, with any or no value. For example, for the following filters: filter1= {keyA,{value1}}, filter2={keyB,{value2,value3,value4}}, filter3= {keyC}:    GetResources({filter1}) returns resources tagged with key1=value1     GetResources({filter2}) returns resources tagged with key2=value2 or key2=value3 or key2=value4     GetResources({filter3}) returns resources tagged with any tag with the key key3, and with any or no value    GetResources({filter1,filter2,filter3}) returns resources tagged with (key1=value1) and (key2=value2 or key2=value3 or key2=value4) and (key3, any or no value)
        public let tagFilters: [TagFilter]?
        /// Amazon Web Services recommends using ResourcesPerPage instead of this parameter. A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).  GetResources does not split a resource and its associated tags across pages. If the specified TagsPerPage would cause such a break, a PaginationToken is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a TagsPerPage of 100 and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of three pages. The first page displays the first 10 resources, each with its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The third page displays the remaining 2 resources, each with its 10 tags. You can set TagsPerPage to a minimum of 100 items up to a maximum of 500 items.
        public let tagsPerPage: Int?

        public init(excludeCompliantResources: Bool? = nil, includeComplianceDetails: Bool? = nil, paginationToken: String? = nil, resourceARNList: [String]? = nil, resourcesPerPage: Int? = nil, resourceTypeFilters: [String]? = nil, tagFilters: [TagFilter]? = nil, tagsPerPage: Int? = nil) {
            self.excludeCompliantResources = excludeCompliantResources
            self.includeComplianceDetails = includeComplianceDetails
            self.paginationToken = paginationToken
            self.resourceARNList = resourceARNList
            self.resourcesPerPage = resourcesPerPage
            self.resourceTypeFilters = resourceTypeFilters
            self.tagFilters = tagFilters
            self.tagsPerPage = tagsPerPage
        }

        public func validate(name: String) throws {
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "^[\\s\\S]*$")
            try self.resourceARNList?.forEach {
                try validate($0, name: "resourceARNList[]", parent: name, max: 1011)
                try validate($0, name: "resourceARNList[]", parent: name, min: 1)
                try validate($0, name: "resourceARNList[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.resourceARNList, name: "resourceARNList", parent: name, max: 100)
            try self.validate(self.resourceARNList, name: "resourceARNList", parent: name, min: 1)
            try self.resourceTypeFilters?.forEach {
                try validate($0, name: "resourceTypeFilters[]", parent: name, max: 256)
                try validate($0, name: "resourceTypeFilters[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.tagFilters?.forEach {
                try $0.validate(name: "\(name).tagFilters[]")
            }
            try self.validate(self.tagFilters, name: "tagFilters", parent: name, max: 50)
        }

        private enum CodingKeys: String, CodingKey {
            case excludeCompliantResources = "ExcludeCompliantResources"
            case includeComplianceDetails = "IncludeComplianceDetails"
            case paginationToken = "PaginationToken"
            case resourceARNList = "ResourceARNList"
            case resourcesPerPage = "ResourcesPerPage"
            case resourceTypeFilters = "ResourceTypeFilters"
            case tagFilters = "TagFilters"
            case tagsPerPage = "TagsPerPage"
        }
    }

    public struct GetResourcesOutput: AWSDecodableShape {
        /// A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value  as the PaginationToken value in the request for the next page.
        public let paginationToken: String?
        /// A list of resource ARNs and the tags (keys and values) associated with  each.
        public let resourceTagMappingList: [ResourceTagMapping]?

        public init(paginationToken: String? = nil, resourceTagMappingList: [ResourceTagMapping]? = nil) {
            self.paginationToken = paginationToken
            self.resourceTagMappingList = resourceTagMappingList
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case resourceTagMappingList = "ResourceTagMappingList"
        }
    }

    public struct GetTagKeysInput: AWSEncodableShape {
        /// Specifies a PaginationToken response value from a  previous request to indicate that you want the next page of results. Leave this parameter empty  in your initial request.
        public let paginationToken: String?

        public init(paginationToken: String? = nil) {
            self.paginationToken = paginationToken
        }

        public func validate(name: String) throws {
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "^[\\s\\S]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetTagKeysOutput: AWSDecodableShape {
        /// A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value  as the PaginationToken value in the request for the next page.
        public let paginationToken: String?
        /// A list of all tag keys in the Amazon Web Services account.
        public let tagKeys: [String]?

        public init(paginationToken: String? = nil, tagKeys: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagKeys = "TagKeys"
        }
    }

    public struct GetTagValuesInput: AWSEncodableShape {
        /// Specifies the tag key for which you want to list all existing values that are currently used in the specified Amazon Web Services Region for the calling account.
        public let key: String
        /// Specifies a PaginationToken response value from a  previous request to indicate that you want the next page of results. Leave this parameter empty  in your initial request.
        public let paginationToken: String?

        public init(key: String, paginationToken: String? = nil) {
            self.key = key
            self.paginationToken = paginationToken
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "^[\\s\\S]*$")
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try self.validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "^[\\s\\S]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetTagValuesOutput: AWSDecodableShape {
        /// A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value  as the PaginationToken value in the request for the next page.
        public let paginationToken: String?
        /// A list of all tag values for the specified key currently used in the specified Amazon Web Services Region for the calling account.
        public let tagValues: [String]?

        public init(paginationToken: String? = nil, tagValues: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagValues = tagValues
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagValues = "TagValues"
        }
    }

    public struct ResourceTagMapping: AWSDecodableShape {
        /// Information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.
        public let complianceDetails: ComplianceDetails?
        /// The ARN of the resource.
        public let resourceARN: String?
        /// The tags that have been applied to one or more Amazon Web Services resources.
        public let tags: [Tag]?

        public init(complianceDetails: ComplianceDetails? = nil, resourceARN: String? = nil, tags: [Tag]? = nil) {
            self.complianceDetails = complianceDetails
            self.resourceARN = resourceARN
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case complianceDetails = "ComplianceDetails"
            case resourceARN = "ResourceARN"
            case tags = "Tags"
        }
    }

    public struct StartReportCreationInput: AWSEncodableShape {
        /// The name of the Amazon S3 bucket where the report will be stored; for example:  awsexamplebucket  For more information on S3 bucket requirements, including an example bucket policy, see the example S3 bucket policy on this page.
        public let s3Bucket: String

        public init(s3Bucket: String) {
            self.s3Bucket = s3Bucket
        }

        public func validate(name: String) throws {
            try self.validate(self.s3Bucket, name: "s3Bucket", parent: name, max: 63)
            try self.validate(self.s3Bucket, name: "s3Bucket", parent: name, min: 3)
            try self.validate(self.s3Bucket, name: "s3Bucket", parent: name, pattern: "^[a-z0-9.-]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case s3Bucket = "S3Bucket"
        }
    }

    public struct StartReportCreationOutput: AWSDecodableShape {
        public init() {}
    }

    public struct Summary: AWSDecodableShape {
        /// The timestamp that shows when this summary was generated in this Region.
        public let lastUpdated: String?
        /// The count of noncompliant resources.
        public let nonCompliantResources: Int64?
        /// The Amazon Web Services Region that the summary applies to.
        public let region: String?
        /// The Amazon Web Services resource type.
        public let resourceType: String?
        /// The account identifier or the root identifier of the organization. If you don't know the root ID, you can call the Organizations ListRoots API.
        public let targetId: String?
        /// Whether the target is an account, an OU, or the organization root.
        public let targetIdType: TargetIdType?

        public init(lastUpdated: String? = nil, nonCompliantResources: Int64? = nil, region: String? = nil, resourceType: String? = nil, targetId: String? = nil, targetIdType: TargetIdType? = nil) {
            self.lastUpdated = lastUpdated
            self.nonCompliantResources = nonCompliantResources
            self.region = region
            self.resourceType = resourceType
            self.targetId = targetId
            self.targetIdType = targetIdType
        }

        private enum CodingKeys: String, CodingKey {
            case lastUpdated = "LastUpdated"
            case nonCompliantResources = "NonCompliantResources"
            case region = "Region"
            case resourceType = "ResourceType"
            case targetId = "TargetId"
            case targetIdType = "TargetIdType"
        }
    }

    public struct Tag: AWSDecodableShape {
        /// One part of a key-value pair that makes up a tag. A key is a general label  that acts like a category for more specific tag values.
        public let key: String
        /// One part of a key-value pair that make up a tag. A value acts as a  descriptor within a tag category (key). The value can be empty or null.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagFilter: AWSEncodableShape {
        /// One part of a key-value pair that makes up a tag. A key is a general label  that acts like a category for more specific tag values.
        public let key: String?
        /// One part of a key-value pair that make up a tag. A value acts as a  descriptor within a tag category (key). The value can be empty or null.
        public let values: [String]?

        public init(key: String? = nil, values: [String]? = nil) {
            self.key = key
            self.values = values
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "^[\\s\\S]*$")
            try self.values?.forEach {
                try validate($0, name: "values[]", parent: name, max: 256)
                try validate($0, name: "values[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.values, name: "values", parent: name, max: 20)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case values = "Values"
        }
    }

    public struct TagResourcesInput: AWSEncodableShape {
        /// Specifies the list of ARNs of the resources that you want to apply tags to. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces in the Amazon Web Services General Reference.
        public let resourceARNList: [String]
        /// Specifies a list of tags that you want to add to the specified resources. A tag consists of a key and a value that you define.
        public let tags: [String: String]

        public init(resourceARNList: [String], tags: [String: String]) {
            self.resourceARNList = resourceARNList
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.resourceARNList.forEach {
                try validate($0, name: "resourceARNList[]", parent: name, max: 1011)
                try validate($0, name: "resourceARNList[]", parent: name, min: 1)
                try validate($0, name: "resourceARNList[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.resourceARNList, name: "resourceARNList", parent: name, max: 20)
            try self.validate(self.resourceARNList, name: "resourceARNList", parent: name, min: 1)
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^[\\s\\S]*$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
            try self.validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARNList = "ResourceARNList"
            case tags = "Tags"
        }
    }

    public struct TagResourcesOutput: AWSDecodableShape {
        /// A map containing a key-value pair for each failed item that couldn't be tagged. The key is the ARN of the failed resource. The value is a FailureInfo object that contains an error code, a status code, and an error message. If there are no errors, the FailedResourcesMap is empty.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

    public struct UntagResourcesInput: AWSEncodableShape {
        /// Specifies a list of ARNs of the resources that you want to remove tags from. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces in the Amazon Web Services General Reference.
        public let resourceARNList: [String]
        /// Specifies a list of tag keys that you want to remove from the specified resources.
        public let tagKeys: [String]

        public init(resourceARNList: [String], tagKeys: [String]) {
            self.resourceARNList = resourceARNList
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.resourceARNList.forEach {
                try validate($0, name: "resourceARNList[]", parent: name, max: 1011)
                try validate($0, name: "resourceARNList[]", parent: name, min: 1)
                try validate($0, name: "resourceARNList[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.resourceARNList, name: "resourceARNList", parent: name, max: 20)
            try self.validate(self.resourceARNList, name: "resourceARNList", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^[\\s\\S]*$")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARNList = "ResourceARNList"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourcesOutput: AWSDecodableShape {
        /// A map containing a key-value pair for each failed item that couldn't be untagged. The key is the ARN of the failed resource. The value is a FailureInfo object that contains an error code, a status code, and an error message. If there are no errors, the FailedResourcesMap is empty.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }
}

// MARK: - Errors

/// Error enum for ResourceGroupsTaggingAPI
public struct ResourceGroupsTaggingAPIErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModificationException"
        case constraintViolationException = "ConstraintViolationException"
        case internalServiceException = "InternalServiceException"
        case invalidParameterException = "InvalidParameterException"
        case paginationTokenExpiredException = "PaginationTokenExpiredException"
        case throttledException = "ThrottledException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ResourceGroupsTaggingAPI
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

    /// The target of the operation is currently being modified by a different request. Try again later.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// The request was denied because performing this operation violates a constraint.  Some of the reasons in the following list might not apply to this specific operation.   You must meet the prerequisites for using tag policies. For information, see Prerequisites and Permissions for Using Tag Policies in the Organizations User Guide.    You must enable the tag policies service principal (tagpolicies.tag.amazonaws.com) to integrate with Organizations For information, see EnableAWSServiceAccess.   You must have a tag policy attached to the organization root, an OU, or an account.
    public static var constraintViolationException: Self { .init(.constraintViolationException) }
    /// The request processing failed because of an unknown error, exception, or failure. You can retry the request.
    public static var internalServiceException: Self { .init(.internalServiceException) }
    /// This error indicates one of the following:   A parameter is missing.   A malformed string was supplied for the request parameter.   An out-of-range value was supplied for the request parameter.   The target ID is invalid, unsupported, or doesn't exist.   You can't access the Amazon S3 bucket for report storage. For more information, see Additional Requirements for Organization-wide Tag Compliance Reports in the Organizations User Guide.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// A PaginationToken is valid for a maximum of 15 minutes. Your request was denied because the specified PaginationToken has expired.
    public static var paginationTokenExpiredException: Self { .init(.paginationTokenExpiredException) }
    /// The request was denied to limit the frequency of submitted requests.
    public static var throttledException: Self { .init(.throttledException) }
}

extension ResourceGroupsTaggingAPIErrorType: Equatable {
    public static func == (lhs: ResourceGroupsTaggingAPIErrorType, rhs: ResourceGroupsTaggingAPIErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ResourceGroupsTaggingAPIErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
