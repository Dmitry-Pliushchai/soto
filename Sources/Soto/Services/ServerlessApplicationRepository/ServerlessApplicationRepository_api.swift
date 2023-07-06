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

/// Service object for interacting with AWS ServerlessApplicationRepository service.
///
/// The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find and deploy serverless applications in the AWS Cloud. For more information about serverless applications, see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of  all levels can get started with serverless computing without needing to learn anything new. You can use category  keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots.  You can also search for applications by name, publisher, or event source. To use an application, you simply choose it,  configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately within your team or across your organization. To publish a serverless application (or app), you can use the AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template. For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer experiences available:  Consuming Applications – Browse for applications and view information about them, including source code and readme files. Also install, configure, and deploy applications of your choosing.  Publishing Applications – Configure and upload applications to make them available to other developers, and publish new versions of applications.
public struct ServerlessApplicationRepository: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ServerlessApplicationRepository client
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
            service: "serverlessrepo",
            serviceProtocol: .restjson,
            apiVersion: "2017-09-08",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-gov-east-1": "serverlessrepo.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "serverlessrepo.us-gov-west-1.amazonaws.com"
                ])
            ],
            errorType: ServerlessApplicationRepositoryErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    @Sendable
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApplicationResponse {
        return try await self.client.execute(operation: "CreateApplication", path: "/applications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an application version.
    @Sendable
    public func createApplicationVersion(_ input: CreateApplicationVersionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApplicationVersionResponse {
        return try await self.client.execute(operation: "CreateApplicationVersion", path: "/applications/{ApplicationId}/versions/{SemanticVersion}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an AWS CloudFormation change set for the given application.
    @Sendable
    public func createCloudFormationChangeSet(_ input: CreateCloudFormationChangeSetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateCloudFormationChangeSetResponse {
        return try await self.client.execute(operation: "CreateCloudFormationChangeSet", path: "/applications/{ApplicationId}/changesets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an AWS CloudFormation template.
    @Sendable
    public func createCloudFormationTemplate(_ input: CreateCloudFormationTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateCloudFormationTemplateResponse {
        return try await self.client.execute(operation: "CreateCloudFormationTemplate", path: "/applications/{ApplicationId}/templates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes the specified application.
    @Sendable
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "DeleteApplication", path: "/applications/{ApplicationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Gets the specified application.
    @Sendable
    public func getApplication(_ input: GetApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetApplicationResponse {
        return try await self.client.execute(operation: "GetApplication", path: "/applications/{ApplicationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the policy for the application.
    @Sendable
    public func getApplicationPolicy(_ input: GetApplicationPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetApplicationPolicyResponse {
        return try await self.client.execute(operation: "GetApplicationPolicy", path: "/applications/{ApplicationId}/policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Gets the specified AWS CloudFormation template.
    @Sendable
    public func getCloudFormationTemplate(_ input: GetCloudFormationTemplateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetCloudFormationTemplateResponse {
        return try await self.client.execute(operation: "GetCloudFormationTemplate", path: "/applications/{ApplicationId}/templates/{TemplateId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the list of applications nested in the containing application.
    @Sendable
    public func listApplicationDependencies(_ input: ListApplicationDependenciesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationDependenciesResponse {
        return try await self.client.execute(operation: "ListApplicationDependencies", path: "/applications/{ApplicationId}/dependencies", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists versions for the specified application.
    @Sendable
    public func listApplicationVersions(_ input: ListApplicationVersionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationVersionsResponse {
        return try await self.client.execute(operation: "ListApplicationVersions", path: "/applications/{ApplicationId}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists applications owned by the requester.
    @Sendable
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationsResponse {
        return try await self.client.execute(operation: "ListApplications", path: "/applications", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Sets the permission policy for an application. For the list of actions supported for this operation, see Application  Permissions .
    @Sendable
    public func putApplicationPolicy(_ input: PutApplicationPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutApplicationPolicyResponse {
        return try await self.client.execute(operation: "PutApplicationPolicy", path: "/applications/{ApplicationId}/policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.
    @Sendable
    public func unshareApplication(_ input: UnshareApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "UnshareApplication", path: "/applications/{ApplicationId}/unshare", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates the specified application.
    @Sendable
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateApplicationResponse {
        return try await self.client.execute(operation: "UpdateApplication", path: "/applications/{ApplicationId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension ServerlessApplicationRepository {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ServerlessApplicationRepository, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ServerlessApplicationRepository {
    /// Retrieves the list of applications nested in the containing application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationDependenciesPaginator(
        _ input: ListApplicationDependenciesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationDependenciesRequest, ListApplicationDependenciesResponse> {
        return .init(
            input: input,
            command: self.listApplicationDependencies,
            inputKey: \ListApplicationDependenciesRequest.nextToken,
            outputKey: \ListApplicationDependenciesResponse.nextToken,
            logger: logger
        )
    }

    /// Lists versions for the specified application.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationVersionsPaginator(
        _ input: ListApplicationVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationVersionsRequest, ListApplicationVersionsResponse> {
        return .init(
            input: input,
            command: self.listApplicationVersions,
            inputKey: \ListApplicationVersionsRequest.nextToken,
            outputKey: \ListApplicationVersionsResponse.nextToken,
            logger: logger
        )
    }

    /// Lists applications owned by the requester.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationsPaginator(
        _ input: ListApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationsRequest, ListApplicationsResponse> {
        return .init(
            input: input,
            command: self.listApplications,
            inputKey: \ListApplicationsRequest.nextToken,
            outputKey: \ListApplicationsResponse.nextToken,
            logger: logger
        )
    }
}

extension ServerlessApplicationRepository.ListApplicationDependenciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServerlessApplicationRepository.ListApplicationDependenciesRequest {
        return .init(
            applicationId: self.applicationId,
            maxItems: self.maxItems,
            nextToken: token,
            semanticVersion: self.semanticVersion
        )
    }
}

extension ServerlessApplicationRepository.ListApplicationVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServerlessApplicationRepository.ListApplicationVersionsRequest {
        return .init(
            applicationId: self.applicationId,
            maxItems: self.maxItems,
            nextToken: token
        )
    }
}

extension ServerlessApplicationRepository.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServerlessApplicationRepository.ListApplicationsRequest {
        return .init(
            maxItems: self.maxItems,
            nextToken: token
        )
    }
}
