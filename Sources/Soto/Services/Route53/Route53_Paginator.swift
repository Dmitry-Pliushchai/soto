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

extension Route53 {
    ///  Retrieve a list of the health checks that are associated with the current Amazon Web Services account.
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
    public func listHealthChecksPaginator<Result>(
        _ input: ListHealthChecksRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListHealthChecksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listHealthChecks,
            inputKey: \ListHealthChecksRequest.marker,
            outputKey: \ListHealthChecksResponse.nextMarker,
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
    public func listHealthChecksPaginator(
        _ input: ListHealthChecksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListHealthChecksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHealthChecks,
            inputKey: \ListHealthChecksRequest.marker,
            outputKey: \ListHealthChecksResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list of the public and private hosted zones that are associated with the current Amazon Web Services account. The response
    ///  			includes a HostedZones child element for each hosted zone.
    ///  		       Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the
    ///  			maxitems parameter to list them in groups of up to 100.
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
    public func listHostedZonesPaginator<Result>(
        _ input: ListHostedZonesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListHostedZonesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listHostedZones,
            inputKey: \ListHostedZonesRequest.marker,
            outputKey: \ListHostedZonesResponse.nextMarker,
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
    public func listHostedZonesPaginator(
        _ input: ListHostedZonesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListHostedZonesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listHostedZones,
            inputKey: \ListHostedZonesRequest.marker,
            outputKey: \ListHostedZonesResponse.nextMarker,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the configurations for DNS query logging that are associated with the current Amazon Web Services account or the configuration
    ///  			that is associated with a specified hosted zone.
    ///  		       For more information about DNS query logs, see
    ///  			CreateQueryLoggingConfig.
    ///  			Additional information, including the format of DNS query logs, appears in
    ///  			Logging DNS Queries
    ///  			in the Amazon Route 53 Developer Guide.
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
    public func listQueryLoggingConfigsPaginator<Result>(
        _ input: ListQueryLoggingConfigsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListQueryLoggingConfigsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listQueryLoggingConfigs,
            inputKey: \ListQueryLoggingConfigsRequest.nextToken,
            outputKey: \ListQueryLoggingConfigsResponse.nextToken,
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
    public func listQueryLoggingConfigsPaginator(
        _ input: ListQueryLoggingConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListQueryLoggingConfigsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listQueryLoggingConfigs,
            inputKey: \ListQueryLoggingConfigsRequest.nextToken,
            outputKey: \ListQueryLoggingConfigsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Route53.ListHealthChecksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53.ListHealthChecksRequest {
        return .init(
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Route53.ListHostedZonesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53.ListHostedZonesRequest {
        return .init(
            delegationSetId: self.delegationSetId,
            marker: token,
            maxItems: self.maxItems
        )
    }
}

extension Route53.ListQueryLoggingConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Route53.ListQueryLoggingConfigsRequest {
        return .init(
            hostedZoneId: self.hostedZoneId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
