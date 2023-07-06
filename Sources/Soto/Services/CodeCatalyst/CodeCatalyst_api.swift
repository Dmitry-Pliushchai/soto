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

/// Service object for interacting with AWS CodeCatalyst service.
///
/// Welcome to the Amazon CodeCatalyst API reference. This reference provides descriptions of operations and data types for Amazon CodeCatalyst. You can use the Amazon CodeCatalyst  API to work with the following objects.  Dev Environments and the Amazon Web Services Toolkits, by calling the following:    CreateAccessToken, which creates a personal access token (PAT) for the current user.    CreateDevEnvironment, which creates a Dev Environment,  where you can quickly work on the code stored in the source repositories of your project.    CreateProject which creates a project in a specified space.    CreateSourceRepositoryBranch, which creates a branch in a specified repository where you can work on code.    DeleteDevEnvironment, which deletes a Dev Environment.    GetDevEnvironment, which returns information about a Dev Environment.    GetProject, which returns information about a project.    GetSourceRepositoryCloneUrls, which returns information about the URLs that can be used with a Git client to clone a source repository.    GetSpace, which returns information about a space.    GetSubscription, which returns information about the Amazon Web Services account used for billing purposes  and the billing plan for the space.    GetUserDetails, which returns information about a user in Amazon CodeCatalyst.    ListDevEnvironments, which retrieves a list of Dev Environments in a project.    ListDevEnvironmentSessions, which retrieves a list of active Dev Environment sessions in a project.    ListProjects, which retrieves a list of projects in a space.    ListSourceRepositories, which retrieves a list of source repositories in a project.    ListSourceRepositoryBranches, which retrieves a list of branches in a source repository.    ListSpaces, which retrieves a list of spaces.    StartDevEnvironment, which starts a specified Dev Environment and puts it into an active state.    StartDevEnvironmentSession, which starts a session to a specified Dev Environment.    StopDevEnvironment, which stops a specified Dev Environment and puts it into an stopped state.    StopDevEnvironmentSession, which stops a session for a specified Dev Environment.    UpdateDevEnvironment, which changes one or more values for a Dev Environment.    VerifySession, which verifies whether the calling user has a valid Amazon CodeCatalyst login and session.   Security, activity, and resource management in Amazon CodeCatalyst, by calling the following:    DeleteAccessToken, which deletes a specified personal access token (PAT).    ListAccessTokens, which lists all personal access tokens (PATs) associated with a user.    ListEventLogs, which retrieves a list of events that occurred during a specified time period in a space.    If you are using the Amazon CodeCatalyst APIs with an SDK or the CLI, you must configure your computer to work with Amazon CodeCatalyst and single sign-on (SSO). For more information, see Setting up to use the CLI with Amazon CodeCatalyst and the SSO documentation for your SDK.
public struct CodeCatalyst: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeCatalyst client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: nil,
            partition: partition,
            service: "codecatalyst",
            serviceProtocol: .restjson,
            apiVersion: "2022-09-28",
            endpoint: endpoint,
            serviceEndpoints: [
                "aws-global": "codecatalyst.global.api.aws"
            ],
            errorType: CodeCatalystErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a personal access token (PAT) for the current user. A personal access token (PAT) is similar to a password.  It is associated with your user identity for use across all spaces and projects in Amazon CodeCatalyst. You use PATs to access CodeCatalyst  from resources that include integrated development environments (IDEs) and Git-based source repositories.   PATs represent you in Amazon CodeCatalyst and you can manage them in your user settings.For more information, see  Managing personal access tokens in Amazon CodeCatalyst.
    @Sendable
    public func createAccessToken(_ input: CreateAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAccessTokenResponse {
        return try await self.client.execute(operation: "CreateAccessToken", path: "/v1/accessTokens", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based development environment that you can use to quickly work on the code stored  in the source repositories of your project.         When created in the Amazon CodeCatalyst console, by default a Dev Environment is configured to have a 2 core processor, 4GB of RAM, and 16GB of persistent storage. None of these defaults apply to a Dev Environment created programmatically.
    @Sendable
    public func createDevEnvironment(_ input: CreateDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDevEnvironmentResponse {
        return try await self.client.execute(operation: "CreateDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a project in a specified space.
    @Sendable
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProjectResponse {
        return try await self.client.execute(operation: "CreateProject", path: "/v1/spaces/{spaceName}/projects", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a branch in a specified source repository in Amazon CodeCatalyst.   This API only creates a branch in a source repository hosted in Amazon CodeCatalyst. You cannot use this API to create a branch in a linked repository.
    @Sendable
    public func createSourceRepositoryBranch(_ input: CreateSourceRepositoryBranchRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSourceRepositoryBranchResponse {
        return try await self.client.execute(operation: "CreateSourceRepositoryBranch", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches/{name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a specified personal access token (PAT). A personal access token can only be deleted by the user who created it.
    @Sendable
    public func deleteAccessToken(_ input: DeleteAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteAccessTokenResponse {
        return try await self.client.execute(operation: "DeleteAccessToken", path: "/v1/accessTokens/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a Dev Environment.
    @Sendable
    public func deleteDevEnvironment(_ input: DeleteDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDevEnvironmentResponse {
        return try await self.client.execute(operation: "DeleteDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns information about a Dev Environment for a source repository in a project. Dev Environments are specific to the user who creates them.
    @Sendable
    public func getDevEnvironment(_ input: GetDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDevEnvironmentResponse {
        return try await self.client.execute(operation: "GetDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns information about a project.
    @Sendable
    public func getProject(_ input: GetProjectRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProjectResponse {
        return try await self.client.execute(operation: "GetProject", path: "/v1/spaces/{spaceName}/projects/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns information about the URLs that can be used with a Git client to clone a source repository.
    @Sendable
    public func getSourceRepositoryCloneUrls(_ input: GetSourceRepositoryCloneUrlsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSourceRepositoryCloneUrlsResponse {
        return try await self.client.execute(operation: "GetSourceRepositoryCloneUrls", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/cloneUrls", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns information about an space.
    @Sendable
    public func getSpace(_ input: GetSpaceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSpaceResponse {
        return try await self.client.execute(operation: "GetSpace", path: "/v1/spaces/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns information about the Amazon Web Services account used for billing purposes  and the billing plan for the space.
    @Sendable
    public func getSubscription(_ input: GetSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSubscriptionResponse {
        return try await self.client.execute(operation: "GetSubscription", path: "/v1/spaces/{spaceName}/subscription", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns information about a user.
    @Sendable
    public func getUserDetails(_ input: GetUserDetailsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetUserDetailsResponse {
        return try await self.client.execute(operation: "GetUserDetails", path: "/userDetails", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists all personal access tokens (PATs) associated with the user who calls the API. You can only list PATs associated with your Amazon Web Services Builder ID.
    @Sendable
    public func listAccessTokens(_ input: ListAccessTokensRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAccessTokensResponse {
        return try await self.client.execute(operation: "ListAccessTokens", path: "/v1/accessTokens", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of active sessions for a Dev Environment in a project.
    @Sendable
    public func listDevEnvironmentSessions(_ input: ListDevEnvironmentSessionsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDevEnvironmentSessionsResponse {
        return try await self.client.execute(operation: "ListDevEnvironmentSessions", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{devEnvironmentId}/sessions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of Dev Environments in a project.
    @Sendable
    public func listDevEnvironments(_ input: ListDevEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDevEnvironmentsResponse {
        return try await self.client.execute(operation: "ListDevEnvironments", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of events that occurred during a specified time period in a space. You can use these events to audit user and system activity in a space.
    @Sendable
    public func listEventLogs(_ input: ListEventLogsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEventLogsResponse {
        return try await self.client.execute(operation: "ListEventLogs", path: "/v1/spaces/{spaceName}/eventLogs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of projects.
    @Sendable
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProjectsResponse {
        return try await self.client.execute(operation: "ListProjects", path: "/v1/spaces/{spaceName}/projects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of source repositories in a project.
    @Sendable
    public func listSourceRepositories(_ input: ListSourceRepositoriesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSourceRepositoriesResponse {
        return try await self.client.execute(operation: "ListSourceRepositories", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of branches in a specified source repository.
    @Sendable
    public func listSourceRepositoryBranches(_ input: ListSourceRepositoryBranchesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSourceRepositoryBranchesResponse {
        return try await self.client.execute(operation: "ListSourceRepositoryBranches", path: "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of spaces.
    @Sendable
    public func listSpaces(_ input: ListSpacesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSpacesResponse {
        return try await self.client.execute(operation: "ListSpaces", path: "/v1/spaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Starts a specified Dev Environment and puts it into an active state.
    @Sendable
    public func startDevEnvironment(_ input: StartDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartDevEnvironmentResponse {
        return try await self.client.execute(operation: "StartDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/start", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Starts a session for a specified Dev Environment.
    @Sendable
    public func startDevEnvironmentSession(_ input: StartDevEnvironmentSessionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartDevEnvironmentSessionResponse {
        return try await self.client.execute(operation: "StartDevEnvironmentSession", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Pauses a specified Dev Environment and places it in a non-running state. Stopped Dev Environments do not consume compute minutes.
    @Sendable
    public func stopDevEnvironment(_ input: StopDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopDevEnvironmentResponse {
        return try await self.client.execute(operation: "StopDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/stop", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Stops a session for a specified Dev Environment.
    @Sendable
    public func stopDevEnvironmentSession(_ input: StopDevEnvironmentSessionRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopDevEnvironmentSessionResponse {
        return try await self.client.execute(operation: "StopDevEnvironmentSession", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session/{sessionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Changes one or more values for a Dev Environment. Updating certain values of the Dev Environment will cause a restart.
    @Sendable
    public func updateDevEnvironment(_ input: UpdateDevEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDevEnvironmentResponse {
        return try await self.client.execute(operation: "UpdateDevEnvironment", path: "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Verifies whether the calling user has a valid Amazon CodeCatalyst login and session.  If successful, this returns the ID of the user in Amazon CodeCatalyst.
    @Sendable
    public func verifySession(logger: Logger = AWSClient.loggingDisabled) async throws -> VerifySessionResponse {
        return try await self.client.execute(operation: "VerifySession", path: "/session", httpMethod: .GET, serviceConfig: self.config, logger: logger)
    }
}

extension CodeCatalyst {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeCatalyst, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CodeCatalyst {
    /// Lists all personal access tokens (PATs) associated with the user who calls the API. You can only list PATs associated with your Amazon Web Services Builder ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAccessTokensPaginator(
        _ input: ListAccessTokensRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAccessTokensRequest, ListAccessTokensResponse> {
        return .init(
            input: input,
            command: self.listAccessTokens,
            inputKey: \ListAccessTokensRequest.nextToken,
            outputKey: \ListAccessTokensResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of active sessions for a Dev Environment in a project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDevEnvironmentSessionsPaginator(
        _ input: ListDevEnvironmentSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDevEnvironmentSessionsRequest, ListDevEnvironmentSessionsResponse> {
        return .init(
            input: input,
            command: self.listDevEnvironmentSessions,
            inputKey: \ListDevEnvironmentSessionsRequest.nextToken,
            outputKey: \ListDevEnvironmentSessionsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of Dev Environments in a project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDevEnvironmentsPaginator(
        _ input: ListDevEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDevEnvironmentsRequest, ListDevEnvironmentsResponse> {
        return .init(
            input: input,
            command: self.listDevEnvironments,
            inputKey: \ListDevEnvironmentsRequest.nextToken,
            outputKey: \ListDevEnvironmentsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of events that occurred during a specified time period in a space. You can use these events to audit user and system activity in a space.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEventLogsPaginator(
        _ input: ListEventLogsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEventLogsRequest, ListEventLogsResponse> {
        return .init(
            input: input,
            command: self.listEventLogs,
            inputKey: \ListEventLogsRequest.nextToken,
            outputKey: \ListEventLogsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of projects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProjectsRequest, ListProjectsResponse> {
        return .init(
            input: input,
            command: self.listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of source repositories in a project.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSourceRepositoriesPaginator(
        _ input: ListSourceRepositoriesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSourceRepositoriesRequest, ListSourceRepositoriesResponse> {
        return .init(
            input: input,
            command: self.listSourceRepositories,
            inputKey: \ListSourceRepositoriesRequest.nextToken,
            outputKey: \ListSourceRepositoriesResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of branches in a specified source repository.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSourceRepositoryBranchesPaginator(
        _ input: ListSourceRepositoryBranchesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSourceRepositoryBranchesRequest, ListSourceRepositoryBranchesResponse> {
        return .init(
            input: input,
            command: self.listSourceRepositoryBranches,
            inputKey: \ListSourceRepositoryBranchesRequest.nextToken,
            outputKey: \ListSourceRepositoryBranchesResponse.nextToken,
            logger: logger
        )
    }

    /// Retrieves a list of spaces.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSpacesPaginator(
        _ input: ListSpacesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSpacesRequest, ListSpacesResponse> {
        return .init(
            input: input,
            command: self.listSpaces,
            inputKey: \ListSpacesRequest.nextToken,
            outputKey: \ListSpacesResponse.nextToken,
            logger: logger
        )
    }
}

extension CodeCatalyst.ListAccessTokensRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListAccessTokensRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension CodeCatalyst.ListDevEnvironmentSessionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListDevEnvironmentSessionsRequest {
        return .init(
            devEnvironmentId: self.devEnvironmentId,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListDevEnvironmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListDevEnvironmentsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListEventLogsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListEventLogsRequest {
        return .init(
            endTime: self.endTime,
            eventName: self.eventName,
            maxResults: self.maxResults,
            nextToken: token,
            spaceName: self.spaceName,
            startTime: self.startTime
        )
    }
}

extension CodeCatalyst.ListProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListProjectsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListSourceRepositoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListSourceRepositoriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListSourceRepositoryBranchesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListSourceRepositoryBranchesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            sourceRepositoryName: self.sourceRepositoryName,
            spaceName: self.spaceName
        )
    }
}

extension CodeCatalyst.ListSpacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeCatalyst.ListSpacesRequest {
        return .init(
            nextToken: token
        )
    }
}
