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

/// Error enum for Neptune
public struct NeptuneErrorType: AWSErrorType {
    enum Code: String {
        case authorizationNotFoundFault = "AuthorizationNotFound"
        case certificateNotFoundFault = "CertificateNotFound"
        case dBClusterAlreadyExistsFault = "DBClusterAlreadyExistsFault"
        case dBClusterEndpointAlreadyExistsFault = "DBClusterEndpointAlreadyExistsFault"
        case dBClusterEndpointNotFoundFault = "DBClusterEndpointNotFoundFault"
        case dBClusterEndpointQuotaExceededFault = "DBClusterEndpointQuotaExceededFault"
        case dBClusterNotFoundFault = "DBClusterNotFoundFault"
        case dBClusterParameterGroupNotFoundFault = "DBClusterParameterGroupNotFound"
        case dBClusterQuotaExceededFault = "DBClusterQuotaExceededFault"
        case dBClusterRoleAlreadyExistsFault = "DBClusterRoleAlreadyExists"
        case dBClusterRoleNotFoundFault = "DBClusterRoleNotFound"
        case dBClusterRoleQuotaExceededFault = "DBClusterRoleQuotaExceeded"
        case dBClusterSnapshotAlreadyExistsFault = "DBClusterSnapshotAlreadyExistsFault"
        case dBClusterSnapshotNotFoundFault = "DBClusterSnapshotNotFoundFault"
        case dBInstanceAlreadyExistsFault = "DBInstanceAlreadyExists"
        case dBInstanceNotFoundFault = "DBInstanceNotFound"
        case dBParameterGroupAlreadyExistsFault = "DBParameterGroupAlreadyExists"
        case dBParameterGroupNotFoundFault = "DBParameterGroupNotFound"
        case dBParameterGroupQuotaExceededFault = "DBParameterGroupQuotaExceeded"
        case dBSecurityGroupNotFoundFault = "DBSecurityGroupNotFound"
        case dBSnapshotAlreadyExistsFault = "DBSnapshotAlreadyExists"
        case dBSnapshotNotFoundFault = "DBSnapshotNotFound"
        case dBSubnetGroupAlreadyExistsFault = "DBSubnetGroupAlreadyExists"
        case dBSubnetGroupDoesNotCoverEnoughAZs = "DBSubnetGroupDoesNotCoverEnoughAZs"
        case dBSubnetGroupNotFoundFault = "DBSubnetGroupNotFoundFault"
        case dBSubnetGroupQuotaExceededFault = "DBSubnetGroupQuotaExceeded"
        case dBSubnetQuotaExceededFault = "DBSubnetQuotaExceededFault"
        case dBUpgradeDependencyFailureFault = "DBUpgradeDependencyFailure"
        case domainNotFoundFault = "DomainNotFoundFault"
        case eventSubscriptionQuotaExceededFault = "EventSubscriptionQuotaExceeded"
        case instanceQuotaExceededFault = "InstanceQuotaExceeded"
        case insufficientDBClusterCapacityFault = "InsufficientDBClusterCapacityFault"
        case insufficientDBInstanceCapacityFault = "InsufficientDBInstanceCapacity"
        case insufficientStorageClusterCapacityFault = "InsufficientStorageClusterCapacity"
        case invalidDBClusterEndpointStateFault = "InvalidDBClusterEndpointStateFault"
        case invalidDBClusterSnapshotStateFault = "InvalidDBClusterSnapshotStateFault"
        case invalidDBClusterStateFault = "InvalidDBClusterStateFault"
        case invalidDBInstanceStateFault = "InvalidDBInstanceState"
        case invalidDBParameterGroupStateFault = "InvalidDBParameterGroupState"
        case invalidDBSecurityGroupStateFault = "InvalidDBSecurityGroupState"
        case invalidDBSnapshotStateFault = "InvalidDBSnapshotState"
        case invalidDBSubnetGroupStateFault = "InvalidDBSubnetGroupStateFault"
        case invalidDBSubnetStateFault = "InvalidDBSubnetStateFault"
        case invalidEventSubscriptionStateFault = "InvalidEventSubscriptionState"
        case invalidRestoreFault = "InvalidRestoreFault"
        case invalidSubnet = "InvalidSubnet"
        case invalidVPCNetworkStateFault = "InvalidVPCNetworkStateFault"
        case kMSKeyNotAccessibleFault = "KMSKeyNotAccessibleFault"
        case optionGroupNotFoundFault = "OptionGroupNotFoundFault"
        case provisionedIopsNotAvailableInAZFault = "ProvisionedIopsNotAvailableInAZFault"
        case resourceNotFoundFault = "ResourceNotFoundFault"
        case sNSInvalidTopicFault = "SNSInvalidTopic"
        case sNSNoAuthorizationFault = "SNSNoAuthorization"
        case sNSTopicArnNotFoundFault = "SNSTopicArnNotFound"
        case sharedSnapshotQuotaExceededFault = "SharedSnapshotQuotaExceeded"
        case snapshotQuotaExceededFault = "SnapshotQuotaExceeded"
        case sourceNotFoundFault = "SourceNotFound"
        case storageQuotaExceededFault = "StorageQuotaExceeded"
        case storageTypeNotSupportedFault = "StorageTypeNotSupported"
        case subnetAlreadyInUse = "SubnetAlreadyInUse"
        case subscriptionAlreadyExistFault = "SubscriptionAlreadyExist"
        case subscriptionCategoryNotFoundFault = "SubscriptionCategoryNotFound"
        case subscriptionNotFoundFault = "SubscriptionNotFound"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Neptune
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

    /// Specified CIDRIP or EC2 security group is not authorized for the specified DB security group. Neptune may not also be authorized via IAM to perform necessary actions on your behalf.
    public static var authorizationNotFoundFault: Self { .init(.authorizationNotFoundFault) }
    ///  CertificateIdentifier does not refer to an existing certificate.
    public static var certificateNotFoundFault: Self { .init(.certificateNotFoundFault) }
    /// User already has a DB cluster with the given identifier.
    public static var dBClusterAlreadyExistsFault: Self { .init(.dBClusterAlreadyExistsFault) }
    /// The specified custom endpoint cannot be created because it already exists.
    public static var dBClusterEndpointAlreadyExistsFault: Self { .init(.dBClusterEndpointAlreadyExistsFault) }
    /// The specified custom endpoint doesn't exist.
    public static var dBClusterEndpointNotFoundFault: Self { .init(.dBClusterEndpointNotFoundFault) }
    /// The cluster already has the maximum number of custom endpoints.
    public static var dBClusterEndpointQuotaExceededFault: Self { .init(.dBClusterEndpointQuotaExceededFault) }
    ///  DBClusterIdentifier does not refer to an existing DB cluster.
    public static var dBClusterNotFoundFault: Self { .init(.dBClusterNotFoundFault) }
    ///  DBClusterParameterGroupName does not refer to an existing DB Cluster parameter group.
    public static var dBClusterParameterGroupNotFoundFault: Self { .init(.dBClusterParameterGroupNotFoundFault) }
    /// User attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.
    public static var dBClusterQuotaExceededFault: Self { .init(.dBClusterQuotaExceededFault) }
    /// The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.
    public static var dBClusterRoleAlreadyExistsFault: Self { .init(.dBClusterRoleAlreadyExistsFault) }
    /// The specified IAM role Amazon Resource Name (ARN) is not associated with the specified DB cluster.
    public static var dBClusterRoleNotFoundFault: Self { .init(.dBClusterRoleNotFoundFault) }
    /// You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.
    public static var dBClusterRoleQuotaExceededFault: Self { .init(.dBClusterRoleQuotaExceededFault) }
    /// User already has a DB cluster snapshot with the given identifier.
    public static var dBClusterSnapshotAlreadyExistsFault: Self { .init(.dBClusterSnapshotAlreadyExistsFault) }
    ///  DBClusterSnapshotIdentifier does not refer to an existing DB cluster snapshot.
    public static var dBClusterSnapshotNotFoundFault: Self { .init(.dBClusterSnapshotNotFoundFault) }
    /// User already has a DB instance with the given identifier.
    public static var dBInstanceAlreadyExistsFault: Self { .init(.dBInstanceAlreadyExistsFault) }
    ///  DBInstanceIdentifier does not refer to an existing DB instance.
    public static var dBInstanceNotFoundFault: Self { .init(.dBInstanceNotFoundFault) }
    /// A DB parameter group with the same name exists.
    public static var dBParameterGroupAlreadyExistsFault: Self { .init(.dBParameterGroupAlreadyExistsFault) }
    ///  DBParameterGroupName does not refer to an existing DB parameter group.
    public static var dBParameterGroupNotFoundFault: Self { .init(.dBParameterGroupNotFoundFault) }
    /// Request would result in user exceeding the allowed number of DB parameter groups.
    public static var dBParameterGroupQuotaExceededFault: Self { .init(.dBParameterGroupQuotaExceededFault) }
    ///  DBSecurityGroupName does not refer to an existing DB security group.
    public static var dBSecurityGroupNotFoundFault: Self { .init(.dBSecurityGroupNotFoundFault) }
    ///  DBSnapshotIdentifier is already used by an existing snapshot.
    public static var dBSnapshotAlreadyExistsFault: Self { .init(.dBSnapshotAlreadyExistsFault) }
    ///  DBSnapshotIdentifier does not refer to an existing DB snapshot.
    public static var dBSnapshotNotFoundFault: Self { .init(.dBSnapshotNotFoundFault) }
    ///  DBSubnetGroupName is already used by an existing DB subnet group.
    public static var dBSubnetGroupAlreadyExistsFault: Self { .init(.dBSubnetGroupAlreadyExistsFault) }
    /// Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.
    public static var dBSubnetGroupDoesNotCoverEnoughAZs: Self { .init(.dBSubnetGroupDoesNotCoverEnoughAZs) }
    ///  DBSubnetGroupName does not refer to an existing DB subnet group.
    public static var dBSubnetGroupNotFoundFault: Self { .init(.dBSubnetGroupNotFoundFault) }
    /// Request would result in user exceeding the allowed number of DB subnet groups.
    public static var dBSubnetGroupQuotaExceededFault: Self { .init(.dBSubnetGroupQuotaExceededFault) }
    /// Request would result in user exceeding the allowed number of subnets in a DB subnet groups.
    public static var dBSubnetQuotaExceededFault: Self { .init(.dBSubnetQuotaExceededFault) }
    /// The DB upgrade failed because a resource the DB depends on could not be modified.
    public static var dBUpgradeDependencyFailureFault: Self { .init(.dBUpgradeDependencyFailureFault) }
    ///  Domain does not refer to an existing Active Directory Domain.
    public static var domainNotFoundFault: Self { .init(.domainNotFoundFault) }
    /// You have exceeded the number of events you can subscribe to.
    public static var eventSubscriptionQuotaExceededFault: Self { .init(.eventSubscriptionQuotaExceededFault) }
    /// Request would result in user exceeding the allowed number of DB instances.
    public static var instanceQuotaExceededFault: Self { .init(.instanceQuotaExceededFault) }
    /// The DB cluster does not have enough capacity for the current operation.
    public static var insufficientDBClusterCapacityFault: Self { .init(.insufficientDBClusterCapacityFault) }
    /// Specified DB instance class is not available in the specified Availability Zone.
    public static var insufficientDBInstanceCapacityFault: Self { .init(.insufficientDBInstanceCapacityFault) }
    /// There is insufficient storage available for the current action. You may be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.
    public static var insufficientStorageClusterCapacityFault: Self { .init(.insufficientStorageClusterCapacityFault) }
    /// The requested operation cannot be performed on the endpoint while the endpoint is in this state.
    public static var invalidDBClusterEndpointStateFault: Self { .init(.invalidDBClusterEndpointStateFault) }
    /// The supplied value is not a valid DB cluster snapshot state.
    public static var invalidDBClusterSnapshotStateFault: Self { .init(.invalidDBClusterSnapshotStateFault) }
    /// The DB cluster is not in a valid state.
    public static var invalidDBClusterStateFault: Self { .init(.invalidDBClusterStateFault) }
    /// The specified DB instance is not in the available state.
    public static var invalidDBInstanceStateFault: Self { .init(.invalidDBInstanceStateFault) }
    /// The DB parameter group is in use or is in an invalid state. If you are attempting to delete the parameter group, you cannot delete it when the parameter group is in this state.
    public static var invalidDBParameterGroupStateFault: Self { .init(.invalidDBParameterGroupStateFault) }
    /// The state of the DB security group does not allow deletion.
    public static var invalidDBSecurityGroupStateFault: Self { .init(.invalidDBSecurityGroupStateFault) }
    /// The state of the DB snapshot does not allow deletion.
    public static var invalidDBSnapshotStateFault: Self { .init(.invalidDBSnapshotStateFault) }
    /// The DB subnet group cannot be deleted because it is in use.
    public static var invalidDBSubnetGroupStateFault: Self { .init(.invalidDBSubnetGroupStateFault) }
    /// The DB subnet is not in the available state.
    public static var invalidDBSubnetStateFault: Self { .init(.invalidDBSubnetStateFault) }
    /// The event subscription is in an invalid state.
    public static var invalidEventSubscriptionStateFault: Self { .init(.invalidEventSubscriptionStateFault) }
    /// Cannot restore from vpc backup to non-vpc DB instance.
    public static var invalidRestoreFault: Self { .init(.invalidRestoreFault) }
    /// The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.
    public static var invalidSubnet: Self { .init(.invalidSubnet) }
    /// DB subnet group does not cover all Availability Zones after it is created because users' change.
    public static var invalidVPCNetworkStateFault: Self { .init(.invalidVPCNetworkStateFault) }
    /// Error accessing KMS key.
    public static var kMSKeyNotAccessibleFault: Self { .init(.kMSKeyNotAccessibleFault) }
    /// The designated option group could not be found.
    public static var optionGroupNotFoundFault: Self { .init(.optionGroupNotFoundFault) }
    /// Provisioned IOPS not available in the specified Availability Zone.
    public static var provisionedIopsNotAvailableInAZFault: Self { .init(.provisionedIopsNotAvailableInAZFault) }
    /// The specified resource ID was not found.
    public static var resourceNotFoundFault: Self { .init(.resourceNotFoundFault) }
    /// The SNS topic is invalid.
    public static var sNSInvalidTopicFault: Self { .init(.sNSInvalidTopicFault) }
    /// There is no SNS authorization.
    public static var sNSNoAuthorizationFault: Self { .init(.sNSNoAuthorizationFault) }
    /// The ARN of the SNS topic could not be found.
    public static var sNSTopicArnNotFoundFault: Self { .init(.sNSTopicArnNotFoundFault) }
    /// You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.
    public static var sharedSnapshotQuotaExceededFault: Self { .init(.sharedSnapshotQuotaExceededFault) }
    /// Request would result in user exceeding the allowed number of DB snapshots.
    public static var snapshotQuotaExceededFault: Self { .init(.snapshotQuotaExceededFault) }
    /// The source could not be found.
    public static var sourceNotFoundFault: Self { .init(.sourceNotFoundFault) }
    /// Request would result in user exceeding the allowed amount of storage available across all DB instances.
    public static var storageQuotaExceededFault: Self { .init(.storageQuotaExceededFault) }
    ///  StorageType specified cannot be associated with the DB Instance.
    public static var storageTypeNotSupportedFault: Self { .init(.storageTypeNotSupportedFault) }
    /// The DB subnet is already in use in the Availability Zone.
    public static var subnetAlreadyInUse: Self { .init(.subnetAlreadyInUse) }
    /// This subscription already exists.
    public static var subscriptionAlreadyExistFault: Self { .init(.subscriptionAlreadyExistFault) }
    /// The designated subscription category could not be found.
    public static var subscriptionCategoryNotFoundFault: Self { .init(.subscriptionCategoryNotFoundFault) }
    /// The designated subscription could not be found.
    public static var subscriptionNotFoundFault: Self { .init(.subscriptionNotFoundFault) }
}

extension NeptuneErrorType: Equatable {
    public static func == (lhs: NeptuneErrorType, rhs: NeptuneErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension NeptuneErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
