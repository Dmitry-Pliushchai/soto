// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Kafka {

    public struct ZookeeperNodeInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClientVpcIpAddress", location: .body(locationName: "clientVpcIpAddress"), required: false, type: .string), 
            AWSShapeMember(label: "ZookeeperId", location: .body(locationName: "zookeeperId"), required: false, type: .double), 
            AWSShapeMember(label: "AttachedENIId", location: .body(locationName: "attachedENIId"), required: false, type: .string), 
            AWSShapeMember(label: "ZookeeperVersion", location: .body(locationName: "zookeeperVersion"), required: false, type: .string)
        ]
        /// The virtual private cloud (VPC) IP address of the client.
        public let clientVpcIpAddress: String?
        /// The role-specific ID for Zookeeper.
        public let zookeeperId: Double?
        /// The attached elastic network interface of the broker.
        public let attachedENIId: String?
        /// The version of Zookeeper.
        public let zookeeperVersion: String?

        public init(clientVpcIpAddress: String? = nil, zookeeperId: Double? = nil, attachedENIId: String? = nil, zookeeperVersion: String? = nil) {
            self.clientVpcIpAddress = clientVpcIpAddress
            self.zookeeperId = zookeeperId
            self.attachedENIId = attachedENIId
            self.zookeeperVersion = zookeeperVersion
        }

        private enum CodingKeys: String, CodingKey {
            case clientVpcIpAddress = "clientVpcIpAddress"
            case zookeeperId = "zookeeperId"
            case attachedENIId = "attachedENIId"
            case zookeeperVersion = "zookeeperVersion"
        }
    }

    public struct StorageInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EbsStorageInfo", location: .body(locationName: "ebsStorageInfo"), required: false, type: .structure)
        ]
        /// EBS volume information.
        public let ebsStorageInfo: EBSStorageInfo?

        public init(ebsStorageInfo: EBSStorageInfo? = nil) {
            self.ebsStorageInfo = ebsStorageInfo
        }

        private enum CodingKeys: String, CodingKey {
            case ebsStorageInfo = "ebsStorageInfo"
        }
    }

    public struct ClusterInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NumberOfBrokerNodes", location: .body(locationName: "numberOfBrokerNodes"), required: false, type: .integer), 
            AWSShapeMember(label: "ClusterName", location: .body(locationName: "clusterName"), required: false, type: .string), 
            AWSShapeMember(label: "EnhancedMonitoring", location: .body(locationName: "enhancedMonitoring"), required: false, type: .enum), 
            AWSShapeMember(label: "CurrentBrokerSoftwareInfo", location: .body(locationName: "currentBrokerSoftwareInfo"), required: false, type: .structure), 
            AWSShapeMember(label: "ZookeeperConnectString", location: .body(locationName: "zookeeperConnectString"), required: false, type: .string), 
            AWSShapeMember(label: "CreationTime", location: .body(locationName: "creationTime"), required: false, type: .timestamp), 
            AWSShapeMember(label: "EncryptionInfo", location: .body(locationName: "encryptionInfo"), required: false, type: .structure), 
            AWSShapeMember(label: "ClusterArn", location: .body(locationName: "clusterArn"), required: false, type: .string), 
            AWSShapeMember(label: "CurrentVersion", location: .body(locationName: "currentVersion"), required: false, type: .string), 
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .enum), 
            AWSShapeMember(label: "BrokerNodeGroupInfo", location: .body(locationName: "brokerNodeGroupInfo"), required: false, type: .structure)
        ]
        /// The number of Kafka broker nodes in the cluster.
        public let numberOfBrokerNodes: Int32?
        /// The name of the cluster.
        public let clusterName: String?
        /// Specifies which metrics are gathered for the MSK cluster. This property has three possible values: DEFAULT, PER_BROKER, and PER_TOPIC_PER_BROKER.
        public let enhancedMonitoring: EnhancedMonitoring?
        /// Information about the version of software currently deployed on the Kafka brokers in the cluster.
        public let currentBrokerSoftwareInfo: BrokerSoftwareInfo?
        /// The connection string to use to connect to the Apache ZooKeeper cluster.
        public let zookeeperConnectString: String?
        /// The time when the cluster was created.
        public let creationTime: TimeStamp?
        /// Includes all encryption-related information.
        public let encryptionInfo: EncryptionInfo?
        /// The Amazon Resource Name (ARN) that uniquely identifies the cluster.
        public let clusterArn: String?
        /// The current version of the MSK cluster.
        public let currentVersion: String?
        /// The state of the cluster. The possible states are CREATING, ACTIVE, and FAILED.
        public let state: ClusterState?
        /// Information about the broker nodes.
        public let brokerNodeGroupInfo: BrokerNodeGroupInfo?

        public init(numberOfBrokerNodes: Int32? = nil, clusterName: String? = nil, enhancedMonitoring: EnhancedMonitoring? = nil, currentBrokerSoftwareInfo: BrokerSoftwareInfo? = nil, zookeeperConnectString: String? = nil, creationTime: TimeStamp? = nil, encryptionInfo: EncryptionInfo? = nil, clusterArn: String? = nil, currentVersion: String? = nil, state: ClusterState? = nil, brokerNodeGroupInfo: BrokerNodeGroupInfo? = nil) {
            self.numberOfBrokerNodes = numberOfBrokerNodes
            self.clusterName = clusterName
            self.enhancedMonitoring = enhancedMonitoring
            self.currentBrokerSoftwareInfo = currentBrokerSoftwareInfo
            self.zookeeperConnectString = zookeeperConnectString
            self.creationTime = creationTime
            self.encryptionInfo = encryptionInfo
            self.clusterArn = clusterArn
            self.currentVersion = currentVersion
            self.state = state
            self.brokerNodeGroupInfo = brokerNodeGroupInfo
        }

        private enum CodingKeys: String, CodingKey {
            case numberOfBrokerNodes = "numberOfBrokerNodes"
            case clusterName = "clusterName"
            case enhancedMonitoring = "enhancedMonitoring"
            case currentBrokerSoftwareInfo = "currentBrokerSoftwareInfo"
            case zookeeperConnectString = "zookeeperConnectString"
            case creationTime = "creationTime"
            case encryptionInfo = "encryptionInfo"
            case clusterArn = "clusterArn"
            case currentVersion = "currentVersion"
            case state = "state"
            case brokerNodeGroupInfo = "brokerNodeGroupInfo"
        }
    }

    public struct BrokerNodeInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClientSubnet", location: .body(locationName: "clientSubnet"), required: false, type: .string), 
            AWSShapeMember(label: "CurrentBrokerSoftwareInfo", location: .body(locationName: "currentBrokerSoftwareInfo"), required: false, type: .structure), 
            AWSShapeMember(label: "AttachedENIId", location: .body(locationName: "attachedENIId"), required: false, type: .string), 
            AWSShapeMember(label: "ClientVpcIpAddress", location: .body(locationName: "clientVpcIpAddress"), required: false, type: .string), 
            AWSShapeMember(label: "BrokerId", location: .body(locationName: "brokerId"), required: false, type: .double)
        ]
        /// The client subnet to which this broker node belongs.
        public let clientSubnet: String?
        /// Information about the version of software currently deployed on the Kafka brokers in the cluster.
        public let currentBrokerSoftwareInfo: BrokerSoftwareInfo?
        /// The attached elastic network interface of the broker.
        public let attachedENIId: String?
        /// The virtual private cloud (VPC) of the client.
        public let clientVpcIpAddress: String?
        /// The ID of the broker.
        public let brokerId: Double?

        public init(clientSubnet: String? = nil, currentBrokerSoftwareInfo: BrokerSoftwareInfo? = nil, attachedENIId: String? = nil, clientVpcIpAddress: String? = nil, brokerId: Double? = nil) {
            self.clientSubnet = clientSubnet
            self.currentBrokerSoftwareInfo = currentBrokerSoftwareInfo
            self.attachedENIId = attachedENIId
            self.clientVpcIpAddress = clientVpcIpAddress
            self.brokerId = brokerId
        }

        private enum CodingKeys: String, CodingKey {
            case clientSubnet = "clientSubnet"
            case currentBrokerSoftwareInfo = "currentBrokerSoftwareInfo"
            case attachedENIId = "attachedENIId"
            case clientVpcIpAddress = "clientVpcIpAddress"
            case brokerId = "brokerId"
        }
    }

    public struct DeleteClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterArn", location: .body(locationName: "clusterArn"), required: false, type: .string), 
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .enum)
        ]
        /// The Amazon Resource Name (ARN) of the cluster.
        public let clusterArn: String?
        /// The state of the cluster. The possible states are CREATING, ACTIVE, and FAILED.
        public let state: ClusterState?

        public init(clusterArn: String? = nil, state: ClusterState? = nil) {
            self.clusterArn = clusterArn
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
            case state = "state"
        }
    }

    public struct Error: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Message", location: .body(locationName: "message"), required: false, type: .string), 
            AWSShapeMember(label: "InvalidParameter", location: .body(locationName: "invalidParameter"), required: false, type: .string)
        ]
        /// The description of the error.
        public let message: String?
        /// The parameter that caused the error.
        public let invalidParameter: String?

        public init(message: String? = nil, invalidParameter: String? = nil) {
            self.message = message
            self.invalidParameter = invalidParameter
        }

        private enum CodingKeys: String, CodingKey {
            case message = "message"
            case invalidParameter = "invalidParameter"
        }
    }

    public struct ListNodesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NodeInfoList", location: .body(locationName: "nodeInfoList"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        /// List containing a NodeInfo object.
        public let nodeInfoList: [NodeInfo]?
        /// The paginated results marker. When the result of a ListNodes operation is truncated, the call returns NextToken in the response. 
        ///  To get another batch of nodes, provide this token in your next request.
        public let nextToken: String?

        public init(nodeInfoList: [NodeInfo]? = nil, nextToken: String? = nil) {
            self.nodeInfoList = nodeInfoList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case nodeInfoList = "nodeInfoList"
            case nextToken = "nextToken"
        }
    }

    public struct BrokerNodeGroupInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BrokerAZDistribution", location: .body(locationName: "brokerAZDistribution"), required: false, type: .enum), 
            AWSShapeMember(label: "ClientSubnets", location: .body(locationName: "clientSubnets"), required: true, type: .list), 
            AWSShapeMember(label: "InstanceType", location: .body(locationName: "instanceType"), required: true, type: .string), 
            AWSShapeMember(label: "SecurityGroups", location: .body(locationName: "securityGroups"), required: false, type: .list), 
            AWSShapeMember(label: "StorageInfo", location: .body(locationName: "storageInfo"), required: false, type: .structure)
        ]
        /// The distribution of broker nodes across Availability Zones.
        public let brokerAZDistribution: BrokerAZDistribution?
        /// The list of subnets to connect to in the client virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets. Client applications use elastic network interfaces to produce and consume data. Client subnets can't be in Availability Zone us-east-1e.
        public let clientSubnets: [String]
        /// The type of Amazon EC2 instances to use for Kafka brokers. The following instance types are allowed: kafka.m5.large, kafka.m5.xlarge, kafka.m5.2xlarge,
        /// kafka.m5.4xlarge, kafka.m5.12xlarge, and kafka.m5.24xlarge.
        public let instanceType: String
        /// The AWS security groups to associate with the elastic network interfaces in order to specify who can connect to and communicate with the Amazon MSK cluster.
        public let securityGroups: [String]?
        /// Contains information about storage volumes attached to MSK broker nodes.
        public let storageInfo: StorageInfo?

        public init(brokerAZDistribution: BrokerAZDistribution? = nil, clientSubnets: [String], instanceType: String, securityGroups: [String]? = nil, storageInfo: StorageInfo? = nil) {
            self.brokerAZDistribution = brokerAZDistribution
            self.clientSubnets = clientSubnets
            self.instanceType = instanceType
            self.securityGroups = securityGroups
            self.storageInfo = storageInfo
        }

        private enum CodingKeys: String, CodingKey {
            case brokerAZDistribution = "brokerAZDistribution"
            case clientSubnets = "clientSubnets"
            case instanceType = "instanceType"
            case securityGroups = "securityGroups"
            case storageInfo = "storageInfo"
        }
    }

    public struct NodeInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NodeType", location: .body(locationName: "nodeType"), required: false, type: .enum), 
            AWSShapeMember(label: "InstanceType", location: .body(locationName: "instanceType"), required: false, type: .string), 
            AWSShapeMember(label: "NodeARN", location: .body(locationName: "nodeARN"), required: false, type: .string), 
            AWSShapeMember(label: "ZookeeperNodeInfo", location: .body(locationName: "zookeeperNodeInfo"), required: false, type: .structure), 
            AWSShapeMember(label: "AddedToClusterTime", location: .body(locationName: "addedToClusterTime"), required: false, type: .string), 
            AWSShapeMember(label: "BrokerNodeInfo", location: .body(locationName: "brokerNodeInfo"), required: false, type: .structure)
        ]
        /// The node type.
        public let nodeType: NodeType?
        /// The instance type.
        public let instanceType: String?
        /// The Amazon Resource Name (ARN) of the node.
        public let nodeARN: String?
        /// The ZookeeperNodeInfo.
        public let zookeeperNodeInfo: ZookeeperNodeInfo?
        /// The start time.
        public let addedToClusterTime: String?
        /// The broker node info.
        public let brokerNodeInfo: BrokerNodeInfo?

        public init(nodeType: NodeType? = nil, instanceType: String? = nil, nodeARN: String? = nil, zookeeperNodeInfo: ZookeeperNodeInfo? = nil, addedToClusterTime: String? = nil, brokerNodeInfo: BrokerNodeInfo? = nil) {
            self.nodeType = nodeType
            self.instanceType = instanceType
            self.nodeARN = nodeARN
            self.zookeeperNodeInfo = zookeeperNodeInfo
            self.addedToClusterTime = addedToClusterTime
            self.brokerNodeInfo = brokerNodeInfo
        }

        private enum CodingKeys: String, CodingKey {
            case nodeType = "nodeType"
            case instanceType = "instanceType"
            case nodeARN = "nodeARN"
            case zookeeperNodeInfo = "zookeeperNodeInfo"
            case addedToClusterTime = "addedToClusterTime"
            case brokerNodeInfo = "brokerNodeInfo"
        }
    }

    public struct EBSStorageInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VolumeSize", location: .body(locationName: "volumeSize"), required: false, type: .integer)
        ]
        /// The size in GiB of the EBS volume for the data drive on each broker node.
        public let volumeSize: Int32?

        public init(volumeSize: Int32? = nil) {
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case volumeSize = "volumeSize"
        }
    }

    public struct ListNodesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterArn", location: .uri(locationName: "clusterArn"), required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        public let clusterArn: String
        public let maxResults: Int32?
        public let nextToken: String?

        public init(clusterArn: String, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.clusterArn = clusterArn
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct DescribeClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterArn", location: .uri(locationName: "clusterArn"), required: true, type: .string)
        ]
        public let clusterArn: String

        public init(clusterArn: String) {
            self.clusterArn = clusterArn
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
        }
    }

    public struct GetBootstrapBrokersResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BootstrapBrokerString", location: .body(locationName: "bootstrapBrokerString"), required: false, type: .string)
        ]
        /// A string containing one or more hostname:port pairs.
        public let bootstrapBrokerString: String?

        public init(bootstrapBrokerString: String? = nil) {
            self.bootstrapBrokerString = bootstrapBrokerString
        }

        private enum CodingKeys: String, CodingKey {
            case bootstrapBrokerString = "bootstrapBrokerString"
        }
    }

    public enum ClusterState: String, CustomStringConvertible, Codable {
        case active = "ACTIVE"
        case creating = "CREATING"
        case deleting = "DELETING"
        case failed = "FAILED"
        public var description: String { return self.rawValue }
    }

    public struct GetBootstrapBrokersRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterArn", location: .uri(locationName: "clusterArn"), required: true, type: .string)
        ]
        public let clusterArn: String

        public init(clusterArn: String) {
            self.clusterArn = clusterArn
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
        }
    }

    public enum NodeType: String, CustomStringConvertible, Codable {
        case broker = "BROKER"
        public var description: String { return self.rawValue }
    }

    public struct CreateClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BrokerNodeGroupInfo", location: .body(locationName: "brokerNodeGroupInfo"), required: true, type: .structure), 
            AWSShapeMember(label: "NumberOfBrokerNodes", location: .body(locationName: "numberOfBrokerNodes"), required: true, type: .integer), 
            AWSShapeMember(label: "EncryptionInfo", location: .body(locationName: "encryptionInfo"), required: false, type: .structure), 
            AWSShapeMember(label: "ClusterName", location: .body(locationName: "clusterName"), required: true, type: .string), 
            AWSShapeMember(label: "EnhancedMonitoring", location: .body(locationName: "enhancedMonitoring"), required: false, type: .enum), 
            AWSShapeMember(label: "KafkaVersion", location: .body(locationName: "kafkaVersion"), required: true, type: .string)
        ]
        /// Information about the broker nodes in the cluster.
        public let brokerNodeGroupInfo: BrokerNodeGroupInfo
        /// The number of Kafka broker nodes in the Amazon MSK cluster.
        public let numberOfBrokerNodes: Int32
        /// Includes all encryption-related information.
        public let encryptionInfo: EncryptionInfo?
        /// The name of the cluster.
        public let clusterName: String
        /// Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, and PER_TOPIC_PER_BROKER.
        public let enhancedMonitoring: EnhancedMonitoring?
        /// The version of Apache Kafka.
        public let kafkaVersion: String

        public init(brokerNodeGroupInfo: BrokerNodeGroupInfo, numberOfBrokerNodes: Int32, encryptionInfo: EncryptionInfo? = nil, clusterName: String, enhancedMonitoring: EnhancedMonitoring? = nil, kafkaVersion: String) {
            self.brokerNodeGroupInfo = brokerNodeGroupInfo
            self.numberOfBrokerNodes = numberOfBrokerNodes
            self.encryptionInfo = encryptionInfo
            self.clusterName = clusterName
            self.enhancedMonitoring = enhancedMonitoring
            self.kafkaVersion = kafkaVersion
        }

        private enum CodingKeys: String, CodingKey {
            case brokerNodeGroupInfo = "brokerNodeGroupInfo"
            case numberOfBrokerNodes = "numberOfBrokerNodes"
            case encryptionInfo = "encryptionInfo"
            case clusterName = "clusterName"
            case enhancedMonitoring = "enhancedMonitoring"
            case kafkaVersion = "kafkaVersion"
        }
    }

    public enum BrokerAZDistribution: String, CustomStringConvertible, Codable {
        case `default` = "DEFAULT"
        public var description: String { return self.rawValue }
    }

    public struct DeleteClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterArn", location: .uri(locationName: "clusterArn"), required: true, type: .string), 
            AWSShapeMember(label: "CurrentVersion", location: .querystring(locationName: "currentVersion"), required: false, type: .string)
        ]
        public let clusterArn: String
        public let currentVersion: String?

        public init(clusterArn: String, currentVersion: String? = nil) {
            self.clusterArn = clusterArn
            self.currentVersion = currentVersion
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
            case currentVersion = "currentVersion"
        }
    }

    public struct BrokerSoftwareInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationRevision", location: .body(locationName: "configurationRevision"), required: false, type: .string), 
            AWSShapeMember(label: "ConfigurationArn", location: .body(locationName: "configurationArn"), required: false, type: .string), 
            AWSShapeMember(label: "KafkaVersion", location: .body(locationName: "kafkaVersion"), required: false, type: .string)
        ]
        /// The revision of the configuration to use.
        public let configurationRevision: String?
        /// The Amazon Resource Name (ARN) of the configuration used for the cluster.
        public let configurationArn: String?
        /// The version of Apache Kafka.
        public let kafkaVersion: String?

        public init(configurationRevision: String? = nil, configurationArn: String? = nil, kafkaVersion: String? = nil) {
            self.configurationRevision = configurationRevision
            self.configurationArn = configurationArn
            self.kafkaVersion = kafkaVersion
        }

        private enum CodingKeys: String, CodingKey {
            case configurationRevision = "configurationRevision"
            case configurationArn = "configurationArn"
            case kafkaVersion = "kafkaVersion"
        }
    }

    public enum EnhancedMonitoring: String, CustomStringConvertible, Codable {
        case `default` = "DEFAULT"
        case perBroker = "PER_BROKER"
        case perTopicPerBroker = "PER_TOPIC_PER_BROKER"
        public var description: String { return self.rawValue }
    }

    public struct ListClustersRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "ClusterNameFilter", location: .querystring(locationName: "clusterNameFilter"), required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer)
        ]
        public let nextToken: String?
        public let clusterNameFilter: String?
        public let maxResults: Int32?

        public init(nextToken: String? = nil, clusterNameFilter: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.clusterNameFilter = clusterNameFilter
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case clusterNameFilter = "clusterNameFilter"
            case maxResults = "maxResults"
        }
    }

    public struct CreateClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterArn", location: .body(locationName: "clusterArn"), required: false, type: .string), 
            AWSShapeMember(label: "ClusterName", location: .body(locationName: "clusterName"), required: false, type: .string), 
            AWSShapeMember(label: "State", location: .body(locationName: "state"), required: false, type: .enum)
        ]
        /// The Amazon Resource Name (ARN) of the cluster.
        public let clusterArn: String?
        /// The name of the MSK cluster.
        public let clusterName: String?
        /// The state of the cluster. The possible states are CREATING, ACTIVE, and FAILED.
        public let state: ClusterState?

        public init(clusterArn: String? = nil, clusterName: String? = nil, state: ClusterState? = nil) {
            self.clusterArn = clusterArn
            self.clusterName = clusterName
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case clusterArn = "clusterArn"
            case clusterName = "clusterName"
            case state = "state"
        }
    }

    public struct EncryptionAtRest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DataVolumeKMSKeyId", location: .body(locationName: "dataVolumeKMSKeyId"), required: true, type: .string)
        ]
        /// The AWS KMS key used for data encryption.
        public let dataVolumeKMSKeyId: String

        public init(dataVolumeKMSKeyId: String) {
            self.dataVolumeKMSKeyId = dataVolumeKMSKeyId
        }

        private enum CodingKeys: String, CodingKey {
            case dataVolumeKMSKeyId = "dataVolumeKMSKeyId"
        }
    }

    public struct ListClustersResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterInfoList", location: .body(locationName: "clusterInfoList"), required: false, type: .list), 
            AWSShapeMember(label: "NextToken", location: .body(locationName: "nextToken"), required: false, type: .string)
        ]
        /// Information on each of the MSK clusters in the response.
        public let clusterInfoList: [ClusterInfo]?
        /// The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response. 
        ///  To get another batch of clusters, provide this token in your next request.
        public let nextToken: String?

        public init(clusterInfoList: [ClusterInfo]? = nil, nextToken: String? = nil) {
            self.clusterInfoList = clusterInfoList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusterInfoList = "clusterInfoList"
            case nextToken = "nextToken"
        }
    }

    public struct EncryptionInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EncryptionAtRest", location: .body(locationName: "encryptionAtRest"), required: false, type: .structure)
        ]
        /// The data volume encryption details.
        public let encryptionAtRest: EncryptionAtRest?

        public init(encryptionAtRest: EncryptionAtRest? = nil) {
            self.encryptionAtRest = encryptionAtRest
        }

        private enum CodingKeys: String, CodingKey {
            case encryptionAtRest = "encryptionAtRest"
        }
    }

    public struct DescribeClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClusterInfo", location: .body(locationName: "clusterInfo"), required: false, type: .structure)
        ]
        /// The cluster information.
        public let clusterInfo: ClusterInfo?

        public init(clusterInfo: ClusterInfo? = nil) {
            self.clusterInfo = clusterInfo
        }

        private enum CodingKeys: String, CodingKey {
            case clusterInfo = "clusterInfo"
        }
    }

}