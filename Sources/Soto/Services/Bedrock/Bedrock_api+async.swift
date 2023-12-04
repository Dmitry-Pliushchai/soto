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

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Bedrock {
    // MARK: Async API Calls

    /// Creates a fine-tuning job to customize a base model. You specify the base foundation model and the location of the training data. After the  model-customization job completes successfully, your custom model resource will be ready to use. Training data contains input and output text for each record in a JSONL format. Optionally, you can specify validation data in the same format as the training data. Amazon Bedrock returns validation loss metrics and output generations  after the job completes.   Model-customization jobs are asynchronous and the completion time depends on the base model and the training/validation data size. To monitor a job, use the GetModelCustomizationJob operation to retrieve the job status. For more information, see Custom models in the Bedrock User Guide.
    public func createModelCustomizationJob(_ input: CreateModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModelCustomizationJobResponse {
        return try await self.client.execute(operation: "CreateModelCustomizationJob", path: "/model-customization-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a provisioned throughput with dedicated capacity for a foundation model or a fine-tuned model. For more information, see Provisioned throughput in the Bedrock User Guide.
    public func createProvisionedModelThroughput(_ input: CreateProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProvisionedModelThroughputResponse {
        return try await self.client.execute(operation: "CreateProvisionedModelThroughput", path: "/provisioned-model-throughput", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom model that you created earlier. For more information, see Custom models in the Bedrock User Guide.
    public func deleteCustomModel(_ input: DeleteCustomModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomModelResponse {
        return try await self.client.execute(operation: "DeleteCustomModel", path: "/custom-models/{modelIdentifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete the invocation logging.
    public func deleteModelInvocationLoggingConfiguration(_ input: DeleteModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(operation: "DeleteModelInvocationLoggingConfiguration", path: "/logging/modelinvocations", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a provisioned throughput. For more information, see Provisioned throughput in the Bedrock User Guide.
    public func deleteProvisionedModelThroughput(_ input: DeleteProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProvisionedModelThroughputResponse {
        return try await self.client.execute(operation: "DeleteProvisionedModelThroughput", path: "/provisioned-model-throughput/{provisionedModelId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the properties associated with a Amazon Bedrock custom model that you have created.For more information, see Custom models in the Bedrock User Guide.
    public func getCustomModel(_ input: GetCustomModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomModelResponse {
        return try await self.client.execute(operation: "GetCustomModel", path: "/custom-models/{modelIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get details about a Amazon Bedrock foundation model.
    public func getFoundationModel(_ input: GetFoundationModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFoundationModelResponse {
        return try await self.client.execute(operation: "GetFoundationModel", path: "/foundation-models/{modelIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the properties associated with a model-customization job, including the status of the job. For more information, see Custom models in the Bedrock User Guide.
    public func getModelCustomizationJob(_ input: GetModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelCustomizationJobResponse {
        return try await self.client.execute(operation: "GetModelCustomizationJob", path: "/model-customization-jobs/{jobIdentifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the current configuration values for model invocation logging.
    public func getModelInvocationLoggingConfiguration(_ input: GetModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(operation: "GetModelInvocationLoggingConfiguration", path: "/logging/modelinvocations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get details for a provisioned throughput. For more information, see Provisioned throughput in the Bedrock User Guide.
    public func getProvisionedModelThroughput(_ input: GetProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProvisionedModelThroughputResponse {
        return try await self.client.execute(operation: "GetProvisionedModelThroughput", path: "/provisioned-model-throughput/{provisionedModelId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the custom models that you have created with the CreateModelCustomizationJob operation. For more information, see Custom models in the Bedrock User Guide.
    public func listCustomModels(_ input: ListCustomModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomModelsResponse {
        return try await self.client.execute(operation: "ListCustomModels", path: "/custom-models", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List of Amazon Bedrock foundation models that you can use. For more information, see Foundation models in the Bedrock User Guide.
    public func listFoundationModels(_ input: ListFoundationModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFoundationModelsResponse {
        return try await self.client.execute(operation: "ListFoundationModels", path: "/foundation-models", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see Custom models in the Bedrock User Guide.
    public func listModelCustomizationJobs(_ input: ListModelCustomizationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListModelCustomizationJobsResponse {
        return try await self.client.execute(operation: "ListModelCustomizationJobs", path: "/model-customization-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the provisioned capacities. For more information, see Provisioned throughput in the Bedrock User Guide.
    public func listProvisionedModelThroughputs(_ input: ListProvisionedModelThroughputsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProvisionedModelThroughputsResponse {
        return try await self.client.execute(operation: "ListProvisionedModelThroughputs", path: "/provisioned-model-throughputs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the tags associated with the specified resource. For more information, see  Tagging resources in the Bedrock User Guide.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/listTagsForResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Set the configuration values for model invocation logging.
    public func putModelInvocationLoggingConfiguration(_ input: PutModelInvocationLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutModelInvocationLoggingConfigurationResponse {
        return try await self.client.execute(operation: "PutModelInvocationLoggingConfiguration", path: "/logging/modelinvocations", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an active model customization job. For more information, see Custom models in the Bedrock User Guide.
    public func stopModelCustomizationJob(_ input: StopModelCustomizationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopModelCustomizationJobResponse {
        return try await self.client.execute(operation: "StopModelCustomizationJob", path: "/model-customization-jobs/{jobIdentifier}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associate tags with a resource. For more information, see  Tagging resources in the Bedrock User Guide.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove one or more tags from a resource. For more information, see  Tagging resources in the Bedrock User Guide.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/untagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a provisioned throughput. For more information, see Provisioned throughput in the Bedrock User Guide.
    public func updateProvisionedModelThroughput(_ input: UpdateProvisionedModelThroughputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProvisionedModelThroughputResponse {
        return try await self.client.execute(operation: "UpdateProvisionedModelThroughput", path: "/provisioned-model-throughput/{provisionedModelId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
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
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomModelsPaginator(
        _ input: ListCustomModelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomModelsRequest, ListCustomModelsResponse> {
        return .init(
            input: input,
            command: self.listCustomModels,
            inputKey: \ListCustomModelsRequest.nextToken,
            outputKey: \ListCustomModelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of model customization jobs that you have submitted. You can filter the jobs to return based on one or more criteria. For more information, see Custom models in the Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listModelCustomizationJobsPaginator(
        _ input: ListModelCustomizationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListModelCustomizationJobsRequest, ListModelCustomizationJobsResponse> {
        return .init(
            input: input,
            command: self.listModelCustomizationJobs,
            inputKey: \ListModelCustomizationJobsRequest.nextToken,
            outputKey: \ListModelCustomizationJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// List the provisioned capacities. For more information, see Provisioned throughput in the Bedrock User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProvisionedModelThroughputsPaginator(
        _ input: ListProvisionedModelThroughputsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProvisionedModelThroughputsRequest, ListProvisionedModelThroughputsResponse> {
        return .init(
            input: input,
            command: self.listProvisionedModelThroughputs,
            inputKey: \ListProvisionedModelThroughputsRequest.nextToken,
            outputKey: \ListProvisionedModelThroughputsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
