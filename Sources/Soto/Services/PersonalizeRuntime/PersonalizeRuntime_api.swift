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

/// Service object for interacting with AWS PersonalizeRuntime service.
public struct PersonalizeRuntime: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the PersonalizeRuntime client
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
            service: "personalize-runtime",
            signingName: "personalize",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-22",
            endpoint: endpoint,
            errorType: PersonalizeRuntimeErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Re-ranks a list of recommended items for the given user. The first item in the list is deemed the most likely item to be of interest to the user.  The solution backing the campaign must have been created using a recipe of type PERSONALIZED_RANKING.
    @Sendable
    public func getPersonalizedRanking(_ input: GetPersonalizedRankingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetPersonalizedRankingResponse {
        return try await self.client.execute(operation: "GetPersonalizedRanking", path: "/personalize-ranking", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a list of recommended items. For campaigns, the campaign's Amazon Resource Name (ARN) is required and the required user and item input depends on the recipe type used to create the solution backing the campaign as follows:   USER_PERSONALIZATION - userId required, itemId not used   RELATED_ITEMS - itemId required, userId not used    Campaigns that are backed by a solution created using a recipe of type PERSONALIZED_RANKING use the  API.   For recommenders, the recommender's ARN is required and the required item and user input depends on the use case (domain-based recipe) backing the recommender. For information on use case requirements see Choosing recommender use cases.
    @Sendable
    public func getRecommendations(_ input: GetRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRecommendationsResponse {
        return try await self.client.execute(operation: "GetRecommendations", path: "/recommendations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension PersonalizeRuntime {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: PersonalizeRuntime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
