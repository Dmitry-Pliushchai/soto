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

/// Service object for interacting with AWS EMRServerless service.
///
/// Amazon EMR Serverless is a new deployment option for Amazon EMR. EMR Serverless provides a serverless runtime environment that simplifies running analytics applications using the latest open source frameworks such as Apache Spark and Apache Hive. With EMR Serverless, you don’t have to configure, optimize, secure, or operate clusters to run applications with these frameworks. The API reference to Amazon EMR Serverless is emr-serverless. The emr-serverless prefix is used in the following scenarios:    It is the prefix in the CLI commands for Amazon EMR Serverless. For example, aws emr-serverless start-job-run.   It is the prefix before IAM policy actions for Amazon EMR Serverless. For example, "Action": ["emr-serverless:StartJobRun"]. For more information, see Policy actions for Amazon EMR Serverless.   It is the prefix used in Amazon EMR Serverless service endpoints. For example, emr-serverless.us-east-2.amazonaws.com.
public struct EMRServerless: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the EMRServerless client
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
            service: "emr-serverless",
            serviceProtocol: .restjson,
            apiVersion: "2021-07-13",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "ca-central-1": "emr-serverless-fips.ca-central-1.amazonaws.com",
                    "us-east-1": "emr-serverless-fips.us-east-1.amazonaws.com",
                    "us-east-2": "emr-serverless-fips.us-east-2.amazonaws.com",
                    "us-west-1": "emr-serverless-fips.us-west-1.amazonaws.com",
                    "us-west-2": "emr-serverless-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: EMRServerlessErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Cancels a job run.
    @Sendable
    public func cancelJobRun(_ input: CancelJobRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelJobRunResponse {
        return try await self.client.execute(operation: "CancelJobRun", path: "/applications/{applicationId}/jobruns/{jobRunId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an application.
    @Sendable
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateApplicationResponse {
        return try await self.client.execute(operation: "CreateApplication", path: "/applications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes an application. An application has to be in a stopped or created state in order to be deleted.
    @Sendable
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteApplicationResponse {
        return try await self.client.execute(operation: "DeleteApplication", path: "/applications/{applicationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Displays detailed information about a specified application.
    @Sendable
    public func getApplication(_ input: GetApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetApplicationResponse {
        return try await self.client.execute(operation: "GetApplication", path: "/applications/{applicationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a URL to access the job run dashboard. The generated URL is valid for one hour, after which you must invoke the API again to generate a new URL.
    @Sendable
    public func getDashboardForJobRun(_ input: GetDashboardForJobRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDashboardForJobRunResponse {
        return try await self.client.execute(operation: "GetDashboardForJobRun", path: "/applications/{applicationId}/jobruns/{jobRunId}/dashboard", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Displays detailed information about a job run.
    @Sendable
    public func getJobRun(_ input: GetJobRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetJobRunResponse {
        return try await self.client.execute(operation: "GetJobRun", path: "/applications/{applicationId}/jobruns/{jobRunId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists applications based on a set of parameters.
    @Sendable
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationsResponse {
        return try await self.client.execute(operation: "ListApplications", path: "/applications", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists job runs based on a set of parameters.
    @Sendable
    public func listJobRuns(_ input: ListJobRunsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobRunsResponse {
        return try await self.client.execute(operation: "ListJobRuns", path: "/applications/{applicationId}/jobruns", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists the tags assigned to the resources.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Starts a specified application and initializes initial capacity if configured.
    @Sendable
    public func startApplication(_ input: StartApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartApplicationResponse {
        return try await self.client.execute(operation: "StartApplication", path: "/applications/{applicationId}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Starts a job run.
    @Sendable
    public func startJobRun(_ input: StartJobRunRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartJobRunResponse {
        return try await self.client.execute(operation: "StartJobRun", path: "/applications/{applicationId}/jobruns", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Stops a specified application and releases initial capacity if configured. All scheduled and running jobs must be completed or cancelled before stopping an application.
    @Sendable
    public func stopApplication(_ input: StopApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopApplicationResponse {
        return try await self.client.execute(operation: "StopApplication", path: "/applications/{applicationId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Assigns tags to resources. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize your Amazon Web Services resources by attributes such as purpose, owner, or environment. When you have many resources of the same type, you can quickly identify a specific resource based on the tags you've assigned to it.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Removes tags from resources.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates a specified application. An application has to be in a stopped or created state in order to be updated.
    @Sendable
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateApplicationResponse {
        return try await self.client.execute(operation: "UpdateApplication", path: "/applications/{applicationId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension EMRServerless {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: EMRServerless, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension EMRServerless {
    /// Lists applications based on a set of parameters.
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

    /// Lists job runs based on a set of parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobRunsPaginator(
        _ input: ListJobRunsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobRunsRequest, ListJobRunsResponse> {
        return .init(
            input: input,
            command: self.listJobRuns,
            inputKey: \ListJobRunsRequest.nextToken,
            outputKey: \ListJobRunsResponse.nextToken,
            logger: logger
        )
    }
}

extension EMRServerless.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMRServerless.ListApplicationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states
        )
    }
}

extension EMRServerless.ListJobRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> EMRServerless.ListJobRunsRequest {
        return .init(
            applicationId: self.applicationId,
            createdAtAfter: self.createdAtAfter,
            createdAtBefore: self.createdAtBefore,
            maxResults: self.maxResults,
            nextToken: token,
            states: self.states
        )
    }
}
