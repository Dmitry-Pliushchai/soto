// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS IoT Analytics allows you to collect large amounts of device data, process messages, and store them. You can then query the data and run sophisticated analytics on it. AWS IoT Analytics enables advanced data exploration through integration with Jupyter Notebooks and data visualization through integration with Amazon QuickSight. Traditional analytics and business intelligence tools are designed to process structured data. IoT data often comes from devices that record noisy processes (such as temperature, motion, or sound). As a result the data from these devices can have significant gaps, corrupted messages, and false readings that must be cleaned up before analysis can occur. Also, IoT data is often only meaningful in the context of other data from external sources.  AWS IoT Analytics automates the steps required to analyze data from IoT devices. AWS IoT Analytics filters, transforms, and enriches IoT data before storing it in a time-series data store for analysis. You can set up the service to collect only the data you need from your devices, apply mathematical transforms to process the data, and enrich the data with device-specific metadata such as device type and location before storing it. Then, you can analyze your data by running queries using the built-in SQL query engine, or perform more complex analytics and machine learning inference. AWS IoT Analytics includes pre-built models for common IoT use cases so you can answer questions like which devices are about to fail or which customers are at risk of abandoning their wearable devices.
*/
public struct IoTAnalytics {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "iotanalytics",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [IoTAnalyticsErrorType.self]
        )
    }

    ///  Simulates the results of running a pipeline activity on a message payload.
    public func runPipelineActivity(_ input: RunPipelineActivityRequest) throws -> EventLoopFuture<RunPipelineActivityResponse> {
        return try client.send(operation: "RunPipelineActivity", path: "/pipelineactivities/run", httpMethod: "POST", input: input)
    }

    ///  Updates the settings of a pipeline.
    public func updatePipeline(_ input: UpdatePipelineRequest) throws {
        _ = try client.send(operation: "UpdatePipeline", path: "/pipelines/{pipelineName}", httpMethod: "PUT", input: input)
    }

    ///  Creates a data set. A data set stores data retrieved from a data store by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application). This operation creates the skeleton of a data set. The data set can be populated manually by calling "CreateDatasetContent" or automatically according to a "trigger" you specify.
    public func createDataset(_ input: CreateDatasetRequest) throws -> EventLoopFuture<CreateDatasetResponse> {
        return try client.send(operation: "CreateDataset", path: "/datasets", httpMethod: "POST", input: input)
    }

    ///  Sends messages to a channel.
    public func batchPutMessage(_ input: BatchPutMessageRequest) throws -> EventLoopFuture<BatchPutMessageResponse> {
        return try client.send(operation: "BatchPutMessage", path: "/messages/batch", httpMethod: "POST", input: input)
    }

    ///  Updates the settings of a data store.
    public func updateDatastore(_ input: UpdateDatastoreRequest) throws {
        _ = try client.send(operation: "UpdateDatastore", path: "/datastores/{datastoreName}", httpMethod: "PUT", input: input)
    }

    ///  Retrieves the contents of a data set as pre-signed URIs.
    public func getDatasetContent(_ input: GetDatasetContentRequest) throws -> EventLoopFuture<GetDatasetContentResponse> {
        return try client.send(operation: "GetDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: "GET", input: input)
    }

    ///  Deletes the specified pipeline.
    public func deletePipeline(_ input: DeletePipelineRequest) throws {
        _ = try client.send(operation: "DeletePipeline", path: "/pipelines/{pipelineName}", httpMethod: "DELETE", input: input)
    }

    ///  Creates a pipeline. A pipeline consumes messages from one or more channels and allows you to process the messages before storing them in a data store.
    public func createPipeline(_ input: CreatePipelineRequest) throws -> EventLoopFuture<CreatePipelineResponse> {
        return try client.send(operation: "CreatePipeline", path: "/pipelines", httpMethod: "POST", input: input)
    }

    ///  Removes the given tags (metadata) from the resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> EventLoopFuture<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/tags", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves information about data sets.
    public func listDatasets(_ input: ListDatasetsRequest) throws -> EventLoopFuture<ListDatasetsResponse> {
        return try client.send(operation: "ListDatasets", path: "/datasets", httpMethod: "GET", input: input)
    }

    ///  Deletes the specified data set. You do not have to delete the content of the data set before you perform this operation.
    public func deleteDataset(_ input: DeleteDatasetRequest) throws {
        _ = try client.send(operation: "DeleteDataset", path: "/datasets/{datasetName}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves a list of pipelines.
    public func listPipelines(_ input: ListPipelinesRequest) throws -> EventLoopFuture<ListPipelinesResponse> {
        return try client.send(operation: "ListPipelines", path: "/pipelines", httpMethod: "GET", input: input)
    }

    ///  Retrieves the current settings of the AWS IoT Analytics logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest) throws -> EventLoopFuture<DescribeLoggingOptionsResponse> {
        return try client.send(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: "GET", input: input)
    }

    ///  Updates the settings of a channel.
    public func updateChannel(_ input: UpdateChannelRequest) throws {
        _ = try client.send(operation: "UpdateChannel", path: "/channels/{channelName}", httpMethod: "PUT", input: input)
    }

    ///  Creates a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.
    public func createChannel(_ input: CreateChannelRequest) throws -> EventLoopFuture<CreateChannelResponse> {
        return try client.send(operation: "CreateChannel", path: "/channels", httpMethod: "POST", input: input)
    }

    ///  Lists information about data set contents that have been created.
    public func listDatasetContents(_ input: ListDatasetContentsRequest) throws -> EventLoopFuture<ListDatasetContentsResponse> {
        return try client.send(operation: "ListDatasetContents", path: "/datasets/{datasetName}/contents", httpMethod: "GET", input: input)
    }

    ///  Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.
    public func sampleChannelData(_ input: SampleChannelDataRequest) throws -> EventLoopFuture<SampleChannelDataResponse> {
        return try client.send(operation: "SampleChannelData", path: "/channels/{channelName}/sample", httpMethod: "GET", input: input)
    }

    ///  Creates the content of a data set by applying a SQL action.
    public func createDatasetContent(_ input: CreateDatasetContentRequest) throws -> EventLoopFuture<CreateDatasetContentResponse> {
        return try client.send(operation: "CreateDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: "POST", input: input)
    }

    ///  Updates the settings of a data set.
    public func updateDataset(_ input: UpdateDatasetRequest) throws {
        _ = try client.send(operation: "UpdateDataset", path: "/datasets/{datasetName}", httpMethod: "PUT", input: input)
    }

    ///  Retrieves information about a pipeline.
    public func describePipeline(_ input: DescribePipelineRequest) throws -> EventLoopFuture<DescribePipelineResponse> {
        return try client.send(operation: "DescribePipeline", path: "/pipelines/{pipelineName}", httpMethod: "GET", input: input)
    }

    ///  Starts the reprocessing of raw message data through the pipeline.
    public func startPipelineReprocessing(_ input: StartPipelineReprocessingRequest) throws -> EventLoopFuture<StartPipelineReprocessingResponse> {
        return try client.send(operation: "StartPipelineReprocessing", path: "/pipelines/{pipelineName}/reprocessing", httpMethod: "POST", input: input)
    }

    ///  Lists the tags (metadata) which you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> EventLoopFuture<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/tags", httpMethod: "GET", input: input)
    }

    ///  Sets or updates the AWS IoT Analytics logging options. Note that if you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy) it takes up to 5 minutes for that change to take effect. 
    public func putLoggingOptions(_ input: PutLoggingOptionsRequest) throws {
        _ = try client.send(operation: "PutLoggingOptions", path: "/logging", httpMethod: "PUT", input: input)
    }

    ///  Cancels the reprocessing of data through the pipeline.
    public func cancelPipelineReprocessing(_ input: CancelPipelineReprocessingRequest) throws -> EventLoopFuture<CancelPipelineReprocessingResponse> {
        return try client.send(operation: "CancelPipelineReprocessing", path: "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the content of the specified data set.
    public func deleteDatasetContent(_ input: DeleteDatasetContentRequest) throws {
        _ = try client.send(operation: "DeleteDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves information about a data set.
    public func describeDataset(_ input: DescribeDatasetRequest) throws -> EventLoopFuture<DescribeDatasetResponse> {
        return try client.send(operation: "DescribeDataset", path: "/datasets/{datasetName}", httpMethod: "GET", input: input)
    }

    ///  Deletes the specified data store.
    public func deleteDatastore(_ input: DeleteDatastoreRequest) throws {
        _ = try client.send(operation: "DeleteDatastore", path: "/datastores/{datastoreName}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves information about a channel.
    public func describeChannel(_ input: DescribeChannelRequest) throws -> EventLoopFuture<DescribeChannelResponse> {
        return try client.send(operation: "DescribeChannel", path: "/channels/{channelName}", httpMethod: "GET", input: input)
    }

    ///  Retrieves a list of channels.
    public func listChannels(_ input: ListChannelsRequest) throws -> EventLoopFuture<ListChannelsResponse> {
        return try client.send(operation: "ListChannels", path: "/channels", httpMethod: "GET", input: input)
    }

    ///  Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.
    public func tagResource(_ input: TagResourceRequest) throws -> EventLoopFuture<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/tags", httpMethod: "POST", input: input)
    }

    ///  Creates a data store, which is a repository for messages.
    public func createDatastore(_ input: CreateDatastoreRequest) throws -> EventLoopFuture<CreateDatastoreResponse> {
        return try client.send(operation: "CreateDatastore", path: "/datastores", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a data store.
    public func describeDatastore(_ input: DescribeDatastoreRequest) throws -> EventLoopFuture<DescribeDatastoreResponse> {
        return try client.send(operation: "DescribeDatastore", path: "/datastores/{datastoreName}", httpMethod: "GET", input: input)
    }

    ///  Retrieves a list of data stores.
    public func listDatastores(_ input: ListDatastoresRequest) throws -> EventLoopFuture<ListDatastoresResponse> {
        return try client.send(operation: "ListDatastores", path: "/datastores", httpMethod: "GET", input: input)
    }

    ///  Deletes the specified channel.
    public func deleteChannel(_ input: DeleteChannelRequest) throws {
        _ = try client.send(operation: "DeleteChannel", path: "/channels/{channelName}", httpMethod: "DELETE", input: input)
    }


}