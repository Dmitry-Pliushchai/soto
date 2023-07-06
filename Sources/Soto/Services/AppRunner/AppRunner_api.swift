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

@_exported import SotoCore

/// Service object for interacting with AWS AppRunner service.
///
/// App Runner App Runner is an application service that provides a fast, simple, and cost-effective way to go directly from an existing container image or source code to a running service in the Amazon Web Services Cloud in seconds. You don't need to learn new technologies, decide which compute service to use, or understand how to provision and configure Amazon Web Services resources. App Runner connects directly to your container registry or source code repository. It provides an automatic delivery pipeline with fully managed operations, high performance, scalability, and security. For more information about App Runner, see the App Runner Developer Guide. For release information, see the App Runner Release Notes.  To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that you can use to access the API, see Tools for Amazon Web Services.  Endpoints  For a list of Region-specific endpoints that App Runner supports, see App Runner endpoints and quotas in the Amazon Web Services General Reference.
public struct AppRunner: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppRunner client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AppRunner",
            service: "apprunner",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2020-05-15",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "apprunner-fips.us-east-1.amazonaws.com",
                    "us-east-2": "apprunner-fips.us-east-2.amazonaws.com",
                    "us-west-2": "apprunner-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: AppRunnerErrorType.self,
            xmlNamespace: "http://apprunner.amazonaws.com/doc/2020-05-15/",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associate your own domain name with the App Runner subdomain URL of your App Runner service. After you call AssociateCustomDomain and receive a successful response, use the information in the CustomDomain record that's returned to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain and one or more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name that you associated. App Runner tracks domain validity in a certificate stored in AWS Certificate Manager (ACM).
    @Sendable
    public func associateCustomDomain(_ input: AssociateCustomDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateCustomDomainResponse {
        return try await self.client.execute(operation: "AssociateCustomDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Create an App Runner automatic scaling configuration resource. App Runner requires this resource when you create or update App Runner services and you require non-default auto scaling settings. You can share an auto scaling configuration across multiple services. Create multiple revisions of a configuration by calling this action multiple times using the same AutoScalingConfigurationName. The call returns incremental AutoScalingConfigurationRevision values. When you create a service and configure an auto scaling configuration resource, the service uses the latest active revision of the auto scaling configuration by default. You can optionally configure the service to use a specific revision. Configure a higher MinSize to increase the spread of your App Runner service over more Availability Zones in the Amazon Web Services Region. The tradeoff is a higher minimal cost. Configure a lower MaxSize to control your cost. The tradeoff is lower responsiveness during peak demand.
    @Sendable
    public func createAutoScalingConfiguration(_ input: CreateAutoScalingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAutoScalingConfigurationResponse {
        return try await self.client.execute(operation: "CreateAutoScalingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Create an App Runner connection resource. App Runner requires a connection resource when you create App Runner services that access private repositories from certain third-party providers. You can share a connection across multiple services. A connection resource is needed to access GitHub repositories. GitHub requires a user interface approval process through the App Runner console before you can use the connection.
    @Sendable
    public func createConnection(_ input: CreateConnectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateConnectionResponse {
        return try await self.client.execute(operation: "CreateConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Create an App Runner observability configuration resource. App Runner requires this resource when you create or update App Runner services and you want to enable non-default observability features. You can share an observability configuration across multiple services. Create multiple revisions of a configuration by calling this action multiple times using the same ObservabilityConfigurationName. The call returns incremental ObservabilityConfigurationRevision values. When you create a service and configure an observability configuration resource, the service uses the latest active revision of the observability configuration by default. You can optionally configure the service to use a specific revision. The observability configuration resource is designed to configure multiple features (currently one feature, tracing). This action takes optional parameters that describe the configuration of these features (currently one parameter, TraceConfiguration). If you don't specify a feature parameter, App Runner doesn't enable the feature.
    @Sendable
    public func createObservabilityConfiguration(_ input: CreateObservabilityConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateObservabilityConfigurationResponse {
        return try await self.client.execute(operation: "CreateObservabilityConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Create an App Runner service. After the service is created, the action also automatically starts a deployment. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    @Sendable
    public func createService(_ input: CreateServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateServiceResponse {
        return try await self.client.execute(operation: "CreateService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Create an App Runner VPC connector resource. App Runner requires this resource when you want to associate your App Runner service to a custom Amazon Virtual Private Cloud (Amazon VPC).
    @Sendable
    public func createVpcConnector(_ input: CreateVpcConnectorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateVpcConnectorResponse {
        return try await self.client.execute(operation: "CreateVpcConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Create an App Runner VPC Ingress Connection resource. App Runner requires this resource when you want to associate your App Runner service with an Amazon VPC endpoint.
    @Sendable
    public func createVpcIngressConnection(_ input: CreateVpcIngressConnectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateVpcIngressConnectionResponse {
        return try await self.client.execute(operation: "CreateVpcIngressConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete an App Runner automatic scaling configuration resource. You can delete a specific revision or the latest active revision. You can't delete a configuration that's used by one or more App Runner services.
    @Sendable
    public func deleteAutoScalingConfiguration(_ input: DeleteAutoScalingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAutoScalingConfigurationResponse {
        return try await self.client.execute(operation: "DeleteAutoScalingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete an App Runner connection. You must first ensure that there are no running App Runner services that use this connection. If there are any, the DeleteConnection action fails.
    @Sendable
    public func deleteConnection(_ input: DeleteConnectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteConnectionResponse {
        return try await self.client.execute(operation: "DeleteConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete an App Runner observability configuration resource. You can delete a specific revision or the latest active revision. You can't delete a configuration that's used by one or more App Runner services.
    @Sendable
    public func deleteObservabilityConfiguration(_ input: DeleteObservabilityConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteObservabilityConfigurationResponse {
        return try await self.client.execute(operation: "DeleteObservabilityConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete an App Runner service. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.  Make sure that you don't have any active VPCIngressConnections associated with the service you want to delete.
    @Sendable
    public func deleteService(_ input: DeleteServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteServiceResponse {
        return try await self.client.execute(operation: "DeleteService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete an App Runner VPC connector resource. You can't delete a connector that's used by one or more App Runner services.
    @Sendable
    public func deleteVpcConnector(_ input: DeleteVpcConnectorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteVpcConnectorResponse {
        return try await self.client.execute(operation: "DeleteVpcConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Delete an App Runner VPC Ingress Connection resource that's associated with an App Runner service. The VPC Ingress Connection must be in one of the following states to be deleted:     AVAILABLE     FAILED_CREATION     FAILED_UPDATE     FAILED_DELETION
    @Sendable
    public func deleteVpcIngressConnection(_ input: DeleteVpcIngressConnectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteVpcIngressConnectionResponse {
        return try await self.client.execute(operation: "DeleteVpcIngressConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a full description of an App Runner automatic scaling configuration resource.
    @Sendable
    public func describeAutoScalingConfiguration(_ input: DescribeAutoScalingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAutoScalingConfigurationResponse {
        return try await self.client.execute(operation: "DescribeAutoScalingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a description of custom domain names that are associated with an App Runner service.
    @Sendable
    public func describeCustomDomains(_ input: DescribeCustomDomainsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeCustomDomainsResponse {
        return try await self.client.execute(operation: "DescribeCustomDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a full description of an App Runner observability configuration resource.
    @Sendable
    public func describeObservabilityConfiguration(_ input: DescribeObservabilityConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeObservabilityConfigurationResponse {
        return try await self.client.execute(operation: "DescribeObservabilityConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a full description of an App Runner service.
    @Sendable
    public func describeService(_ input: DescribeServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeServiceResponse {
        return try await self.client.execute(operation: "DescribeService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a description of an App Runner VPC connector resource.
    @Sendable
    public func describeVpcConnector(_ input: DescribeVpcConnectorRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeVpcConnectorResponse {
        return try await self.client.execute(operation: "DescribeVpcConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a full description of an App Runner VPC Ingress Connection resource.
    @Sendable
    public func describeVpcIngressConnection(_ input: DescribeVpcIngressConnectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeVpcIngressConnectionResponse {
        return try await self.client.execute(operation: "DescribeVpcIngressConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Disassociate a custom domain name from an App Runner service. Certificates tracking domain validity are associated with a custom domain and are stored in AWS Certificate Manager (ACM). These certificates aren't deleted as part of this action. App Runner delays certificate deletion for 30 days after a domain is disassociated from your service.
    @Sendable
    public func disassociateCustomDomain(_ input: DisassociateCustomDomainRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateCustomDomainResponse {
        return try await self.client.execute(operation: "DisassociateCustomDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of active App Runner automatic scaling configurations in your Amazon Web Services account. You can query the revisions for a specific configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested name. To retrieve a full description of a particular configuration revision, call  and provide one of the ARNs returned by ListAutoScalingConfigurations.
    @Sendable
    public func listAutoScalingConfigurations(_ input: ListAutoScalingConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAutoScalingConfigurationsResponse {
        return try await self.client.execute(operation: "ListAutoScalingConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of App Runner connections that are associated with your Amazon Web Services account.
    @Sendable
    public func listConnections(_ input: ListConnectionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListConnectionsResponse {
        return try await self.client.execute(operation: "ListConnections", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of active App Runner observability configurations in your Amazon Web Services account. You can query the revisions for a specific configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested name. To retrieve a full description of a particular configuration revision, call  and provide one of the ARNs returned by ListObservabilityConfigurations.
    @Sendable
    public func listObservabilityConfigurations(_ input: ListObservabilityConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListObservabilityConfigurationsResponse {
        return try await self.client.execute(operation: "ListObservabilityConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a list of operations that occurred on an App Runner service. The resulting list of OperationSummary objects is sorted in reverse chronological order. The first object on the list represents the last started operation.
    @Sendable
    public func listOperations(_ input: ListOperationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListOperationsResponse {
        return try await self.client.execute(operation: "ListOperations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of running App Runner services in your Amazon Web Services account.
    @Sendable
    public func listServices(_ input: ListServicesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListServicesResponse {
        return try await self.client.execute(operation: "ListServices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// List tags that are associated with for an App Runner resource. The response contains a list of tag key-value pairs.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of App Runner VPC connectors in your Amazon Web Services account.
    @Sendable
    public func listVpcConnectors(_ input: ListVpcConnectorsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListVpcConnectorsResponse {
        return try await self.client.execute(operation: "ListVpcConnectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Return a list of App Runner VPC Ingress Connections in your Amazon Web Services account.
    @Sendable
    public func listVpcIngressConnections(_ input: ListVpcIngressConnectionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListVpcIngressConnectionsResponse {
        return try await self.client.execute(operation: "ListVpcIngressConnections", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Pause an active App Runner service. App Runner reduces compute capacity for the service to zero and loses state (for example, ephemeral storage is removed). This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    @Sendable
    public func pauseService(_ input: PauseServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PauseServiceResponse {
        return try await self.client.execute(operation: "PauseService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Resume an active App Runner service. App Runner provisions compute capacity for the service. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    @Sendable
    public func resumeService(_ input: ResumeServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ResumeServiceResponse {
        return try await self.client.execute(operation: "ResumeService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Initiate a manual deployment of the latest commit in a source code repository or the latest image in a source image repository to an App Runner service. For a source code repository, App Runner retrieves the commit and builds a Docker image. For a source image repository, App Runner retrieves the latest Docker image. In both cases, App Runner then deploys the new image to your service and starts a new container instance. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    @Sendable
    public func startDeployment(_ input: StartDeploymentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartDeploymentResponse {
        return try await self.client.execute(operation: "StartDeployment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Add tags to, or update the tag values of, an App Runner resource. A tag is a key-value pair.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Remove tags from an App Runner resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Update an App Runner service. You can update the source configuration and instance configuration of the service. You can also update the ARN of the auto scaling configuration resource that's associated with the service. However, you can't change the name or the encryption configuration of the service. These can be set only when you create the service. To update the tags applied to your service, use the separate actions TagResource and UntagResource. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    @Sendable
    public func updateService(_ input: UpdateServiceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateServiceResponse {
        return try await self.client.execute(operation: "UpdateService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Update an existing App Runner VPC Ingress Connection resource. The VPC Ingress Connection must be in one of the following states to be updated:    AVAILABLE     FAILED_CREATION     FAILED_UPDATE
    @Sendable
    public func updateVpcIngressConnection(_ input: UpdateVpcIngressConnectionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateVpcIngressConnectionResponse {
        return try await self.client.execute(operation: "UpdateVpcIngressConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension AppRunner {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AppRunner, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AppRunner {
    /// Return a description of custom domain names that are associated with an App Runner service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func describeCustomDomainsPaginator(
        _ input: DescribeCustomDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<DescribeCustomDomainsRequest, DescribeCustomDomainsResponse> {
        return .init(
            input: input,
            command: self.describeCustomDomains,
            inputKey: \DescribeCustomDomainsRequest.nextToken,
            outputKey: \DescribeCustomDomainsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of active App Runner automatic scaling configurations in your Amazon Web Services account. You can query the revisions for a specific configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested name. To retrieve a full description of a particular configuration revision, call  and provide one of the ARNs returned by ListAutoScalingConfigurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAutoScalingConfigurationsPaginator(
        _ input: ListAutoScalingConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAutoScalingConfigurationsRequest, ListAutoScalingConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listAutoScalingConfigurations,
            inputKey: \ListAutoScalingConfigurationsRequest.nextToken,
            outputKey: \ListAutoScalingConfigurationsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of App Runner connections that are associated with your Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listConnectionsPaginator(
        _ input: ListConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListConnectionsRequest, ListConnectionsResponse> {
        return .init(
            input: input,
            command: self.listConnections,
            inputKey: \ListConnectionsRequest.nextToken,
            outputKey: \ListConnectionsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of active App Runner observability configurations in your Amazon Web Services account. You can query the revisions for a specific configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested name. To retrieve a full description of a particular configuration revision, call  and provide one of the ARNs returned by ListObservabilityConfigurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listObservabilityConfigurationsPaginator(
        _ input: ListObservabilityConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListObservabilityConfigurationsRequest, ListObservabilityConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listObservabilityConfigurations,
            inputKey: \ListObservabilityConfigurationsRequest.nextToken,
            outputKey: \ListObservabilityConfigurationsResponse.nextToken,
            logger: logger
        )
    }

    /// Return a list of operations that occurred on an App Runner service. The resulting list of OperationSummary objects is sorted in reverse chronological order. The first object on the list represents the last started operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listOperationsPaginator(
        _ input: ListOperationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListOperationsRequest, ListOperationsResponse> {
        return .init(
            input: input,
            command: self.listOperations,
            inputKey: \ListOperationsRequest.nextToken,
            outputKey: \ListOperationsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of running App Runner services in your Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListServicesRequest, ListServicesResponse> {
        return .init(
            input: input,
            command: self.listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of App Runner VPC connectors in your Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listVpcConnectorsPaginator(
        _ input: ListVpcConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListVpcConnectorsRequest, ListVpcConnectorsResponse> {
        return .init(
            input: input,
            command: self.listVpcConnectors,
            inputKey: \ListVpcConnectorsRequest.nextToken,
            outputKey: \ListVpcConnectorsResponse.nextToken,
            logger: logger
        )
    }

    /// Return a list of App Runner VPC Ingress Connections in your Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listVpcIngressConnectionsPaginator(
        _ input: ListVpcIngressConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListVpcIngressConnectionsRequest, ListVpcIngressConnectionsResponse> {
        return .init(
            input: input,
            command: self.listVpcIngressConnections,
            inputKey: \ListVpcIngressConnectionsRequest.nextToken,
            outputKey: \ListVpcIngressConnectionsResponse.nextToken,
            logger: logger
        )
    }
}

extension AppRunner.DescribeCustomDomainsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.DescribeCustomDomainsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceArn: self.serviceArn
        )
    }
}

extension AppRunner.ListAutoScalingConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.ListAutoScalingConfigurationsRequest {
        return .init(
            autoScalingConfigurationName: self.autoScalingConfigurationName,
            latestOnly: self.latestOnly,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppRunner.ListConnectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.ListConnectionsRequest {
        return .init(
            connectionName: self.connectionName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppRunner.ListObservabilityConfigurationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.ListObservabilityConfigurationsRequest {
        return .init(
            latestOnly: self.latestOnly,
            maxResults: self.maxResults,
            nextToken: token,
            observabilityConfigurationName: self.observabilityConfigurationName
        )
    }
}

extension AppRunner.ListOperationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.ListOperationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            serviceArn: self.serviceArn
        )
    }
}

extension AppRunner.ListServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.ListServicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppRunner.ListVpcConnectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.ListVpcConnectorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension AppRunner.ListVpcIngressConnectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppRunner.ListVpcIngressConnectionsRequest {
        return .init(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
