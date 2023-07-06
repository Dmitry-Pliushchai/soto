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

/// Service object for interacting with AWS AccessAnalyzer service.
///
/// Identity and Access Management Access Analyzer helps identify potential resource-access risks by enabling you to identify any policies that grant access to an external principal. It does this by using logic-based reasoning to analyze resource-based policies in your Amazon Web Services environment. An external principal can be another Amazon Web Services account, a root user, an IAM user or role, a federated user, an Amazon Web Services service, or an anonymous user. You can also use IAM Access Analyzer to preview and validate public and cross-account access to your resources before deploying permissions changes. This guide describes the Identity and Access Management Access Analyzer operations that you can call programmatically. For general information about IAM Access Analyzer, see Identity and Access Management Access Analyzer in the IAM User Guide. To start using IAM Access Analyzer, you first need to create an analyzer.
public struct AccessAnalyzer: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AccessAnalyzer client
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
            service: "access-analyzer",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-01",
            endpoint: endpoint,
            serviceEndpoints: [
                "us-gov-east-1": "access-analyzer.us-gov-east-1.amazonaws.com",
                "us-gov-west-1": "access-analyzer.us-gov-west-1.amazonaws.com"
            ],
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "ca-central-1": "access-analyzer-fips.ca-central-1.amazonaws.com",
                    "us-east-1": "access-analyzer-fips.us-east-1.amazonaws.com",
                    "us-east-2": "access-analyzer-fips.us-east-2.amazonaws.com",
                    "us-gov-east-1": "access-analyzer.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "access-analyzer.us-gov-west-1.amazonaws.com",
                    "us-west-1": "access-analyzer-fips.us-west-1.amazonaws.com",
                    "us-west-2": "access-analyzer-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: AccessAnalyzerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Retroactively applies the archive rule to existing findings that meet the archive rule criteria.
    @Sendable
    public func applyArchiveRule(_ input: ApplyArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "ApplyArchiveRule", path: "/archive-rule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Cancels the requested policy generation.
    @Sendable
    public func cancelPolicyGeneration(_ input: CancelPolicyGenerationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelPolicyGenerationResponse {
        return try await self.client.execute(operation: "CancelPolicyGeneration", path: "/policy/generation/{jobId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions.
    @Sendable
    public func createAccessPreview(_ input: CreateAccessPreviewRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAccessPreviewResponse {
        return try await self.client.execute(operation: "CreateAccessPreview", path: "/access-preview", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an analyzer for your account.
    @Sendable
    public func createAnalyzer(_ input: CreateAnalyzerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateAnalyzerResponse {
        return try await self.client.execute(operation: "CreateAnalyzer", path: "/analyzer", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Creates an archive rule for the specified analyzer. Archive rules automatically archive new findings that meet the criteria you define when you create the rule. To learn about filter keys that you can use to create an archive rule, see IAM Access Analyzer filter keys in the IAM User Guide.
    @Sendable
    public func createArchiveRule(_ input: CreateArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "CreateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer is disabled for the account or organization in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.
    @Sendable
    public func deleteAnalyzer(_ input: DeleteAnalyzerRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "DeleteAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Deletes the specified archive rule.
    @Sendable
    public func deleteArchiveRule(_ input: DeleteArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "DeleteArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves information about an access preview for the specified analyzer.
    @Sendable
    public func getAccessPreview(_ input: GetAccessPreviewRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAccessPreviewResponse {
        return try await self.client.execute(operation: "GetAccessPreview", path: "/access-preview/{accessPreviewId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves information about a resource that was analyzed.
    @Sendable
    public func getAnalyzedResource(_ input: GetAnalyzedResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAnalyzedResourceResponse {
        return try await self.client.execute(operation: "GetAnalyzedResource", path: "/analyzed-resource", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves information about the specified analyzer.
    @Sendable
    public func getAnalyzer(_ input: GetAnalyzerRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAnalyzerResponse {
        return try await self.client.execute(operation: "GetAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves information about an archive rule. To learn about filter keys that you can use to create an archive rule, see IAM Access Analyzer filter keys in the IAM User Guide.
    @Sendable
    public func getArchiveRule(_ input: GetArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetArchiveRuleResponse {
        return try await self.client.execute(operation: "GetArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves information about the specified finding.
    @Sendable
    public func getFinding(_ input: GetFindingRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetFindingResponse {
        return try await self.client.execute(operation: "GetFinding", path: "/finding/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the policy that was generated using StartPolicyGeneration.
    @Sendable
    public func getGeneratedPolicy(_ input: GetGeneratedPolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetGeneratedPolicyResponse {
        return try await self.client.execute(operation: "GetGeneratedPolicy", path: "/policy/generation/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of access preview findings generated by the specified access preview.
    @Sendable
    public func listAccessPreviewFindings(_ input: ListAccessPreviewFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAccessPreviewFindingsResponse {
        return try await self.client.execute(operation: "ListAccessPreviewFindings", path: "/access-preview/{accessPreviewId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of access previews for the specified analyzer.
    @Sendable
    public func listAccessPreviews(_ input: ListAccessPreviewsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAccessPreviewsResponse {
        return try await self.client.execute(operation: "ListAccessPreviews", path: "/access-preview", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    @Sendable
    public func listAnalyzedResources(_ input: ListAnalyzedResourcesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAnalyzedResourcesResponse {
        return try await self.client.execute(operation: "ListAnalyzedResources", path: "/analyzed-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of analyzers.
    @Sendable
    public func listAnalyzers(_ input: ListAnalyzersRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAnalyzersResponse {
        return try await self.client.execute(operation: "ListAnalyzers", path: "/analyzer", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of archive rules created for the specified analyzer.
    @Sendable
    public func listArchiveRules(_ input: ListArchiveRulesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListArchiveRulesResponse {
        return try await self.client.execute(operation: "ListArchiveRules", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see IAM Access Analyzer filter keys in the IAM User Guide.
    @Sendable
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFindingsResponse {
        return try await self.client.execute(operation: "ListFindings", path: "/finding", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Lists all of the policy generations requested in the last seven days.
    @Sendable
    public func listPolicyGenerations(_ input: ListPolicyGenerationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPolicyGenerationsResponse {
        return try await self.client.execute(operation: "ListPolicyGenerations", path: "/policy/generation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves a list of tags applied to the specified resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Starts the policy generation request.
    @Sendable
    public func startPolicyGeneration(_ input: StartPolicyGenerationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StartPolicyGenerationResponse {
        return try await self.client.execute(operation: "StartPolicyGeneration", path: "/policy/generation", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Immediately starts a scan of the policies applied to the specified resource.
    @Sendable
    public func startResourceScan(_ input: StartResourceScanRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "StartResourceScan", path: "/resource/scan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Adds a tag to the specified resource.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Removes a tag from the specified resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates the criteria and values for the specified archive rule.
    @Sendable
    public func updateArchiveRule(_ input: UpdateArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "UpdateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Updates the status for the specified findings.
    @Sendable
    public func updateFindings(_ input: UpdateFindingsRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "UpdateFindings", path: "/finding", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices.
    @Sendable
    public func validatePolicy(_ input: ValidatePolicyRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ValidatePolicyResponse {
        return try await self.client.execute(operation: "ValidatePolicy", path: "/policy/validation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension AccessAnalyzer {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AccessAnalyzer, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
