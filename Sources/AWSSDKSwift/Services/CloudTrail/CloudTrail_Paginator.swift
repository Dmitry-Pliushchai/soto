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

import NIO

//MARK: Paginators

extension CloudTrail {

    ///  Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key. 
    public func listPublicKeysPaginator(
        _ input: ListPublicKeysRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPublicKeysResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPublicKeys, tokenKey: \ListPublicKeysResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the tags for the trail in the current region.
    public func listTagsPaginator(
        _ input: ListTagsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTags, tokenKey: \ListTagsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists trails that are in the current account.
    public func listTrailsPaginator(
        _ input: ListTrailsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTrailsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTrails, tokenKey: \ListTrailsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Looks up management events or CloudTrail Insights events that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:   AWS access key   Event ID   Event name   Event source   Read only   Resource name   Resource type   User name   Lookup supports the following attributes for Insights events:   Event ID   Event name   Event source   All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to two per second per account. If this limit is exceeded, a throttling error occurs. 
    public func lookupEventsPaginator(
        _ input: LookupEventsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (LookupEventsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: lookupEvents, tokenKey: \LookupEventsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension CloudTrail.ListPublicKeysRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListPublicKeysRequest {
        return .init(
            endTime: self.endTime,
            nextToken: token,
            startTime: self.startTime
        )

    }
}

extension CloudTrail.ListTagsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListTagsRequest {
        return .init(
            nextToken: token,
            resourceIdList: self.resourceIdList
        )

    }
}

extension CloudTrail.ListTrailsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.ListTrailsRequest {
        return .init(
            nextToken: token
        )

    }
}

extension CloudTrail.LookupEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudTrail.LookupEventsRequest {
        return .init(
            endTime: self.endTime,
            eventCategory: self.eventCategory,
            lookupAttributes: self.lookupAttributes,
            maxResults: self.maxResults,
            nextToken: token,
            startTime: self.startTime
        )

    }
}


