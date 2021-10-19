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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension MediaPackage {
    ///  Returns a collection of Channels.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelsRequest, ListChannelsResponse> {
        return .init(
            input: input,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a collection of HarvestJob records.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHarvestJobsPaginator(
        _ input: ListHarvestJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHarvestJobsRequest, ListHarvestJobsResponse> {
        return .init(
            input: input,
            command: listHarvestJobs,
            inputKey: \ListHarvestJobsRequest.nextToken,
            outputKey: \ListHarvestJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a collection of OriginEndpoint records.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOriginEndpointsPaginator(
        _ input: ListOriginEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOriginEndpointsRequest, ListOriginEndpointsResponse> {
        return .init(
            input: input,
            command: listOriginEndpoints,
            inputKey: \ListOriginEndpointsRequest.nextToken,
            outputKey: \ListOriginEndpointsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
