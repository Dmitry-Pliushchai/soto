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

/// Service object for interacting with AWS ElasticTranscoder service.
///
/// AWS Elastic Transcoder Service The AWS Elastic Transcoder Service.
public struct ElasticTranscoder: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ElasticTranscoder client
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
            service: "elastictranscoder",
            serviceProtocol: .restjson,
            apiVersion: "2012-09-25",
            endpoint: endpoint,
            errorType: ElasticTranscoderErrorType.self,
            xmlNamespace: "http://elastictranscoder.amazonaws.com/doc/2012-09-25/",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// The CancelJob operation cancels an unfinished job.  You can only cancel a job that has a status of Submitted. To prevent a pipeline from starting to process a job while you're getting the job identifier, use UpdatePipelineStatus to temporarily pause the pipeline.
    @Sendable
    public func cancelJob(_ input: CancelJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CancelJobResponse {
        return try await self.client.execute(operation: "CancelJob", path: "/2012-09-25/jobs/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified  plus information about the job that is created. If you have specified more than one output for your jobs (for example, one output for the  Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to  list the jobs (as opposed to the AWS Console).
    @Sendable
    public func createJob(_ input: CreateJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateJobResponse {
        return try await self.client.execute(operation: "CreateJob", path: "/2012-09-25/jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The CreatePipeline operation creates a pipeline with settings that you specify.
    @Sendable
    public func createPipeline(_ input: CreatePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePipelineResponse {
        return try await self.client.execute(operation: "CreatePipeline", path: "/2012-09-25/pipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The CreatePreset operation creates a preset with settings that you specify.  Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements and to determine whether they comply with H.264 standards. If your settings are not valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (ValidationException) and does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message in the response. This helps you determine whether your settings comply with the H.264 standard while giving you greater flexibility with respect to the video that Elastic Transcoder produces.  Elastic Transcoder uses the H.264 video-compression format. For more information, see the International Telecommunication Union publication Recommendation ITU-T H.264: Advanced video coding for generic audiovisual services.
    @Sendable
    public func createPreset(_ input: CreatePresetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreatePresetResponse {
        return try await self.client.execute(operation: "CreatePreset", path: "/2012-09-25/presets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The DeletePipeline operation removes a pipeline. You can only delete a pipeline that has never been used or that is not currently in use (doesn't contain any active jobs). If the pipeline is currently in use, DeletePipeline returns an error.
    @Sendable
    public func deletePipeline(_ input: DeletePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePipelineResponse {
        return try await self.client.execute(operation: "DeletePipeline", path: "/2012-09-25/pipelines/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The DeletePreset operation removes a preset that you've added in an AWS region.  You can't delete the default presets that are included with Elastic Transcoder.
    @Sendable
    public func deletePreset(_ input: DeletePresetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeletePresetResponse {
        return try await self.client.execute(operation: "DeletePreset", path: "/2012-09-25/presets/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains  one element for each job that satisfies the search criteria.
    @Sendable
    public func listJobsByPipeline(_ input: ListJobsByPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobsByPipelineResponse {
        return try await self.client.execute(operation: "ListJobsByPipeline", path: "/2012-09-25/jobsByPipeline/{PipelineId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The ListJobsByStatus operation gets a list of jobs that have a specified status. The response  body contains one element for each job that satisfies the search criteria.
    @Sendable
    public func listJobsByStatus(_ input: ListJobsByStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListJobsByStatusResponse {
        return try await self.client.execute(operation: "ListJobsByStatus", path: "/2012-09-25/jobsByStatus/{Status}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    @Sendable
    public func listPipelines(_ input: ListPipelinesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPipelinesResponse {
        return try await self.client.execute(operation: "ListPipelines", path: "/2012-09-25/pipelines", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that  you've added in an AWS region.
    @Sendable
    public func listPresets(_ input: ListPresetsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListPresetsResponse {
        return try await self.client.execute(operation: "ListPresets", path: "/2012-09-25/presets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The ReadJob operation returns detailed information about a job.
    @Sendable
    public func readJob(_ input: ReadJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ReadJobResponse {
        return try await self.client.execute(operation: "ReadJob", path: "/2012-09-25/jobs/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The ReadPipeline operation gets detailed information about a pipeline.
    @Sendable
    public func readPipeline(_ input: ReadPipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ReadPipelineResponse {
        return try await self.client.execute(operation: "ReadPipeline", path: "/2012-09-25/pipelines/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The ReadPreset operation gets detailed information about a preset.
    @Sendable
    public func readPreset(_ input: ReadPresetRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ReadPresetResponse {
        return try await self.client.execute(operation: "ReadPreset", path: "/2012-09-25/presets/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The TestRole operation tests the IAM role used to create the pipeline. The TestRole action lets you determine whether the IAM role you are using has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding process. The action attempts to assume the specified IAM role, checks read access to the input and output buckets, and tries to send a test notification to Amazon SNS topics that you specify.
    @Sendable
    public func testRole(_ input: TestRoleRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TestRoleResponse {
        return try await self.client.execute(operation: "TestRole", path: "/2012-09-25/roleTests", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    ///  Use the UpdatePipeline operation to update settings for a pipeline.  When you change pipeline settings, your changes take effect immediately. Jobs that you have already submitted and that Elastic Transcoder has not started to process are affected in addition to jobs that you submit after you change settings.
    @Sendable
    public func updatePipeline(_ input: UpdatePipelineRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePipelineResponse {
        return try await self.client.execute(operation: "UpdatePipeline", path: "/2012-09-25/pipelines/{Id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger)
    }

    /// With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline. When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.
    @Sendable
    public func updatePipelineNotifications(_ input: UpdatePipelineNotificationsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePipelineNotificationsResponse {
        return try await self.client.execute(operation: "UpdatePipelineNotifications", path: "/2012-09-25/pipelines/{Id}/notifications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline  stops or restarts the processing of jobs. Changing the pipeline status is useful if you want to cancel one or more jobs. You can't cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which you submitted the jobs, you have more time to get the job IDs for the jobs that you want to cancel, and to send a CancelJob request.
    @Sendable
    public func updatePipelineStatus(_ input: UpdatePipelineStatusRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdatePipelineStatusResponse {
        return try await self.client.execute(operation: "UpdatePipelineStatus", path: "/2012-09-25/pipelines/{Id}/status", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension ElasticTranscoder {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ElasticTranscoder, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ElasticTranscoder {
    /// The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains  one element for each job that satisfies the search criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobsByPipelinePaginator(
        _ input: ListJobsByPipelineRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobsByPipelineRequest, ListJobsByPipelineResponse> {
        return .init(
            input: input,
            command: self.listJobsByPipeline,
            inputKey: \ListJobsByPipelineRequest.pageToken,
            outputKey: \ListJobsByPipelineResponse.nextPageToken,
            logger: logger
        )
    }

    /// The ListJobsByStatus operation gets a list of jobs that have a specified status. The response  body contains one element for each job that satisfies the search criteria.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listJobsByStatusPaginator(
        _ input: ListJobsByStatusRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListJobsByStatusRequest, ListJobsByStatusResponse> {
        return .init(
            input: input,
            command: self.listJobsByStatus,
            inputKey: \ListJobsByStatusRequest.pageToken,
            outputKey: \ListJobsByStatusResponse.nextPageToken,
            logger: logger
        )
    }

    /// The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPipelinesPaginator(
        _ input: ListPipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPipelinesRequest, ListPipelinesResponse> {
        return .init(
            input: input,
            command: self.listPipelines,
            inputKey: \ListPipelinesRequest.pageToken,
            outputKey: \ListPipelinesResponse.nextPageToken,
            logger: logger
        )
    }

    /// The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that  you've added in an AWS region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listPresetsPaginator(
        _ input: ListPresetsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListPresetsRequest, ListPresetsResponse> {
        return .init(
            input: input,
            command: self.listPresets,
            inputKey: \ListPresetsRequest.pageToken,
            outputKey: \ListPresetsResponse.nextPageToken,
            logger: logger
        )
    }
}

extension ElasticTranscoder.ListJobsByPipelineRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListJobsByPipelineRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token,
            pipelineId: self.pipelineId
        )
    }
}

extension ElasticTranscoder.ListJobsByStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListJobsByStatusRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token,
            status: self.status
        )
    }
}

extension ElasticTranscoder.ListPipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListPipelinesRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token
        )
    }
}

extension ElasticTranscoder.ListPresetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListPresetsRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ElasticTranscoder {
    public func waitUntilJobComplete(
        _ input: ReadJobRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("job.status", expected: "Complete")),
                .init(state: .failure, matcher: try! JMESPathMatcher("job.status", expected: "Canceled")),
                .init(state: .failure, matcher: try! JMESPathMatcher("job.status", expected: "Error")),
            ],
            minDelayTime: .seconds(30),
            command: self.readJob
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger)
    }
}
