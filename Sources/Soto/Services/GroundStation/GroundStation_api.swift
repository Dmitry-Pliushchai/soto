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

/// Service object for interacting with AWS GroundStation service.
///
/// Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.
public struct GroundStation: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the GroundStation client
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
            service: "groundstation",
            serviceProtocol: .restjson,
            apiVersion: "2019-05-23",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "groundstation-fips.us-east-1.amazonaws.com",
                    "us-east-2": "groundstation-fips.us-east-2.amazonaws.com",
                    "us-west-2": "groundstation-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: GroundStationErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Cancels a contact with a specified contact ID.
    @Sendable
    public func cancelContact(_ input: CancelContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ContactIdResponse {
        return try await self.client.execute(operation: "CancelContact", path: "/contact/{contactId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a Config with the specified configData parameters. Only one type of configData can be specified.
    @Sendable
    public func createConfig(_ input: CreateConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ConfigIdResponse {
        return try await self.client.execute(operation: "CreateConfig", path: "/config", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig  to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config  must match a DataflowEndpoint in the same group.
    @Sendable
    public func createDataflowEndpointGroup(_ input: CreateDataflowEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DataflowEndpointGroupIdResponse {
        return try await self.client.execute(operation: "CreateDataflowEndpointGroup", path: "/dataflowEndpointGroup", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an Ephemeris with the specified EphemerisData.
    @Sendable
    public func createEphemeris(_ input: CreateEphemerisRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EphemerisIdResponse {
        return try await self.client.execute(operation: "CreateEphemeris", path: "/ephemeris", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
    @Sendable
    public func createMissionProfile(_ input: CreateMissionProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> MissionProfileIdResponse {
        return try await self.client.execute(operation: "CreateMissionProfile", path: "/missionprofile", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a Config.
    @Sendable
    public func deleteConfig(_ input: DeleteConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ConfigIdResponse {
        return try await self.client.execute(operation: "DeleteConfig", path: "/config/{configType}/{configId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a dataflow endpoint group.
    @Sendable
    public func deleteDataflowEndpointGroup(_ input: DeleteDataflowEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DataflowEndpointGroupIdResponse {
        return try await self.client.execute(operation: "DeleteDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes an ephemeris
    @Sendable
    public func deleteEphemeris(_ input: DeleteEphemerisRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EphemerisIdResponse {
        return try await self.client.execute(operation: "DeleteEphemeris", path: "/ephemeris/{ephemerisId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a mission profile.
    @Sendable
    public func deleteMissionProfile(_ input: DeleteMissionProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> MissionProfileIdResponse {
        return try await self.client.execute(operation: "DeleteMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Describes an existing contact.
    @Sendable
    public func describeContact(_ input: DescribeContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeContactResponse {
        return try await self.client.execute(operation: "DescribeContact", path: "/contact/{contactId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Describes an existing ephemeris.
    @Sendable
    public func describeEphemeris(_ input: DescribeEphemerisRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEphemerisResponse {
        return try await self.client.execute(operation: "DescribeEphemeris", path: "/ephemeris/{ephemerisId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    ///  For use by AWS Ground Station Agent and shouldn't be called directly.  Gets the latest configuration information for a registered agent.
    @Sendable
    public func getAgentConfiguration(_ input: GetAgentConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAgentConfigurationResponse {
        return try await self.client.execute(operation: "GetAgentConfiguration", path: "/agent/{agentId}/configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns Config information. Only one Config response can be returned.
    @Sendable
    public func getConfig(_ input: GetConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetConfigResponse {
        return try await self.client.execute(operation: "GetConfig", path: "/config/{configType}/{configId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns the dataflow endpoint group.
    @Sendable
    public func getDataflowEndpointGroup(_ input: GetDataflowEndpointGroupRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetDataflowEndpointGroupResponse {
        return try await self.client.execute(operation: "GetDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns the number of reserved minutes used by account.
    @Sendable
    public func getMinuteUsage(_ input: GetMinuteUsageRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMinuteUsageResponse {
        return try await self.client.execute(operation: "GetMinuteUsage", path: "/minute-usage", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a mission profile.
    @Sendable
    public func getMissionProfile(_ input: GetMissionProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetMissionProfileResponse {
        return try await self.client.execute(operation: "GetMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a satellite.
    @Sendable
    public func getSatellite(_ input: GetSatelliteRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetSatelliteResponse {
        return try await self.client.execute(operation: "GetSatellite", path: "/satellite/{satelliteId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of Config objects.
    @Sendable
    public func listConfigs(_ input: ListConfigsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListConfigsResponse {
        return try await self.client.execute(operation: "ListConfigs", path: "/config", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn.
    @Sendable
    public func listContacts(_ input: ListContactsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListContactsResponse {
        return try await self.client.execute(operation: "ListContacts", path: "/contacts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of DataflowEndpoint groups.
    @Sendable
    public func listDataflowEndpointGroups(_ input: ListDataflowEndpointGroupsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDataflowEndpointGroupsResponse {
        return try await self.client.execute(operation: "ListDataflowEndpointGroups", path: "/dataflowEndpointGroup", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// List existing ephemerides.
    @Sendable
    public func listEphemerides(_ input: ListEphemeridesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListEphemeridesResponse {
        return try await self.client.execute(operation: "ListEphemerides", path: "/ephemerides", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of ground stations.
    @Sendable
    public func listGroundStations(_ input: ListGroundStationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListGroundStationsResponse {
        return try await self.client.execute(operation: "ListGroundStations", path: "/groundstation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of mission profiles.
    @Sendable
    public func listMissionProfiles(_ input: ListMissionProfilesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListMissionProfilesResponse {
        return try await self.client.execute(operation: "ListMissionProfiles", path: "/missionprofile", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of satellites.
    @Sendable
    public func listSatellites(_ input: ListSatellitesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListSatellitesResponse {
        return try await self.client.execute(operation: "ListSatellites", path: "/satellite", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of tags for a specified resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    ///  For use by AWS Ground Station Agent and shouldn't be called directly.  Registers a new agent with AWS Ground Station.
    @Sendable
    public func registerAgent(_ input: RegisterAgentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RegisterAgentResponse {
        return try await self.client.execute(operation: "RegisterAgent", path: "/agent", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Reserves a contact using specified parameters.
    @Sendable
    public func reserveContact(_ input: ReserveContactRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ContactIdResponse {
        return try await self.client.execute(operation: "ReserveContact", path: "/contact", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Assigns a tag to a resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deassigns a resource tag.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    ///  For use by AWS Ground Station Agent and shouldn't be called directly.  Update the status of the agent.
    @Sendable
    public func updateAgentStatus(_ input: UpdateAgentStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateAgentStatusResponse {
        return try await self.client.execute(operation: "UpdateAgentStatus", path: "/agent/{agentId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
    @Sendable
    public func updateConfig(_ input: UpdateConfigRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ConfigIdResponse {
        return try await self.client.execute(operation: "UpdateConfig", path: "/config/{configType}/{configId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates an existing ephemeris
    @Sendable
    public func updateEphemeris(_ input: UpdateEphemerisRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> EphemerisIdResponse {
        return try await self.client.execute(operation: "UpdateEphemeris", path: "/ephemeris/{ephemerisId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
    @Sendable
    public func updateMissionProfile(_ input: UpdateMissionProfileRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> MissionProfileIdResponse {
        return try await self.client.execute(operation: "UpdateMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension GroundStation {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: GroundStation, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension GroundStation {
    /// Returns a list of Config objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listConfigsPaginator(
        _ input: ListConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListConfigsRequest, ListConfigsResponse> {
        return .init(
            input: input,
            command: self.listConfigs,
            inputKey: \ListConfigsRequest.nextToken,
            outputKey: \ListConfigsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listContactsPaginator(
        _ input: ListContactsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListContactsRequest, ListContactsResponse> {
        return .init(
            input: input,
            command: self.listContacts,
            inputKey: \ListContactsRequest.nextToken,
            outputKey: \ListContactsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of DataflowEndpoint groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDataflowEndpointGroupsPaginator(
        _ input: ListDataflowEndpointGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDataflowEndpointGroupsRequest, ListDataflowEndpointGroupsResponse> {
        return .init(
            input: input,
            command: self.listDataflowEndpointGroups,
            inputKey: \ListDataflowEndpointGroupsRequest.nextToken,
            outputKey: \ListDataflowEndpointGroupsResponse.nextToken,
            logger: logger
        )
    }

    /// List existing ephemerides.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listEphemeridesPaginator(
        _ input: ListEphemeridesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListEphemeridesRequest, ListEphemeridesResponse> {
        return .init(
            input: input,
            command: self.listEphemerides,
            inputKey: \ListEphemeridesRequest.nextToken,
            outputKey: \ListEphemeridesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of ground stations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listGroundStationsPaginator(
        _ input: ListGroundStationsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListGroundStationsRequest, ListGroundStationsResponse> {
        return .init(
            input: input,
            command: self.listGroundStations,
            inputKey: \ListGroundStationsRequest.nextToken,
            outputKey: \ListGroundStationsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of mission profiles.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listMissionProfilesPaginator(
        _ input: ListMissionProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListMissionProfilesRequest, ListMissionProfilesResponse> {
        return .init(
            input: input,
            command: self.listMissionProfiles,
            inputKey: \ListMissionProfilesRequest.nextToken,
            outputKey: \ListMissionProfilesResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of satellites.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listSatellitesPaginator(
        _ input: ListSatellitesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListSatellitesRequest, ListSatellitesResponse> {
        return .init(
            input: input,
            command: self.listSatellites,
            inputKey: \ListSatellitesRequest.nextToken,
            outputKey: \ListSatellitesResponse.nextToken,
            logger: logger
        )
    }
}

extension GroundStation.ListConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListConfigsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GroundStation.ListContactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListContactsRequest {
        return .init(
            endTime: self.endTime,
            groundStation: self.groundStation,
            maxResults: self.maxResults,
            missionProfileArn: self.missionProfileArn,
            nextToken: token,
            satelliteArn: self.satelliteArn,
            startTime: self.startTime,
            statusList: self.statusList
        )
    }
}

extension GroundStation.ListDataflowEndpointGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListDataflowEndpointGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GroundStation.ListEphemeridesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListEphemeridesRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            satelliteId: self.satelliteId,
            startTime: self.startTime,
            statusList: self.statusList
        )
    }
}

extension GroundStation.ListGroundStationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListGroundStationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            satelliteId: self.satelliteId
        )
    }
}

extension GroundStation.ListMissionProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListMissionProfilesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GroundStation.ListSatellitesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListSatellitesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension GroundStation {
    public func waitUntilContactScheduled(
        _ input: DescribeContactRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESPathMatcher("contactStatus", expected: "FAILED_TO_SCHEDULE")),
                .init(state: .success, matcher: try! JMESPathMatcher("contactStatus", expected: "SCHEDULED")),
            ],
            minDelayTime: .seconds(5),
            maxDelayTime: .seconds(900),
            command: self.describeContact
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger)
    }
}
