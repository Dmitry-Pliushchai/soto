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

/// Service object for interacting with AWS IoTRoboRunner service.
///
/// An example service, deployed with the Octane Service creator,
/// which will echo the string
public struct IoTRoboRunner: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoTRoboRunner client
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
            service: "iotroborunner",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: IoTRoboRunnerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Grants permission to create a destination
    @Sendable
    public func createDestination(_ input: CreateDestinationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDestinationResponse {
        return try await self.client.execute(operation: "CreateDestination", path: "/createDestination", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to create a site
    @Sendable
    public func createSite(_ input: CreateSiteRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSiteResponse {
        return try await self.client.execute(operation: "CreateSite", path: "/createSite", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to create a worker
    @Sendable
    public func createWorker(_ input: CreateWorkerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateWorkerResponse {
        return try await self.client.execute(operation: "CreateWorker", path: "/createWorker", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to create a worker fleet
    @Sendable
    public func createWorkerFleet(_ input: CreateWorkerFleetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateWorkerFleetResponse {
        return try await self.client.execute(operation: "CreateWorkerFleet", path: "/createWorkerFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to delete a destination
    @Sendable
    public func deleteDestination(_ input: DeleteDestinationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteDestinationResponse {
        return try await self.client.execute(operation: "DeleteDestination", path: "/deleteDestination", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to delete a site
    @Sendable
    public func deleteSite(_ input: DeleteSiteRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteSiteResponse {
        return try await self.client.execute(operation: "DeleteSite", path: "/deleteSite", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to delete a worker
    @Sendable
    public func deleteWorker(_ input: DeleteWorkerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteWorkerResponse {
        return try await self.client.execute(operation: "DeleteWorker", path: "/deleteWorker", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to delete a worker fleet
    @Sendable
    public func deleteWorkerFleet(_ input: DeleteWorkerFleetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteWorkerFleetResponse {
        return try await self.client.execute(operation: "DeleteWorkerFleet", path: "/deleteWorkerFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to get a destination
    @Sendable
    public func getDestination(_ input: GetDestinationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDestinationResponse {
        return try await self.client.execute(operation: "GetDestination", path: "/getDestination", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to get a site
    @Sendable
    public func getSite(_ input: GetSiteRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSiteResponse {
        return try await self.client.execute(operation: "GetSite", path: "/getSite", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to get a worker
    @Sendable
    public func getWorker(_ input: GetWorkerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetWorkerResponse {
        return try await self.client.execute(operation: "GetWorker", path: "/getWorker", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to get a worker fleet
    @Sendable
    public func getWorkerFleet(_ input: GetWorkerFleetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetWorkerFleetResponse {
        return try await self.client.execute(operation: "GetWorkerFleet", path: "/getWorkerFleet", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to list destinations
    @Sendable
    public func listDestinations(_ input: ListDestinationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDestinationsResponse {
        return try await self.client.execute(operation: "ListDestinations", path: "/listDestinations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to list sites
    @Sendable
    public func listSites(_ input: ListSitesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSitesResponse {
        return try await self.client.execute(operation: "ListSites", path: "/listSites", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to list worker fleets
    @Sendable
    public func listWorkerFleets(_ input: ListWorkerFleetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListWorkerFleetsResponse {
        return try await self.client.execute(operation: "ListWorkerFleets", path: "/listWorkerFleets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to list workers
    @Sendable
    public func listWorkers(_ input: ListWorkersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListWorkersResponse {
        return try await self.client.execute(operation: "ListWorkers", path: "/listWorkers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to update a destination
    @Sendable
    public func updateDestination(_ input: UpdateDestinationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDestinationResponse {
        return try await self.client.execute(operation: "UpdateDestination", path: "/updateDestination", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to update a site
    @Sendable
    public func updateSite(_ input: UpdateSiteRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateSiteResponse {
        return try await self.client.execute(operation: "UpdateSite", path: "/updateSite", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to update a worker
    @Sendable
    public func updateWorker(_ input: UpdateWorkerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateWorkerResponse {
        return try await self.client.execute(operation: "UpdateWorker", path: "/updateWorker", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Grants permission to update a worker fleet
    @Sendable
    public func updateWorkerFleet(_ input: UpdateWorkerFleetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateWorkerFleetResponse {
        return try await self.client.execute(operation: "UpdateWorkerFleet", path: "/updateWorkerFleet", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension IoTRoboRunner {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoTRoboRunner, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension IoTRoboRunner {
    /// Grants permission to list destinations
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDestinationsPaginator(
        _ input: ListDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDestinationsRequest, ListDestinationsResponse> {
        return .init(
            input: input,
            command: self.listDestinations,
            inputKey: \ListDestinationsRequest.nextToken,
            outputKey: \ListDestinationsResponse.nextToken,
            logger: logger
        )
    }

    /// Grants permission to list sites
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSitesPaginator(
        _ input: ListSitesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSitesRequest, ListSitesResponse> {
        return .init(
            input: input,
            command: self.listSites,
            inputKey: \ListSitesRequest.nextToken,
            outputKey: \ListSitesResponse.nextToken,
            logger: logger
        )
    }

    /// Grants permission to list worker fleets
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listWorkerFleetsPaginator(
        _ input: ListWorkerFleetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListWorkerFleetsRequest, ListWorkerFleetsResponse> {
        return .init(
            input: input,
            command: self.listWorkerFleets,
            inputKey: \ListWorkerFleetsRequest.nextToken,
            outputKey: \ListWorkerFleetsResponse.nextToken,
            logger: logger
        )
    }

    /// Grants permission to list workers
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listWorkersPaginator(
        _ input: ListWorkersRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListWorkersRequest, ListWorkersResponse> {
        return .init(
            input: input,
            command: self.listWorkers,
            inputKey: \ListWorkersRequest.nextToken,
            outputKey: \ListWorkersResponse.nextToken,
            logger: logger
        )
    }
}

extension IoTRoboRunner.ListDestinationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTRoboRunner.ListDestinationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            site: self.site,
            state: self.state
        )
    }
}

extension IoTRoboRunner.ListSitesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTRoboRunner.ListSitesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension IoTRoboRunner.ListWorkerFleetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTRoboRunner.ListWorkerFleetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            site: self.site
        )
    }
}

extension IoTRoboRunner.ListWorkersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTRoboRunner.ListWorkersRequest {
        return .init(
            fleet: self.fleet,
            maxResults: self.maxResults,
            nextToken: token,
            site: self.site
        )
    }
}
