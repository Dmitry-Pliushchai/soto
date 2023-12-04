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

extension S3Outposts {
    // MARK: Enums

    public enum EndpointAccessType: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case `private` = "Private"
        case customerOwnedIp = "CustomerOwnedIp"
        public var description: String { return self.rawValue }
    }

    public enum EndpointStatus: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case available = "Available"
        case createFailed = "Create_Failed"
        case deleteFailed = "Delete_Failed"
        case deleting = "Deleting"
        case pending = "Pending"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateEndpointRequest: AWSEncodableShape {
        /// The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use the Amazon Web Services VPC, choose Private. To use the endpoint with an on-premises network, choose CustomerOwnedIp.  If you choose CustomerOwnedIp, you must also provide the customer-owned IP address pool (CoIP pool).   Private is the default access type value.
        public let accessType: EndpointAccessType?
        /// The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses are allocated from this pool for the endpoint.
        public let customerOwnedIpv4Pool: String?
        /// The ID of the Outposts.
        public let outpostId: String
        /// The ID of the security group to use with the endpoint.
        public let securityGroupId: String
        /// The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost that has Amazon S3 on Outposts provisioned.
        public let subnetId: String

        public init(accessType: EndpointAccessType? = nil, customerOwnedIpv4Pool: String? = nil, outpostId: String, securityGroupId: String, subnetId: String) {
            self.accessType = accessType
            self.customerOwnedIpv4Pool = customerOwnedIpv4Pool
            self.outpostId = outpostId
            self.securityGroupId = securityGroupId
            self.subnetId = subnetId
        }

        public func validate(name: String) throws {
            try self.validate(self.customerOwnedIpv4Pool, name: "customerOwnedIpv4Pool", parent: name, pattern: "^ipv4pool-coip-([0-9a-f]{17})$")
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(op-[a-f0-9]{17}|\\d{12}|ec2)$")
            try self.validate(self.securityGroupId, name: "securityGroupId", parent: name, pattern: "^sg-([0-9a-f]{8}|[0-9a-f]{17})$")
            try self.validate(self.subnetId, name: "subnetId", parent: name, pattern: "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$")
        }

        private enum CodingKeys: String, CodingKey {
            case accessType = "AccessType"
            case customerOwnedIpv4Pool = "CustomerOwnedIpv4Pool"
            case outpostId = "OutpostId"
            case securityGroupId = "SecurityGroupId"
            case subnetId = "SubnetId"
        }
    }

    public struct CreateEndpointResult: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the endpoint.
        public let endpointArn: String?

        public init(endpointArn: String? = nil) {
            self.endpointArn = endpointArn
        }

        private enum CodingKeys: String, CodingKey {
            case endpointArn = "EndpointArn"
        }
    }

    public struct DeleteEndpointRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "endpointId", location: .querystring("endpointId")),
            AWSMemberEncoding(label: "outpostId", location: .querystring("outpostId"))
        ]

        /// The ID of the endpoint.
        public let endpointId: String
        /// The ID of the Outposts.
        public let outpostId: String

        public init(endpointId: String, outpostId: String) {
            self.endpointId = endpointId
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try self.validate(self.endpointId, name: "endpointId", parent: name, pattern: "^[a-zA-Z0-9]{19}$")
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(op-[a-f0-9]{17}|\\d{12}|ec2)$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct Endpoint: AWSDecodableShape {
        /// The type of connectivity used to access the Amazon S3 on Outposts endpoint.
        public let accessType: EndpointAccessType?
        /// The VPC CIDR committed by this endpoint.
        public let cidrBlock: String?
        /// The time the endpoint was created.
        public let creationTime: Date?
        /// The ID of the customer-owned IPv4 address pool used for the endpoint.
        public let customerOwnedIpv4Pool: String?
        /// The Amazon Resource Name (ARN) of the endpoint.
        public let endpointArn: String?
        /// The failure reason, if any, for a create or delete endpoint operation.
        public let failedReason: FailedReason?
        /// The network interface of the endpoint.
        public let networkInterfaces: [NetworkInterface]?
        /// The ID of the Outposts.
        public let outpostsId: String?
        /// The ID of the security group used for the endpoint.
        public let securityGroupId: String?
        /// The status of the endpoint.
        public let status: EndpointStatus?
        /// The ID of the subnet used for the endpoint.
        public let subnetId: String?
        /// The ID of the VPC used for the endpoint.
        public let vpcId: String?

        public init(accessType: EndpointAccessType? = nil, cidrBlock: String? = nil, creationTime: Date? = nil, customerOwnedIpv4Pool: String? = nil, endpointArn: String? = nil, failedReason: FailedReason? = nil, networkInterfaces: [NetworkInterface]? = nil, outpostsId: String? = nil, securityGroupId: String? = nil, status: EndpointStatus? = nil, subnetId: String? = nil, vpcId: String? = nil) {
            self.accessType = accessType
            self.cidrBlock = cidrBlock
            self.creationTime = creationTime
            self.customerOwnedIpv4Pool = customerOwnedIpv4Pool
            self.endpointArn = endpointArn
            self.failedReason = failedReason
            self.networkInterfaces = networkInterfaces
            self.outpostsId = outpostsId
            self.securityGroupId = securityGroupId
            self.status = status
            self.subnetId = subnetId
            self.vpcId = vpcId
        }

        private enum CodingKeys: String, CodingKey {
            case accessType = "AccessType"
            case cidrBlock = "CidrBlock"
            case creationTime = "CreationTime"
            case customerOwnedIpv4Pool = "CustomerOwnedIpv4Pool"
            case endpointArn = "EndpointArn"
            case failedReason = "FailedReason"
            case networkInterfaces = "NetworkInterfaces"
            case outpostsId = "OutpostsId"
            case securityGroupId = "SecurityGroupId"
            case status = "Status"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
        }
    }

    public struct FailedReason: AWSDecodableShape {
        /// The failure code, if any, for a create or delete endpoint operation.
        public let errorCode: String?
        /// Additional error details describing the endpoint failure and recommended action.
        public let message: String?

        public init(errorCode: String? = nil, message: String? = nil) {
            self.errorCode = errorCode
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case message = "Message"
        }
    }

    public struct ListEndpointsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The maximum number of endpoints that will be returned in the response.
        public let maxResults: Int?
        /// If a previous response from this operation included a NextToken value,  provide that value here to retrieve the next page of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListEndpointsResult: AWSDecodableShape {
        /// The list of endpoints associated with the specified Outpost.
        public let endpoints: [Endpoint]?
        /// If the number of endpoints associated with the specified Outpost exceeds MaxResults,  you can include this value in subsequent calls to this operation to retrieve more results.
        public let nextToken: String?

        public init(endpoints: [Endpoint]? = nil, nextToken: String? = nil) {
            self.endpoints = endpoints
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case endpoints = "Endpoints"
            case nextToken = "NextToken"
        }
    }

    public struct ListOutpostsWithS3Request: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The maximum number of Outposts to return. The limit is 100.
        public let maxResults: Int?
        /// When you can get additional results from the ListOutpostsWithS3 call, a NextToken parameter is returned in the output. You can then pass in a subsequent command to the NextToken parameter to continue listing additional Outposts.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListOutpostsWithS3Result: AWSDecodableShape {
        /// Returns a token that you can use to call ListOutpostsWithS3 again and receive additional results, if there are any.
        public let nextToken: String?
        /// Returns the list of Outposts that have the following characteristics:   outposts that have S3 provisioned   outposts that are Active (not pending any provisioning nor decommissioned)   outposts to which the the calling Amazon Web Services account has access
        public let outposts: [Outpost]?

        public init(nextToken: String? = nil, outposts: [Outpost]? = nil) {
            self.nextToken = nextToken
            self.outposts = outposts
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case outposts = "Outposts"
        }
    }

    public struct ListSharedEndpointsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken")),
            AWSMemberEncoding(label: "outpostId", location: .querystring("outpostId"))
        ]

        /// The maximum number of endpoints that will be returned in the response.
        public let maxResults: Int?
        /// If a previous response from this operation included a NextToken value, you can provide that value here to retrieve the next page of results.
        public let nextToken: String?
        /// The ID of the Amazon Web Services Outpost.
        public let outpostId: String

        public init(maxResults: Int? = nil, nextToken: String? = nil, outpostId: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.outpostId = outpostId
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$")
            try self.validate(self.outpostId, name: "outpostId", parent: name, pattern: "^(op-[a-f0-9]{17}|\\d{12}|ec2)$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListSharedEndpointsResult: AWSDecodableShape {
        /// The list of endpoints associated with the specified Outpost that have been shared by Amazon Web Services Resource Access Manager (RAM).
        public let endpoints: [Endpoint]?
        /// If the number of endpoints associated with the specified Outpost exceeds MaxResults,  you can include this value in subsequent calls to this operation to retrieve more results.
        public let nextToken: String?

        public init(endpoints: [Endpoint]? = nil, nextToken: String? = nil) {
            self.endpoints = endpoints
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case endpoints = "Endpoints"
            case nextToken = "NextToken"
        }
    }

    public struct NetworkInterface: AWSDecodableShape {
        /// The ID for the network interface.
        public let networkInterfaceId: String?

        public init(networkInterfaceId: String? = nil) {
            self.networkInterfaceId = networkInterfaceId
        }

        private enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
        }
    }

    public struct Outpost: AWSDecodableShape {
        /// The Amazon S3 capacity of the outpost in bytes.
        public let capacityInBytes: Int64?
        /// Specifies the unique Amazon Resource Name (ARN) for the outpost.
        public let outpostArn: String?
        /// Specifies the unique identifier for the outpost.
        public let outpostId: String?
        /// Returns the Amazon Web Services account ID of the outpost owner. Useful for comparing owned versus shared outposts.
        public let ownerId: String?
        /// Specifies the unique S3 on Outposts ARN for use with Resource Access Manager (RAM).
        public let s3OutpostArn: String?

        public init(capacityInBytes: Int64? = nil, outpostArn: String? = nil, outpostId: String? = nil, ownerId: String? = nil, s3OutpostArn: String? = nil) {
            self.capacityInBytes = capacityInBytes
            self.outpostArn = outpostArn
            self.outpostId = outpostId
            self.ownerId = ownerId
            self.s3OutpostArn = s3OutpostArn
        }

        private enum CodingKeys: String, CodingKey {
            case capacityInBytes = "CapacityInBytes"
            case outpostArn = "OutpostArn"
            case outpostId = "OutpostId"
            case ownerId = "OwnerId"
            case s3OutpostArn = "S3OutpostArn"
        }
    }
}

// MARK: - Errors

/// Error enum for S3Outposts
public struct S3OutpostsErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case outpostOfflineException = "OutpostOfflineException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize S3Outposts
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

    /// Access was denied for this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// There was a conflict with this action, and it could not be completed.
    public static var conflictException: Self { .init(.conflictException) }
    /// There was an exception with the internal server.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The service link connection to your Outposts home Region is down. Check your connection and try again.
    public static var outpostOfflineException: Self { .init(.outpostOfflineException) }
    /// The requested resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// There was an exception validating this data.
    public static var validationException: Self { .init(.validationException) }
}

extension S3OutpostsErrorType: Equatable {
    public static func == (lhs: S3OutpostsErrorType, rhs: S3OutpostsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension S3OutpostsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
