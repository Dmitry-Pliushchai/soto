//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS GroundStation service.

Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.
*/
public struct GroundStation {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the GroundStation client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "groundstation",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-05-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [GroundStationErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Cancels a contact with a specified contact ID.
    public func cancelContact(_ input: CancelContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ContactIdResponse> {
        return client.send(operation: "CancelContact", path: "/contact/{contactId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Creates a Config with the specified configData parameters. Only one type of configData can be specified.
    public func createConfig(_ input: CreateConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigIdResponse> {
        return client.send(operation: "CreateConfig", path: "/config", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.
    public func createDataflowEndpointGroup(_ input: CreateDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return client.send(operation: "CreateDataflowEndpointGroup", path: "/dataflowEndpointGroup", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a mission profile.  dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
    public func createMissionProfile(_ input: CreateMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.send(operation: "CreateMissionProfile", path: "/missionprofile", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a Config.
    public func deleteConfig(_ input: DeleteConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigIdResponse> {
        return client.send(operation: "DeleteConfig", path: "/config/{configType}/{configId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a dataflow endpoint group.
    public func deleteDataflowEndpointGroup(_ input: DeleteDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DataflowEndpointGroupIdResponse> {
        return client.send(operation: "DeleteDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a mission profile.
    public func deleteMissionProfile(_ input: DeleteMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.send(operation: "DeleteMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Describes an existing contact.
    public func describeContact(_ input: DescribeContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContactResponse> {
        return client.send(operation: "DescribeContact", path: "/contact/{contactId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns Config information. Only one Config response can be returned.
    public func getConfig(_ input: GetConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConfigResponse> {
        return client.send(operation: "GetConfig", path: "/config/{configType}/{configId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the dataflow endpoint group.
    public func getDataflowEndpointGroup(_ input: GetDataflowEndpointGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataflowEndpointGroupResponse> {
        return client.send(operation: "GetDataflowEndpointGroup", path: "/dataflowEndpointGroup/{dataflowEndpointGroupId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns the number of minutes used by account.
    public func getMinuteUsage(_ input: GetMinuteUsageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMinuteUsageResponse> {
        return client.send(operation: "GetMinuteUsage", path: "/minute-usage", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a mission profile.
    public func getMissionProfile(_ input: GetMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMissionProfileResponse> {
        return client.send(operation: "GetMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a satellite.
    public func getSatellite(_ input: GetSatelliteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSatelliteResponse> {
        return client.send(operation: "GetSatellite", path: "/satellite/{satelliteId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of Config objects.
    public func listConfigs(_ input: ListConfigsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConfigsResponse> {
        return client.send(operation: "ListConfigs", path: "/config", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 
    public func listContacts(_ input: ListContactsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListContactsResponse> {
        return client.send(operation: "ListContacts", path: "/contacts", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroups(_ input: ListDataflowEndpointGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataflowEndpointGroupsResponse> {
        return client.send(operation: "ListDataflowEndpointGroups", path: "/dataflowEndpointGroup", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of ground stations. 
    public func listGroundStations(_ input: ListGroundStationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGroundStationsResponse> {
        return client.send(operation: "ListGroundStations", path: "/groundstation", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of mission profiles.
    public func listMissionProfiles(_ input: ListMissionProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListMissionProfilesResponse> {
        return client.send(operation: "ListMissionProfiles", path: "/missionprofile", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of satellites.
    public func listSatellites(_ input: ListSatellitesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSatellitesResponse> {
        return client.send(operation: "ListSatellites", path: "/satellite", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a list of tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Reserves a contact using specified parameters.
    public func reserveContact(_ input: ReserveContactRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ContactIdResponse> {
        return client.send(operation: "ReserveContact", path: "/contact", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Assigns a tag to a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deassigns a resource tag.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
    public func updateConfig(_ input: UpdateConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigIdResponse> {
        return client.send(operation: "UpdateConfig", path: "/config/{configType}/{configId}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
    public func updateMissionProfile(_ input: UpdateMissionProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MissionProfileIdResponse> {
        return client.send(operation: "UpdateMissionProfile", path: "/missionprofile/{missionProfileId}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
