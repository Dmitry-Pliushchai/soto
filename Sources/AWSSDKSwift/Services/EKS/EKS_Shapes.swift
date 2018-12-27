// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension EKS {

    public enum ClusterStatus: String, CustomStringConvertible, Codable {
        case creating = "CREATING"
        case active = "ACTIVE"
        case deleting = "DELETING"
        case failed = "FAILED"
        public var description: String { return self.rawValue }
    }

    public struct DescribeClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of your specified cluster.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct ListClustersRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string)
        ]
        /// The maximum number of cluster results returned by ListClusters in paginated output. When this parameter is used, ListClusters only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListClusters request with the returned nextToken value. This value can be between 1 and 100. If this parameter is not used, then ListClusters returns up to 100 results and a nextToken value if applicable.
        public let maxResults: Int32?
        /// The nextToken value returned from a previous paginated ListClusters request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.  This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. 
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct VpcConfigResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "subnetIds", required: false, type: .list), 
            AWSShapeMember(label: "securityGroupIds", required: false, type: .list), 
            AWSShapeMember(label: "vpcId", required: false, type: .string)
        ]
        /// The subnets associated with your cluster.
        public let subnetIds: [String]?
        /// The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your worker nodes and the Kubernetes control plane.
        public let securityGroupIds: [String]?
        /// The VPC associated with your cluster.
        public let vpcId: String?

        public init(subnetIds: [String]? = nil, securityGroupIds: [String]? = nil, vpcId: String? = nil) {
            self.subnetIds = subnetIds
            self.securityGroupIds = securityGroupIds
            self.vpcId = vpcId
        }

        private enum CodingKeys: String, CodingKey {
            case subnetIds = "subnetIds"
            case securityGroupIds = "securityGroupIds"
            case vpcId = "vpcId"
        }
    }

    public struct CreateClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "resourcesVpcConfig", required: true, type: .structure), 
            AWSShapeMember(label: "version", required: false, type: .string), 
            AWSShapeMember(label: "roleArn", required: true, type: .string)
        ]
        /// The unique name to give to your cluster.
        public let name: String
        /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide. You must specify at least two subnets. You may specify up to 5 security groups, but we recommend that you use a dedicated security group for your cluster control plane.
        public let resourcesVpcConfig: VpcConfigRequest
        /// The desired Kubernetes version for your cluster. If you do not specify a value here, the latest version available in Amazon EKS is used.
        public let version: String?
        /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see Amazon EKS Service IAM Role in the  Amazon EKS User Guide .
        public let roleArn: String

        public init(name: String, clientRequestToken: String? = nil, resourcesVpcConfig: VpcConfigRequest, version: String? = nil, roleArn: String) {
            self.name = name
            self.clientRequestToken = clientRequestToken
            self.resourcesVpcConfig = resourcesVpcConfig
            self.version = version
            self.roleArn = roleArn
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case clientRequestToken = "clientRequestToken"
            case resourcesVpcConfig = "resourcesVpcConfig"
            case version = "version"
            case roleArn = "roleArn"
        }
    }

    public struct DeleteClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of the cluster to delete.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct ListClustersResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clusters", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]
        /// A list of all of the clusters for your account in the specified Region.
        public let clusters: [String]?
        /// The nextToken value to include in a future ListClusters request. When the results of a ListClusters request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?

        public init(clusters: [String]? = nil, nextToken: String? = nil) {
            self.clusters = clusters
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusters = "clusters"
            case nextToken = "nextToken"
        }
    }

    public struct Certificate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "data", required: false, type: .string)
        ]
        /// The base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.
        public let data: String?

        public init(data: String? = nil) {
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case data = "data"
        }
    }

    public struct VpcConfigRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "subnetIds", required: true, type: .list), 
            AWSShapeMember(label: "securityGroupIds", required: false, type: .list)
        ]
        /// Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.
        public let subnetIds: [String]
        /// Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.
        public let securityGroupIds: [String]?

        public init(subnetIds: [String], securityGroupIds: [String]? = nil) {
            self.subnetIds = subnetIds
            self.securityGroupIds = securityGroupIds
        }

        private enum CodingKeys: String, CodingKey {
            case subnetIds = "subnetIds"
            case securityGroupIds = "securityGroupIds"
        }
    }

    public struct DeleteClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string)
        ]
        /// The name of the cluster to delete.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
        }
    }

    public struct Cluster: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "status", required: false, type: .enum), 
            AWSShapeMember(label: "version", required: false, type: .string), 
            AWSShapeMember(label: "resourcesVpcConfig", required: false, type: .structure), 
            AWSShapeMember(label: "certificateAuthority", required: false, type: .structure), 
            AWSShapeMember(label: "roleArn", required: false, type: .string), 
            AWSShapeMember(label: "endpoint", required: false, type: .string), 
            AWSShapeMember(label: "platformVersion", required: false, type: .string), 
            AWSShapeMember(label: "createdAt", required: false, type: .timestamp), 
            AWSShapeMember(label: "arn", required: false, type: .string)
        ]
        /// The name of the cluster.
        public let name: String?
        /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request.
        public let clientRequestToken: String?
        /// The current status of the cluster.
        public let status: ClusterStatus?
        /// The Kubernetes server version for the cluster.
        public let version: String?
        /// The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see Cluster VPC Considerations and Cluster Security Group Considerations in the Amazon EKS User Guide.
        public let resourcesVpcConfig: VpcConfigResponse?
        /// The certificate-authority-data for your cluster.
        public let certificateAuthority: Certificate?
        /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.
        public let roleArn: String?
        /// The endpoint for your Kubernetes API server.
        public let endpoint: String?
        /// The platform version of your Amazon EKS cluster. For more information, see Platform Versions in the  Amazon EKS User Guide .
        public let platformVersion: String?
        /// The Unix epoch time stamp in seconds for when the cluster was created.
        public let createdAt: TimeStamp?
        /// The Amazon Resource Name (ARN) of the cluster.
        public let arn: String?

        public init(name: String? = nil, clientRequestToken: String? = nil, status: ClusterStatus? = nil, version: String? = nil, resourcesVpcConfig: VpcConfigResponse? = nil, certificateAuthority: Certificate? = nil, roleArn: String? = nil, endpoint: String? = nil, platformVersion: String? = nil, createdAt: TimeStamp? = nil, arn: String? = nil) {
            self.name = name
            self.clientRequestToken = clientRequestToken
            self.status = status
            self.version = version
            self.resourcesVpcConfig = resourcesVpcConfig
            self.certificateAuthority = certificateAuthority
            self.roleArn = roleArn
            self.endpoint = endpoint
            self.platformVersion = platformVersion
            self.createdAt = createdAt
            self.arn = arn
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case clientRequestToken = "clientRequestToken"
            case status = "status"
            case version = "version"
            case resourcesVpcConfig = "resourcesVpcConfig"
            case certificateAuthority = "certificateAuthority"
            case roleArn = "roleArn"
            case endpoint = "endpoint"
            case platformVersion = "platformVersion"
            case createdAt = "createdAt"
            case arn = "arn"
        }
    }

    public struct CreateClusterResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "cluster", required: false, type: .structure)
        ]
        /// The full description of your new cluster.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "cluster"
        }
    }

    public struct DescribeClusterRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", location: .uri(locationName: "name"), required: true, type: .string)
        ]
        /// The name of the cluster to describe.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
        }
    }

}