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
extension IdentityStore {
    ///  Lists the attribute name and value of the group that you specified in the search. We only support DisplayName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including GroupId and group DisplayName in the response.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupsRequest, ListGroupsResponse> {
        return .init(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the attribute name and value of the user that you specified in the search. We only support UserName as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including UserId and UserName in the response.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: listUsers,
            inputKey: \ListUsersRequest.nextToken,
            outputKey: \ListUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
