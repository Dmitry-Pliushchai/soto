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
Client object for interacting with AWS MediaPackageVod service.

AWS Elemental MediaPackage VOD
*/
public struct MediaPackageVod {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaPackageVod client
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
            service: "mediapackage-vod",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-07",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaPackageVodErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a new MediaPackage VOD Asset resource.
    public func createAsset(_ input: CreateAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetResponse> {
        return client.send(operation: "CreateAsset", path: "/assets", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new MediaPackage VOD PackagingConfiguration resource.
    public func createPackagingConfiguration(_ input: CreatePackagingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePackagingConfigurationResponse> {
        return client.send(operation: "CreatePackagingConfiguration", path: "/packaging_configurations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new MediaPackage VOD PackagingGroup resource.
    public func createPackagingGroup(_ input: CreatePackagingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePackagingGroupResponse> {
        return client.send(operation: "CreatePackagingGroup", path: "/packaging_groups", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an existing MediaPackage VOD Asset resource.
    public func deleteAsset(_ input: DeleteAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAssetResponse> {
        return client.send(operation: "DeleteAsset", path: "/assets/{id}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a MediaPackage VOD PackagingConfiguration resource.
    public func deletePackagingConfiguration(_ input: DeletePackagingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePackagingConfigurationResponse> {
        return client.send(operation: "DeletePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a MediaPackage VOD PackagingGroup resource.
    public func deletePackagingGroup(_ input: DeletePackagingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePackagingGroupResponse> {
        return client.send(operation: "DeletePackagingGroup", path: "/packaging_groups/{id}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD Asset resource.
    public func describeAsset(_ input: DescribeAssetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetResponse> {
        return client.send(operation: "DescribeAsset", path: "/assets/{id}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    public func describePackagingConfiguration(_ input: DescribePackagingConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagingConfigurationResponse> {
        return client.send(operation: "DescribePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a description of a MediaPackage VOD PackagingGroup resource.
    public func describePackagingGroup(_ input: DescribePackagingGroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagingGroupResponse> {
        return client.send(operation: "DescribePackagingGroup", path: "/packaging_groups/{id}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD Asset resources.
    public func listAssets(_ input: ListAssetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssetsResponse> {
        return client.send(operation: "ListAssets", path: "/assets", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurations(_ input: ListPackagingConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackagingConfigurationsResponse> {
        return client.send(operation: "ListPackagingConfigurations", path: "/packaging_configurations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroups(_ input: ListPackagingGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPackagingGroupsResponse> {
        return client.send(operation: "ListPackagingGroups", path: "/packaging_groups", httpMethod: "GET", input: input, on: eventLoop)
    }
}
