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
/// Identity and Access Management Access Analyzer helps you to set, verify, and refine your IAM policies by providing a suite of capabilities. Its features include findings for external and unused access, basic and custom policy checks for validating policies, and policy generation to generate fine-grained policies. To start using IAM Access Analyzer to identify external or unused access, you first need to create an analyzer.  External access analyzers help identify potential risks of accessing resources by enabling you to identify any resource policies that grant access to an external principal. It does this by using logic-based reasoning to analyze resource-based policies in your Amazon Web Services environment. An external principal can be another Amazon Web Services account, a root user, an IAM user or role, a federated user, an Amazon Web Services service, or an anonymous user. You can also use IAM Access Analyzer to preview public and cross-account access to your resources before deploying permissions changes.  Unused access analyzers help identify potential identity access risks by enabling you to identify unused IAM roles, unused access keys, unused console passwords, and IAM principals with unused service and action-level permissions. Beyond findings, IAM Access Analyzer provides basic and custom policy checks to validate IAM policies before deploying permissions changes. You can use policy generation to refine permissions by attaching a policy generated using access activity logged in CloudTrail logs.  This guide describes the IAM Access Analyzer operations that you can call programmatically. For general information about IAM Access Analyzer, see Identity and Access Management Access Analyzer in the IAM User Guide.
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
    @discardableResult public func applyArchiveRule(_ input: ApplyArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "ApplyArchiveRule", path: "/archive-rule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the requested policy generation.
    public func cancelPolicyGeneration(_ input: CancelPolicyGenerationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelPolicyGenerationResponse> {
        return self.client.execute(operation: "CancelPolicyGeneration", path: "/policy/generation/{jobId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks whether the specified access isn't allowed by a policy.
    public func checkAccessNotGranted(_ input: CheckAccessNotGrantedRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckAccessNotGrantedResponse> {
        return self.client.execute(operation: "CheckAccessNotGranted", path: "/policy/check-access-not-granted", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks whether new access is allowed for an updated policy when compared to the existing policy. You can find examples for reference policies and learn how to set up and run a custom policy check for new access in the IAM Access Analyzer custom policy checks samples repository on GitHub. The reference policies in this repository are meant to be passed to the existingPolicyDocument request parameter.
    public func checkNoNewAccess(_ input: CheckNoNewAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckNoNewAccessResponse> {
        return self.client.execute(operation: "CheckNoNewAccess", path: "/policy/check-no-new-access", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions.
    public func createAccessPreview(_ input: CreateAccessPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessPreviewResponse> {
        return self.client.execute(operation: "CreateAccessPreview", path: "/access-preview", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an analyzer for your account.
    public func createAnalyzer(_ input: CreateAnalyzerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnalyzerResponse> {
        return self.client.execute(operation: "CreateAnalyzer", path: "/analyzer", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an archive rule for the specified analyzer. Archive rules automatically archive new findings that meet the criteria you define when you create the rule. To learn about filter keys that you can use to create an archive rule, see IAM Access Analyzer filter keys in the IAM User Guide.
    @discardableResult public func createArchiveRule(_ input: CreateArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "CreateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer is disabled for the account or organization in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.
    @discardableResult public func deleteAnalyzer(_ input: DeleteAnalyzerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified archive rule.
    @discardableResult public func deleteArchiveRule(_ input: DeleteArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an access preview for the specified analyzer.
    public func getAccessPreview(_ input: GetAccessPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAccessPreviewResponse> {
        return self.client.execute(operation: "GetAccessPreview", path: "/access-preview/{accessPreviewId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a resource that was analyzed.
    public func getAnalyzedResource(_ input: GetAnalyzedResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnalyzedResourceResponse> {
        return self.client.execute(operation: "GetAnalyzedResource", path: "/analyzed-resource", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the specified analyzer.
    public func getAnalyzer(_ input: GetAnalyzerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAnalyzerResponse> {
        return self.client.execute(operation: "GetAnalyzer", path: "/analyzer/{analyzerName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an archive rule. To learn about filter keys that you can use to create an archive rule, see IAM Access Analyzer filter keys in the IAM User Guide.
    public func getArchiveRule(_ input: GetArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetArchiveRuleResponse> {
        return self.client.execute(operation: "GetArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the specified finding.
    public func getFinding(_ input: GetFindingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingResponse> {
        return self.client.execute(operation: "GetFinding", path: "/finding/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the specified finding.
    public func getFindingV2(_ input: GetFindingV2Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFindingV2Response> {
        return self.client.execute(operation: "GetFindingV2", path: "/findingv2/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the policy that was generated using StartPolicyGeneration.
    public func getGeneratedPolicy(_ input: GetGeneratedPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGeneratedPolicyResponse> {
        return self.client.execute(operation: "GetGeneratedPolicy", path: "/policy/generation/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of access preview findings generated by the specified access preview.
    public func listAccessPreviewFindings(_ input: ListAccessPreviewFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccessPreviewFindingsResponse> {
        return self.client.execute(operation: "ListAccessPreviewFindings", path: "/access-preview/{accessPreviewId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of access previews for the specified analyzer.
    public func listAccessPreviews(_ input: ListAccessPreviewsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccessPreviewsResponse> {
        return self.client.execute(operation: "ListAccessPreviews", path: "/access-preview", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    public func listAnalyzedResources(_ input: ListAnalyzedResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAnalyzedResourcesResponse> {
        return self.client.execute(operation: "ListAnalyzedResources", path: "/analyzed-resource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of analyzers.
    public func listAnalyzers(_ input: ListAnalyzersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAnalyzersResponse> {
        return self.client.execute(operation: "ListAnalyzers", path: "/analyzer", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of archive rules created for the specified analyzer.
    public func listArchiveRules(_ input: ListArchiveRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListArchiveRulesResponse> {
        return self.client.execute(operation: "ListArchiveRules", path: "/analyzer/{analyzerName}/archive-rule", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see IAM Access Analyzer filter keys in the IAM User Guide.
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsResponse> {
        return self.client.execute(operation: "ListFindings", path: "/finding", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see IAM Access Analyzer filter keys in the IAM User Guide.
    public func listFindingsV2(_ input: ListFindingsV2Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFindingsV2Response> {
        return self.client.execute(operation: "ListFindingsV2", path: "/findingv2", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the policy generations requested in the last seven days.
    public func listPolicyGenerations(_ input: ListPolicyGenerationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPolicyGenerationsResponse> {
        return self.client.execute(operation: "ListPolicyGenerations", path: "/policy/generation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of tags applied to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the policy generation request.
    public func startPolicyGeneration(_ input: StartPolicyGenerationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPolicyGenerationResponse> {
        return self.client.execute(operation: "StartPolicyGeneration", path: "/policy/generation", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Immediately starts a scan of the policies applied to the specified resource.
    @discardableResult public func startResourceScan(_ input: StartResourceScanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "StartResourceScan", path: "/resource/scan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a tag to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the criteria and values for the specified archive rule.
    @discardableResult public func updateArchiveRule(_ input: UpdateArchiveRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateArchiveRule", path: "/analyzer/{analyzerName}/archive-rule/{ruleName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the status for the specified findings.
    @discardableResult public func updateFindings(_ input: UpdateFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateFindings", path: "/finding", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices.
    public func validatePolicy(_ input: ValidatePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ValidatePolicyResponse> {
        return self.client.execute(operation: "ValidatePolicy", path: "/policy/validation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
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
