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

/// Service object for interacting with AWS Bedrock service.
///
/// Describes the API operations for creating and managing Amazon Bedrock models.
public struct Bedrock: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Bedrock client
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
            serviceName: "Bedrock",
            serviceIdentifier: "bedrock",
            serviceProtocol: .restjson,
            apiVersion: "2023-04-20",
            endpoint: endpoint,
            serviceEndpoints: Self.serviceEndpoints,
            errorType: BedrockErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }


    /// custom endpoints for regions
    static var serviceEndpoints: [String: String] {[
        "bedrock-ap-northeast-1": "bedrock.ap-northeast-1.amazonaws.com",
        "bedrock-ap-southeast-1": "bedrock.ap-southeast-1.amazonaws.com",
        "bedrock-eu-central-1": "bedrock.eu-central-1.amazonaws.com",
        "bedrock-fips-us-east-1": "bedrock-fips.us-east-1.amazonaws.com",
        "bedrock-fips-us-west-2": "bedrock-fips.us-west-2.amazonaws.com",
        "bedrock-runtime-ap-northeast-1": "bedrock-runtime.ap-northeast-1.amazonaws.com",
        "bedrock-runtime-ap-southeast-1": "bedrock-runtime.ap-southeast-1.amazonaws.com",
        "bedrock-runtime-eu-central-1": "bedrock-runtime.eu-central-1.amazonaws.com",
        "bedrock-runtime-fips-us-east-1": "bedrock-runtime-fips.us-east-1.amazonaws.com",
        "bedrock-runtime-fips-us-west-2": "bedrock-runtime-fips.us-west-2.amazonaws.com",
        "bedrock-runtime-us-east-1": "bedrock-runtime.us-east-1.amazonaws.com",
        "bedrock-runtime-us-west-2": "bedrock-runtime.us-west-2.amazonaws.com",
        "bedrock-us-east-1": "bedrock.us-east-1.amazonaws.com",
        "bedrock-us-west-2": "bedrock.us-west-2.amazonaws.com"
    ]}



    // MARK: API Calls

    /// Creates a fine-tuning job to customize a base model. You specify the base foundation model and the location of the training data. After the  model-customization job completes successfully, your custom model resource will be ready to use. Training data contains input and output text for each record in a JSONL format. Optionally, you can specify validation data in the same format as the training data. Amazon Bedrock returns validation loss metrics and output generations  after the job completes.   Model-customization jobs are asynchronous and the completion time depends on the base model and the training/validation data size. To monitor a job, use the GetModelCustomizationJob operation to retrieve the job status. For more information, see Custom models in the Bedrock User Guide.
    @Sendable
    public func createModelCustomizationJob(_ input: CreateModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateModelCustomizationJobResponse {
        return try await self.client.execute(
            operation: "CreateModelCustomizationJob", 
            path: "/model-customization-jobs", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Creates a provisioned throughput with dedicated capacity for a foundation model or a fine-tuned model. For more information, see Provisioned throughput in the Bedrock User Guide.
    @Sendable
    public func createProvisionedModelThroughput(_ input: CreateProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "CreateProvisionedModelThroughput", 
            path: "/provisioned-model-throughput", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a custom model that you created earlier. For more information, see Custom models in the Bedrock User Guide.
    @Sendable
    public func deleteCustomModel(_ input: DeleteCustomModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteCustomModelResponse {
        return try await self.client.execute(
            operation: "DeleteCustomModel", 
            path: "/custom-models/{modelIdentifier}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Delete the invocation logging.
    @Sendable
    public func deleteModelInvocationLoggingConfiguration(_ input: DeleteModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "DeleteModelInvocationLoggingConfiguration", 
            path: "/logging/modelinvocations", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Deletes a provisioned throughput. For more information, see Provisioned throughput in the Bedrock User Guide.
    @Sendable
    public func deleteProvisionedModelThroughput(_ input: DeleteProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DeleteProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "DeleteProvisionedModelThroughput", 
            path: "/provisioned-model-throughput/{provisionedModelId}", 
            httpMethod: .DELETE, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get the properties associated with a Amazon Bedrock custom model that you have created.For more information, see Custom models in the Bedrock User Guide.
    @Sendable
    public func getCustomModel(_ input: GetCustomModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetCustomModelResponse {
        return try await self.client.execute(
            operation: "GetCustomModel", 
            path: "/custom-models/{modelIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get details about a Amazon Bedrock foundation model.
    @Sendable
    public func getFoundationModel(_ input: GetFoundationModelRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetFoundationModelResponse {
        return try await self.client.execute(
            operation: "GetFoundationModel", 
            path: "/foundation-models/{modelIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieves the properties associated with a model-customization job, including the status of the job. For more information, see Custom models in the Bedrock User Guide.
    @Sendable
    public func getModelCustomizationJob(_ input: GetModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetModelCustomizationJobResponse {
        return try await self.client.execute(
            operation: "GetModelCustomizationJob", 
            path: "/model-customization-jobs/{jobIdentifier}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get the current configuration values for model invocation logging.
    @Sendable
    public func getModelInvocationLoggingConfiguration(_ input: GetModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "GetModelInvocationLoggingConfiguration", 
            path: "/logging/modelinvocations", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get details for a provisioned throughput. For more information, see Provisioned throughput in the Bedrock User Guide.
    @Sendable
    public func getProvisionedModelThroughput(_ input: GetProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> GetProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "GetProvisionedModelThroughput", 
            path: "/provisioned-model-throughput/{provisionedModelId}", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of the custom models that you have created with the CreateModelCustomizationJob operation. For more information, see Custom models in the Bedrock User Guide.
    @Sendable
    public func listCustomModels(_ input: ListCustomModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListCustomModelsResponse {
        return try await self.client.execute(
            operation: "ListCustomModels", 
            path: "/custom-models", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List of Amazon Bedrock foundation models that you can use. For more information, see Foundation models in the Bedrock User Guide.
    @Sendable
    public func listFoundationModels(_ input: ListFoundationModelsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFoundationModelsResponse {
        return try await self.client.execute(
            operation: "ListFoundationModels", 
            path: "/foundation-models", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see Custom models in the Bedrock User Guide.
    @Sendable
    public func listModelCustomizationJobs(_ input: ListModelCustomizationJobsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListModelCustomizationJobsResponse {
        return try await self.client.execute(
            operation: "ListModelCustomizationJobs", 
            path: "/model-customization-jobs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List the provisioned capacities. For more information, see Provisioned throughput in the Bedrock User Guide.
    @Sendable
    public func listProvisionedModelThroughputs(_ input: ListProvisionedModelThroughputsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListProvisionedModelThroughputsResponse {
        return try await self.client.execute(
            operation: "ListProvisionedModelThroughputs", 
            path: "/provisioned-model-throughputs", 
            httpMethod: .GET, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// List the tags associated with the specified resource. For more information, see  Tagging resources in the Bedrock User Guide.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(
            operation: "ListTagsForResource", 
            path: "/listTagsForResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Set the configuration values for model invocation logging.
    @Sendable
    public func putModelInvocationLoggingConfiguration(_ input: PutModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> PutModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(
            operation: "PutModelInvocationLoggingConfiguration", 
            path: "/logging/modelinvocations", 
            httpMethod: .PUT, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Stops an active model customization job. For more information, see Custom models in the Bedrock User Guide.
    @Sendable
    public func stopModelCustomizationJob(_ input: StopModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> StopModelCustomizationJobResponse {
        return try await self.client.execute(
            operation: "StopModelCustomizationJob", 
            path: "/model-customization-jobs/{jobIdentifier}/stop", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Associate tags with a resource. For more information, see  Tagging resources in the Bedrock User Guide.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(
            operation: "TagResource", 
            path: "/tagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Remove one or more tags from a resource. For more information, see  Tagging resources in the Bedrock User Guide.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(
            operation: "UntagResource", 
            path: "/untagResource", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Update a provisioned throughput. For more information, see Provisioned throughput in the Bedrock User Guide.
    @Sendable
    public func updateProvisionedModelThroughput(_ input: UpdateProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateProvisionedModelThroughputResponse {
        return try await self.client.execute(
            operation: "UpdateProvisionedModelThroughput", 
            path: "/provisioned-model-throughput/{provisionedModelId}", 
            httpMethod: .PATCH, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension Bedrock {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Bedrock, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Bedrock {
    /// Returns a list of the custom models that you have created with the CreateModelCustomizationJob operation. For more information, see Custom models in the Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listCustomModelsPaginator(
        _ input: ListCustomModelsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListCustomModelsRequest, ListCustomModelsResponse> {
        return .init(
            input: input,
            command: self.listCustomModels,
            inputKey: \ListCustomModelsRequest.nextToken,
            outputKey: \ListCustomModelsResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see Custom models in the Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listModelCustomizationJobsPaginator(
        _ input: ListModelCustomizationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListModelCustomizationJobsRequest, ListModelCustomizationJobsResponse> {
        return .init(
            input: input,
            command: self.listModelCustomizationJobs,
            inputKey: \ListModelCustomizationJobsRequest.nextToken,
            outputKey: \ListModelCustomizationJobsResponse.nextToken,
            logger: logger
        )
    }

    /// List the provisioned capacities. For more information, see Provisioned throughput in the Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listProvisionedModelThroughputsPaginator(
        _ input: ListProvisionedModelThroughputsRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListProvisionedModelThroughputsRequest, ListProvisionedModelThroughputsResponse> {
        return .init(
            input: input,
            command: self.listProvisionedModelThroughputs,
            inputKey: \ListProvisionedModelThroughputsRequest.nextToken,
            outputKey: \ListProvisionedModelThroughputsResponse.nextToken,
            logger: logger
        )
    }
}

extension Bedrock.ListCustomModelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListCustomModelsRequest {
        return .init(
            baseModelArnEquals: self.baseModelArnEquals,
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            foundationModelArnEquals: self.foundationModelArnEquals,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )
    }
}

extension Bedrock.ListModelCustomizationJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListModelCustomizationJobsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )
    }
}

extension Bedrock.ListProvisionedModelThroughputsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Bedrock.ListProvisionedModelThroughputsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            maxResults: self.maxResults,
            modelArnEquals: self.modelArnEquals,
            nameContains: self.nameContains,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            statusEquals: self.statusEquals
        )
    }
}
