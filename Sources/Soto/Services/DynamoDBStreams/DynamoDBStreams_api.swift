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

/// Service object for interacting with AWS DynamoDBStreams service.
///
/// Amazon DynamoDB
///  Amazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see Capturing Table Activity with DynamoDB Streams in the Amazon DynamoDB Developer Guide.
public struct DynamoDBStreams: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DynamoDBStreams client
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
            amzTarget: "DynamoDBStreams_20120810",
            service: "streams.dynamodb",
            signingName: "dynamodb",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2012-08-10",
            endpoint: endpoint,
            serviceEndpoints: [
                "local": "localhost:8000"
            ],
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-gov-east-1": "streams.dynamodb.us-gov-east-1.amazonaws.com",
                    "us-gov-west-1": "streams.dynamodb.us-gov-west-1.amazonaws.com"
                ])
            ],
            errorType: DynamoDBStreamsErrorType.self,
            xmlNamespace: "http://dynamodb.amazonaws.com/doc/2012-08-10/",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table.  You can call DescribeStream at a maximum rate of 10 times per second.  Each shard in the stream has a SequenceNumberRange associated with it. If the SequenceNumberRange has a StartingSequenceNumber but no EndingSequenceNumber, then the shard is still open (able to receive more stream records). If both StartingSequenceNumber and EndingSequenceNumber are present, then that shard is closed and can no longer receive more data.
    @Sendable
    public func describeStream(_ input: DescribeStreamInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeStreamOutput {
        return try await self.client.execute(operation: "DescribeStream", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Retrieves the stream records from a given shard. Specify a shard iterator using the ShardIterator parameter. The shard iterator specifies the position in the shard from which you want to start reading stream records sequentially. If there are no stream records available in the portion of the shard that the iterator points to, GetRecords returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains stream records.   GetRecords can retrieve a maximum of 1 MB of data or 1000 stream records, whichever comes first.
    @Sendable
    public func getRecords(_ input: GetRecordsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetRecordsOutput {
        return try await self.client.execute(operation: "GetRecords", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns a shard iterator. A shard iterator provides information about how to retrieve the stream records from within a shard.  Use the shard iterator in a subsequent  GetRecords request to read the stream records from the shard.  A shard iterator expires 15 minutes after it is returned to the requester.
    @Sendable
    public func getShardIterator(_ input: GetShardIteratorInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetShardIteratorOutput {
        return try await self.client.execute(operation: "GetShardIterator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns an array of stream ARNs associated with the current account and endpoint. If the TableName parameter is present, then ListStreams will return only the streams ARNs for that table.  You can call ListStreams at a maximum rate of 5 times per second.
    @Sendable
    public func listStreams(_ input: ListStreamsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListStreamsOutput {
        return try await self.client.execute(operation: "ListStreams", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }
}

extension DynamoDBStreams {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: DynamoDBStreams, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
