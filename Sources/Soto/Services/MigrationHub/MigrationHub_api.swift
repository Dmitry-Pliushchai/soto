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

/// Service object for interacting with AWS MigrationHub service.
///
/// The AWS Migration Hub API methods help to obtain server and application migration status and integrate your resource-specific migration tool by providing a programmatic interface to Migration Hub. Remember that you must set your AWS Migration Hub home region before you call any of these APIs, or a HomeRegionNotSetException error will be returned. Also, you must make the API calls while in your home region.
public struct MigrationHub: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MigrationHub client
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
            amzTarget: "AWSMigrationHub",
            service: "mgh",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-05-31",
            endpoint: endpoint,
            errorType: MigrationHubErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates a created artifact of an AWS cloud resource, the target receiving the migration, with the migration task performed by a migration tool. This API has the following traits:   Migration tools can call the AssociateCreatedArtifact operation to indicate which AWS artifact is associated with a migration task.   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or DMS endpoint, etc.
    @Sendable
    public func associateCreatedArtifact(_ input: AssociateCreatedArtifactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateCreatedArtifactResult {
        return try await self.client.execute(operation: "AssociateCreatedArtifact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Associates a discovered resource ID from Application Discovery Service with a migration task.
    @Sendable
    public func associateDiscoveredResource(_ input: AssociateDiscoveredResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssociateDiscoveredResourceResult {
        return try await self.client.execute(operation: "AssociateDiscoveredResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a progress update stream which is an AWS resource used for access control as well as a namespace for migration task names that is implicitly linked to your AWS account. It must uniquely identify the migration tool as it is used for all updates made by the tool; however, it does not need to be unique for each AWS account because it is scoped to the AWS account.
    @Sendable
    public func createProgressUpdateStream(_ input: CreateProgressUpdateStreamRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProgressUpdateStreamResult {
        return try await self.client.execute(operation: "CreateProgressUpdateStream", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a progress update stream, including all of its tasks, which was previously created as an AWS resource used for access control. This API has the following traits:   The only parameter needed for DeleteProgressUpdateStream is the stream name (same as a CreateProgressUpdateStream call).   The call will return, and a background process will asynchronously delete the stream and all of its resources (tasks, associated resources, resource attributes, created artifacts).   If the stream takes time to be deleted, it might still show up on a ListProgressUpdateStreams call.    CreateProgressUpdateStream, ImportMigrationTask, NotifyMigrationTaskState, and all Associate[*] APIs related to the tasks belonging to the stream will throw "InvalidInputException" if the stream of the same name is in the process of being deleted.   Once the stream and all of its resources are deleted, CreateProgressUpdateStream for a stream of the same name will succeed, and that stream will be an entirely new logical resource (without any resources associated with the old stream).
    @Sendable
    public func deleteProgressUpdateStream(_ input: DeleteProgressUpdateStreamRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProgressUpdateStreamResult {
        return try await self.client.execute(operation: "DeleteProgressUpdateStream", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Gets the migration status of an application.
    @Sendable
    public func describeApplicationState(_ input: DescribeApplicationStateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeApplicationStateResult {
        return try await self.client.execute(operation: "DescribeApplicationState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of all attributes associated with a specific migration task.
    @Sendable
    public func describeMigrationTask(_ input: DescribeMigrationTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeMigrationTaskResult {
        return try await self.client.execute(operation: "DescribeMigrationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Disassociates a created artifact of an AWS resource with a migration task performed by a migration tool that was previously associated. This API has the following traits:   A migration user can call the DisassociateCreatedArtifacts operation to disassociate a created AWS Artifact from a migration task.   The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.   Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or RDS instance, etc.
    @Sendable
    public func disassociateCreatedArtifact(_ input: DisassociateCreatedArtifactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateCreatedArtifactResult {
        return try await self.client.execute(operation: "DisassociateCreatedArtifact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Disassociate an Application Discovery Service discovered resource from a migration task.
    @Sendable
    public func disassociateDiscoveredResource(_ input: DisassociateDiscoveredResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DisassociateDiscoveredResourceResult {
        return try await self.client.execute(operation: "DisassociateDiscoveredResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Registers a new migration task which represents a server, database, etc., being migrated to AWS by a migration tool. This API is a prerequisite to calling the NotifyMigrationTaskState API as the migration tool must first register the migration task with Migration Hub.
    @Sendable
    public func importMigrationTask(_ input: ImportMigrationTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ImportMigrationTaskResult {
        return try await self.client.execute(operation: "ImportMigrationTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
    @Sendable
    public func listApplicationStates(_ input: ListApplicationStatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListApplicationStatesResult {
        return try await self.client.execute(operation: "ListApplicationStates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.
    @Sendable
    public func listCreatedArtifacts(_ input: ListCreatedArtifactsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListCreatedArtifactsResult {
        return try await self.client.execute(operation: "ListCreatedArtifacts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists discovered resources associated with the given MigrationTask.
    @Sendable
    public func listDiscoveredResources(_ input: ListDiscoveredResourcesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDiscoveredResourcesResult {
        return try await self.client.execute(operation: "ListDiscoveredResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.
    @Sendable
    public func listMigrationTasks(_ input: ListMigrationTasksRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMigrationTasksResult {
        return try await self.client.execute(operation: "ListMigrationTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists progress update streams associated with the user account making this call.
    @Sendable
    public func listProgressUpdateStreams(_ input: ListProgressUpdateStreamsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProgressUpdateStreamsResult {
        return try await self.client.execute(operation: "ListProgressUpdateStreams", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Sets the migration state of an application. For a given application identified by the value passed to ApplicationId, its status is set or updated by passing one of three values to Status: NOT_STARTED | IN_PROGRESS | COMPLETED.
    @Sendable
    public func notifyApplicationState(_ input: NotifyApplicationStateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> NotifyApplicationStateResult {
        return try await self.client.execute(operation: "NotifyApplicationState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Notifies Migration Hub of the current status, progress, or other detail regarding a migration task. This API has the following traits:   Migration tools will call the NotifyMigrationTaskState API to share the latest progress and status.    MigrationTaskName is used for addressing updates to the correct target.    ProgressUpdateStream is used for access control and to provide a namespace for each migration tool.
    @Sendable
    public func notifyMigrationTaskState(_ input: NotifyMigrationTaskStateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> NotifyMigrationTaskStateResult {
        return try await self.client.execute(operation: "NotifyMigrationTaskState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service repository. This association occurs asynchronously after PutResourceAttributes returns.    Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to add an IP address, it will then be required to call it with both the IP and MAC addresses to prevent overriding the MAC address.   Note the instructions regarding the special use case of the  ResourceAttributeList parameter when specifying any "VM" related value.
    ///   Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call ListDiscoveredResources.
    @Sendable
    public func putResourceAttributes(_ input: PutResourceAttributesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutResourceAttributesResult {
        return try await self.client.execute(operation: "PutResourceAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension MigrationHub {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MigrationHub, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension MigrationHub {
    /// Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listApplicationStatesPaginator(
        _ input: ListApplicationStatesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListApplicationStatesRequest, ListApplicationStatesResult> {
        return .init(
            input: input,
            command: self.listApplicationStates,
            inputKey: \ListApplicationStatesRequest.nextToken,
            outputKey: \ListApplicationStatesResult.nextToken,
            logger: logger
        )
    }

    /// Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listCreatedArtifactsPaginator(
        _ input: ListCreatedArtifactsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListCreatedArtifactsRequest, ListCreatedArtifactsResult> {
        return .init(
            input: input,
            command: self.listCreatedArtifacts,
            inputKey: \ListCreatedArtifactsRequest.nextToken,
            outputKey: \ListCreatedArtifactsResult.nextToken,
            logger: logger
        )
    }

    /// Lists discovered resources associated with the given MigrationTask.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDiscoveredResourcesPaginator(
        _ input: ListDiscoveredResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDiscoveredResourcesRequest, ListDiscoveredResourcesResult> {
        return .init(
            input: input,
            command: self.listDiscoveredResources,
            inputKey: \ListDiscoveredResourcesRequest.nextToken,
            outputKey: \ListDiscoveredResourcesResult.nextToken,
            logger: logger
        )
    }

    /// Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMigrationTasksPaginator(
        _ input: ListMigrationTasksRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMigrationTasksRequest, ListMigrationTasksResult> {
        return .init(
            input: input,
            command: self.listMigrationTasks,
            inputKey: \ListMigrationTasksRequest.nextToken,
            outputKey: \ListMigrationTasksResult.nextToken,
            logger: logger
        )
    }

    /// Lists progress update streams associated with the user account making this call.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProgressUpdateStreamsPaginator(
        _ input: ListProgressUpdateStreamsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProgressUpdateStreamsRequest, ListProgressUpdateStreamsResult> {
        return .init(
            input: input,
            command: self.listProgressUpdateStreams,
            inputKey: \ListProgressUpdateStreamsRequest.nextToken,
            outputKey: \ListProgressUpdateStreamsResult.nextToken,
            logger: logger
        )
    }
}

extension MigrationHub.ListApplicationStatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListApplicationStatesRequest {
        return .init(
            applicationIds: self.applicationIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MigrationHub.ListCreatedArtifactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListCreatedArtifactsRequest {
        return .init(
            maxResults: self.maxResults,
            migrationTaskName: self.migrationTaskName,
            nextToken: token,
            progressUpdateStream: self.progressUpdateStream
        )
    }
}

extension MigrationHub.ListDiscoveredResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListDiscoveredResourcesRequest {
        return .init(
            maxResults: self.maxResults,
            migrationTaskName: self.migrationTaskName,
            nextToken: token,
            progressUpdateStream: self.progressUpdateStream
        )
    }
}

extension MigrationHub.ListMigrationTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListMigrationTasksRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceName: self.resourceName
        )
    }
}

extension MigrationHub.ListProgressUpdateStreamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListProgressUpdateStreamsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
