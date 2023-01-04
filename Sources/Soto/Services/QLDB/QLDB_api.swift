//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

/// Service object for interacting with AWS QLDB service.
///
/// The control plane for Amazon QLDB
public struct QLDB: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the QLDB client
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
            service: "qldb",
            serviceProtocol: .restjson,
            apiVersion: "2019-01-02",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "ca-central-1": "qldb-fips.ca-central-1.amazonaws.com",
                    "us-east-1": "qldb-fips.us-east-1.amazonaws.com",
                    "us-east-2": "qldb-fips.us-east-2.amazonaws.com",
                    "us-west-2": "qldb-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: QLDBErrorType.self,
            xmlNamespace: "http://ledger.amazonaws.com/doc/2019-01-02/",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current status must be ACTIVE. You can't restart a stream after you cancel it. Canceled QLDB stream resources are subject to a 7-day retention period, so they are automatically deleted after this limit expires.
    public func cancelJournalKinesisStream(_ input: CancelJournalKinesisStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelJournalKinesisStreamResponse> {
        return self.client.execute(operation: "CancelJournalKinesisStream", path: "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new ledger in your Amazon Web Services account in the current Region.
    public func createLedger(_ input: CreateLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLedgerResponse> {
        return self.client.execute(operation: "CreateLedger", path: "/ledgers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger. You can disable it by calling the UpdateLedger operation to set the flag to false.
    @discardableResult public func deleteLedger(_ input: DeleteLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteLedger", path: "/ledgers/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed information about a given Amazon QLDB journal stream. The output includes the Amazon Resource Name (ARN), stream name, current status, creation time, and the parameters of the original stream creation request. This action does not return any expired journal streams. For more information, see Expiration for terminal streams in the Amazon QLDB Developer Guide.
    public func describeJournalKinesisStream(_ input: DescribeJournalKinesisStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJournalKinesisStreamResponse> {
        return self.client.execute(operation: "DescribeJournalKinesisStream", path: "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a journal export job, including the ledger name, export ID, creation time, current status, and the parameters of the original export creation request. This action does not return any expired export jobs. For more information, see Export job expiration in the Amazon QLDB Developer Guide. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.
    public func describeJournalS3Export(_ input: DescribeJournalS3ExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJournalS3ExportResponse> {
        return self.client.execute(operation: "DescribeJournalS3Export", path: "/ledgers/{Name}/journal-s3-exports/{ExportId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a ledger, including its state, permissions mode, encryption at rest settings, and when it was created.
    public func describeLedger(_ input: DescribeLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLedgerResponse> {
        return self.client.execute(operation: "DescribeLedger", path: "/ledgers/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. A journal export job can write the data objects in either the text or binary representation of Amazon Ion format, or in JSON Lines text format. In JSON Lines format, each journal block in the exported data object is a valid JSON object that is delimited by a newline. You can use this format to easily integrate JSON exports with analytics tools such as Glue and Amazon Athena because these services can parse newline-delimited JSON automatically. For more information about the format, see JSON Lines. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.
    public func exportJournalToS3(_ input: ExportJournalToS3Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportJournalToS3Response> {
        return self.client.execute(operation: "ExportJournalToS3", path: "/ledgers/{Name}/journal-s3-exports", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a block object at a specified address in a journal. Also returns a proof of the specified block for verification if DigestTipAddress is provided. For information about the data contents in a block, see Journal contents in the Amazon QLDB Developer Guide. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.
    public func getBlock(_ input: GetBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBlockResponse> {
        return self.client.execute(operation: "GetBlock", path: "/ledgers/{Name}/block", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.
    public func getDigest(_ input: GetDigestRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDigestResponse> {
        return self.client.execute(operation: "GetDigest", path: "/ledgers/{Name}/digest", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.
    public func getRevision(_ input: GetRevisionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRevisionResponse> {
        return self.client.execute(operation: "GetRevision", path: "/ledgers/{Name}/revision", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action does not return any expired journal streams. For more information, see Expiration for terminal streams in the Amazon QLDB Developer Guide. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.
    public func listJournalKinesisStreamsForLedger(_ input: ListJournalKinesisStreamsForLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalKinesisStreamsForLedgerResponse> {
        return self.client.execute(operation: "ListJournalKinesisStreamsForLedger", path: "/ledgers/{LedgerName}/journal-kinesis-streams", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of journal export job descriptions for all ledgers that are associated with the current Amazon Web Services account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see Export job expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3Exports(_ input: ListJournalS3ExportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalS3ExportsResponse> {
        return self.client.execute(operation: "ListJournalS3Exports", path: "/journal-s3-exports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see Export job expiration in the Amazon QLDB Developer Guide.
    public func listJournalS3ExportsForLedger(_ input: ListJournalS3ExportsForLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJournalS3ExportsForLedgerResponse> {
        return self.client.execute(operation: "ListJournalS3ExportsForLedger", path: "/ledgers/{Name}/journal-s3-exports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of ledger summaries that are associated with the current Amazon Web Services account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    public func listLedgers(_ input: ListLedgersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLedgersResponse> {
        return self.client.execute(operation: "ListLedgers", path: "/ledgers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all tags for a specified Amazon QLDB resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a journal stream for a given Amazon QLDB ledger. The stream captures every document revision that is committed to the ledger's journal and delivers the data to a specified Amazon Kinesis Data Streams resource.
    public func streamJournalToKinesis(_ input: StreamJournalToKinesisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StreamJournalToKinesisResponse> {
        return self.client.execute(operation: "StreamJournalToKinesis", path: "/ledgers/{LedgerName}/journal-kinesis-streams", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates properties on a ledger.
    public func updateLedger(_ input: UpdateLedgerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLedgerResponse> {
        return self.client.execute(operation: "UpdateLedger", path: "/ledgers/{Name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the permissions mode of a ledger.  Before you switch to the STANDARD permissions mode, you must first create all required IAM policies and table tags to avoid disruption to your users. To learn more, see Migrating to the standard permissions mode in the Amazon QLDB Developer Guide.
    public func updateLedgerPermissionsMode(_ input: UpdateLedgerPermissionsModeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLedgerPermissionsModeResponse> {
        return self.client.execute(operation: "UpdateLedgerPermissionsMode", path: "/ledgers/{Name}/permissions-mode", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension QLDB {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: QLDB, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension QLDB {
    ///  Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action does not return any expired journal streams. For more information, see Expiration for terminal streams in the Amazon QLDB Developer Guide. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listJournalKinesisStreamsForLedgerPaginator<Result>(
        _ input: ListJournalKinesisStreamsForLedgerRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListJournalKinesisStreamsForLedgerResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listJournalKinesisStreamsForLedger,
            inputKey: \ListJournalKinesisStreamsForLedgerRequest.nextToken,
            outputKey: \ListJournalKinesisStreamsForLedgerResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listJournalKinesisStreamsForLedgerPaginator(
        _ input: ListJournalKinesisStreamsForLedgerRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListJournalKinesisStreamsForLedgerResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listJournalKinesisStreamsForLedger,
            inputKey: \ListJournalKinesisStreamsForLedgerRequest.nextToken,
            outputKey: \ListJournalKinesisStreamsForLedgerResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of journal export job descriptions for all ledgers that are associated with the current Amazon Web Services account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see Export job expiration in the Amazon QLDB Developer Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listJournalS3ExportsPaginator<Result>(
        _ input: ListJournalS3ExportsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListJournalS3ExportsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listJournalS3Exports,
            inputKey: \ListJournalS3ExportsRequest.nextToken,
            outputKey: \ListJournalS3ExportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listJournalS3ExportsPaginator(
        _ input: ListJournalS3ExportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListJournalS3ExportsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listJournalS3Exports,
            inputKey: \ListJournalS3ExportsRequest.nextToken,
            outputKey: \ListJournalS3ExportsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see Export job expiration in the Amazon QLDB Developer Guide.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listJournalS3ExportsForLedgerPaginator<Result>(
        _ input: ListJournalS3ExportsForLedgerRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListJournalS3ExportsForLedgerResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listJournalS3ExportsForLedger,
            inputKey: \ListJournalS3ExportsForLedgerRequest.nextToken,
            outputKey: \ListJournalS3ExportsForLedgerResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listJournalS3ExportsForLedgerPaginator(
        _ input: ListJournalS3ExportsForLedgerRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListJournalS3ExportsForLedgerResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listJournalS3ExportsForLedger,
            inputKey: \ListJournalS3ExportsForLedgerRequest.nextToken,
            outputKey: \ListJournalS3ExportsForLedgerResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of ledger summaries that are associated with the current Amazon Web Services account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listLedgersPaginator<Result>(
        _ input: ListLedgersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLedgersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listLedgers,
            inputKey: \ListLedgersRequest.nextToken,
            outputKey: \ListLedgersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listLedgersPaginator(
        _ input: ListLedgersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLedgersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listLedgers,
            inputKey: \ListLedgersRequest.nextToken,
            outputKey: \ListLedgersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension QLDB.ListJournalKinesisStreamsForLedgerRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListJournalKinesisStreamsForLedgerRequest {
        return .init(
            ledgerName: self.ledgerName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension QLDB.ListJournalS3ExportsForLedgerRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListJournalS3ExportsForLedgerRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )
    }
}

extension QLDB.ListJournalS3ExportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListJournalS3ExportsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension QLDB.ListLedgersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> QLDB.ListLedgersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
