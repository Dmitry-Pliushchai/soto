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

/// Service object for interacting with AWS SavingsPlans service.
///
/// Savings Plans are a pricing model that offer significant savings on AWS usage (for example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For more information, see the AWS Savings Plans User Guide.
public struct SavingsPlans: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SavingsPlans client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "SavingsPlans",
            serviceIdentifier: "savingsplans",
            serviceProtocol: .restjson,
            apiVersion: "2019-06-28",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            errorType: SavingsPlansErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "aws-global": "savingsplans.amazonaws.com",
        "cn-north-1": "savingsplans.cn-north-1.amazonaws.com.cn",
        "cn-northwest-1": "savingsplans.cn-northwest-1.amazonaws.com.cn"
    ]}



    // MARK: API Calls

    /// Creates a Savings Plan.
    @Sendable
    public func createSavingsPlan(_ input: CreateSavingsPlanRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateSavingsPlanResponse {
        return try await self.client.execute(
            operation: "CreateSavingsPlan", 
            path: "/CreateSavingsPlan", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes the queued purchase for the specified Savings Plan.
    @Sendable
    public func deleteQueuedSavingsPlan(_ input: DeleteQueuedSavingsPlanRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteQueuedSavingsPlanResponse {
        return try await self.client.execute(
            operation: "DeleteQueuedSavingsPlan", 
            path: "/DeleteQueuedSavingsPlan", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified Savings Plans rates.
    @Sendable
    public func describeSavingsPlanRates(_ input: DescribeSavingsPlanRatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSavingsPlanRatesResponse {
        return try await self.client.execute(
            operation: "DescribeSavingsPlanRates", 
            path: "/DescribeSavingsPlanRates", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified Savings Plans.
    @Sendable
    public func describeSavingsPlans(_ input: DescribeSavingsPlansRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSavingsPlansResponse {
        return try await self.client.execute(
            operation: "DescribeSavingsPlans", 
            path: "/DescribeSavingsPlans", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified Savings Plans offering rates.
    @Sendable
    public func describeSavingsPlansOfferingRates(_ input: DescribeSavingsPlansOfferingRatesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSavingsPlansOfferingRatesResponse {
        return try await self.client.execute(
            operation: "DescribeSavingsPlansOfferingRates", 
            path: "/DescribeSavingsPlansOfferingRates", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Describes the specified Savings Plans offerings.
    @Sendable
    public func describeSavingsPlansOfferings(_ input: DescribeSavingsPlansOfferingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeSavingsPlansOfferingsResponse {
        return try await self.client.execute(
            operation: "DescribeSavingsPlansOfferings", 
            path: "/DescribeSavingsPlansOfferings", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists the tags for the specified resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/ListTagsForResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Adds the specified tags to the specified resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/TagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Removes the specified tags from the specified resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/UntagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension SavingsPlans {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SavingsPlans, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
