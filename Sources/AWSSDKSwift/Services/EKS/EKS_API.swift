// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Elastic Container Service for Kubernetes (Amazon EKS) is a managed service that makes it easy for you to run Kubernetes on AWS without needing to stand up or maintain your own Kubernetes control plane. Kubernetes is an open-source system for automating the deployment, scaling, and management of containerized applications.  Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so you can use all the existing plugins and tooling from the Kubernetes community. Applications running on Amazon EKS are fully compatible with applications running on any standard Kubernetes environment, whether running in on-premises data centers or public clouds. This means that you can easily migrate any standard Kubernetes application to Amazon EKS without any code modification required.
*/
public struct EKS {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "eks",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [EKSErrorType.self]
        )
    }

    ///  Creates an Amazon EKS control plane.  The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, like etcd and the API server. The control plane runs in an account managed by AWS, and the Kubernetes API is exposed via the Amazon EKS API server endpoint. Amazon EKS worker nodes run in your AWS account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster. The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the worker nodes (for example, to support kubectl exec, logs, and proxy data flows). After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch worker nodes into your cluster. For more information, see Managing Cluster Authentication and Launching Amazon EKS Worker Nodesin the Amazon EKS User Guide.
    public func createCluster(_ input: CreateClusterRequest) throws -> EventLoopFuture<CreateClusterResponse> {
        return try client.send(operation: "CreateCluster", path: "/clusters", httpMethod: "POST", input: input)
    }

    ///  Returns descriptive information about an Amazon EKS cluster. The API server endpoint and certificate authority data returned by this operation are required for kubelet and kubectl to communicate with your Kubernetes API server. For more information, see Create a kubeconfig for Amazon EKS.  The API server endpoint and certificate authority data are not available until the cluster reaches the ACTIVE state. 
    public func describeCluster(_ input: DescribeClusterRequest) throws -> EventLoopFuture<DescribeClusterResponse> {
        return try client.send(operation: "DescribeCluster", path: "/clusters/{name}", httpMethod: "GET", input: input)
    }

    ///  Lists the Amazon EKS clusters in your AWS account in the specified Region.
    public func listClusters(_ input: ListClustersRequest) throws -> EventLoopFuture<ListClustersResponse> {
        return try client.send(operation: "ListClusters", path: "/clusters", httpMethod: "GET", input: input)
    }

    ///  Deletes the Amazon EKS cluster control plane.   If you have active services in your cluster that are associated with a load balancer, you must delete those services before deleting the cluster so that the load balancers are deleted properly. Otherwise, you can have orphaned resources in your VPC that prevent you from being able to delete the VPC. For more information, see Deleting a Cluster in the Amazon EKS User Guide. 
    public func deleteCluster(_ input: DeleteClusterRequest) throws -> EventLoopFuture<DeleteClusterResponse> {
        return try client.send(operation: "DeleteCluster", path: "/clusters/{name}", httpMethod: "DELETE", input: input)
    }


}