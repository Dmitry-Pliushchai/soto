//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

import SotoCore

// MARK: Paginators

extension SMS {
    ///  Describes the connectors registered with the AWS SMS.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getConnectorsPaginator<Result>(
        _ input: GetConnectorsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetConnectorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getConnectors,
            inputKey: \GetConnectorsRequest.nextToken,
            outputKey: \GetConnectorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getConnectorsPaginator(
        _ input: GetConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetConnectorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getConnectors,
            inputKey: \GetConnectorsRequest.nextToken,
            outputKey: \GetConnectorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the specified replication job or all of your replication jobs.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getReplicationJobsPaginator<Result>(
        _ input: GetReplicationJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetReplicationJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getReplicationJobs,
            inputKey: \GetReplicationJobsRequest.nextToken,
            outputKey: \GetReplicationJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getReplicationJobsPaginator(
        _ input: GetReplicationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetReplicationJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getReplicationJobs,
            inputKey: \GetReplicationJobsRequest.nextToken,
            outputKey: \GetReplicationJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the replication runs for the specified replication job.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getReplicationRunsPaginator<Result>(
        _ input: GetReplicationRunsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetReplicationRunsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getReplicationRuns,
            inputKey: \GetReplicationRunsRequest.nextToken,
            outputKey: \GetReplicationRunsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getReplicationRunsPaginator(
        _ input: GetReplicationRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetReplicationRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getReplicationRuns,
            inputKey: \GetReplicationRunsRequest.nextToken,
            outputKey: \GetReplicationRunsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getServersPaginator<Result>(
        _ input: GetServersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetServersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getServers,
            inputKey: \GetServersRequest.nextToken,
            outputKey: \GetServersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getServersPaginator(
        _ input: GetServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetServersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getServers,
            inputKey: \GetServersRequest.nextToken,
            outputKey: \GetServersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SMS.GetConnectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetConnectorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SMS.GetReplicationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetReplicationJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            replicationJobId: self.replicationJobId
        )
    }
}

extension SMS.GetReplicationRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetReplicationRunsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            replicationJobId: self.replicationJobId
        )
    }
}

extension SMS.GetServersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SMS.GetServersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            vmServerAddressList: self.vmServerAddressList
        )
    }
}
