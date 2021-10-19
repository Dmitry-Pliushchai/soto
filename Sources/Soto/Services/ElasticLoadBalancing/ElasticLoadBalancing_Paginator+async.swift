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
extension ElasticLoadBalancing {
    ///  Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeLoadBalancersPaginator(
        _ input: DescribeAccessPointsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeAccessPointsInput, DescribeAccessPointsOutput> {
        return .init(
            input: input,
            command: describeLoadBalancers,
            inputKey: \DescribeAccessPointsInput.marker,
            outputKey: \DescribeAccessPointsOutput.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
