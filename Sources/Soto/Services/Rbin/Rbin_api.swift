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

/// Service object for interacting with AWS Rbin service.
///
/// This is the Recycle Bin API Reference. This documentation provides  descriptions and syntax for each of the actions and data types in Recycle Bin.  Recycle Bin is a resource recovery feature that enables you to restore accidentally  deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if your resources are  deleted, they are retained in the Recycle Bin for a time period that you specify.   You can restore a resource from the Recycle Bin at any time before its retention period  expires. After you restore a resource from the Recycle Bin, the resource is removed from the  Recycle Bin, and you can then use it in the same way you use any other resource of that type  in your account. If the retention period expires and the resource is not restored, the resource  is permanently deleted from the Recycle Bin and is no longer available for recovery. For more  information about Recycle Bin, see  Recycle Bin in the Amazon Elastic Compute Cloud User Guide.
public struct Rbin: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Rbin client
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
            service: "rbin",
            serviceProtocol: .restjson,
            apiVersion: "2021-06-15",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "ca-central-1": "rbin-fips.ca-central-1.amazonaws.com",
                    "us-east-1": "rbin-fips.us-east-1.amazonaws.com",
                    "us-east-2": "rbin-fips.us-east-2.amazonaws.com",
                    "us-gov-east-1": "rbin-fips.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "rbin-fips.us-gov-west-1.amazonaws.com",
                    "us-iso-east-1": "rbin-fips.us-iso-east-1.c2s.ic.gov",
                    "us-isob-east-1": "rbin-fips.us-isob-east-1.sc2s.sgov.gov",
                    "us-west-1": "rbin-fips.us-west-1.amazonaws.com",
                    "us-west-2": "rbin-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: RbinErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a Recycle Bin retention rule. For more information, see  Create Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    @Sendable
    public func createRule(_ input: CreateRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateRuleResponse {
        return try await self.client.execute(operation: "CreateRule", path: "/rules", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes a Recycle Bin retention rule. For more information, see  Delete Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    @Sendable
    public func deleteRule(_ input: DeleteRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteRuleResponse {
        return try await self.client.execute(operation: "DeleteRule", path: "/rules/{Identifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Gets information about a Recycle Bin retention rule.
    @Sendable
    public func getRule(_ input: GetRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRuleResponse {
        return try await self.client.execute(operation: "GetRule", path: "/rules/{Identifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists the Recycle Bin retention rules in the Region.
    @Sendable
    public func listRules(_ input: ListRulesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListRulesResponse {
        return try await self.client.execute(operation: "ListRules", path: "/list-rules", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists the tags assigned to a retention rule.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Locks a retention rule. A locked retention rule can't be modified or deleted.
    @Sendable
    public func lockRule(_ input: LockRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> LockRuleResponse {
        return try await self.client.execute(operation: "LockRule", path: "/rules/{Identifier}/lock", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Assigns tags to the specified retention rule.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Unlocks a retention rule. After a retention rule is unlocked, it can be modified or deleted  only after the unlock delay period expires.
    @Sendable
    public func unlockRule(_ input: UnlockRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UnlockRuleResponse {
        return try await self.client.execute(operation: "UnlockRule", path: "/rules/{Identifier}/unlock", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Unassigns a tag from a retention rule.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates an existing Recycle Bin retention rule. You can update a retention rule's description,  resource tags, and retention period at any time after creation. You can't update a retention rule's  resource type after creation. For more information, see  Update Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    @Sendable
    public func updateRule(_ input: UpdateRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateRuleResponse {
        return try await self.client.execute(operation: "UpdateRule", path: "/rules/{Identifier}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension Rbin {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Rbin, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Rbin {
    /// Lists the Recycle Bin retention rules in the Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listRulesPaginator(
        _ input: ListRulesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListRulesRequest, ListRulesResponse> {
        return .init(
            input: input,
            command: self.listRules,
            inputKey: \ListRulesRequest.nextToken,
            outputKey: \ListRulesResponse.nextToken,
            logger: logger
        )
    }
}

extension Rbin.ListRulesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Rbin.ListRulesRequest {
        return .init(
            lockState: self.lockState,
            maxResults: self.maxResults,
            nextToken: token,
            resourceTags: self.resourceTags,
            resourceType: self.resourceType
        )
    }
}
