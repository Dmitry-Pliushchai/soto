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

/// Service object for interacting with AWS TimestreamWrite service.
///
/// Amazon Timestream Write Amazon Timestream is a fast, scalable, fully managed time-series database service that makes it easy to store and analyze trillions of time-series data points per day. With Timestream, you can easily store and analyze IoT sensor data to derive insights from your IoT applications. You can analyze industrial telemetry to streamline equipment management and maintenance. You can also store and analyze log data and metrics to improve the performance and availability of your applications.  Timestream is built from the ground up to effectively ingest, process, and store time-series data. It organizes data to optimize query processing. It automatically scales based on the volume of data ingested and on the query volume to ensure you receive optimal performance while inserting and querying data. As your data grows over time, Timestream’s adaptive query processing engine spans across storage tiers to provide fast analysis while reducing costs.
public struct TimestreamWrite: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig
    /// endpoint storage
    let endpointStorage: AWSEndpointStorage

    // MARK: Initialization

    /// Initialize the TimestreamWrite client
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
            amzTarget: "Timestream_20181101",
            service: "ingest.timestream",
            signingName: "timestream",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2018-11-01",
            endpoint: endpoint,
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-gov-west-1": "ingest.timestream.us-gov-west-1.amazonaws.com"
                ])
            ],
            errorType: TimestreamWriteErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
        self.endpointStorage = .init()
    }

    // MARK: API Calls

    /// Creates a new Timestream batch load task. A batch load task processes data from a CSV source in an S3 location and writes to a Timestream table. A mapping from source to target is defined in a batch load task. Errors and events are written to a report at an S3 location. For the report, if the KMS key is not specified, the report will be encrypted with an S3 managed key when SSE_S3 is the option. Otherwise an error is thrown. For more information, see Amazon Web Services managed keys. Service quotas apply. For details, see code sample.
    @Sendable
    public func createBatchLoadTask(_ input: CreateBatchLoadTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateBatchLoadTaskResponse {
        return try await self.client.execute(operation: "CreateBatchLoadTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Creates a new Timestream database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. For more information, see Amazon Web Services managed keys. Service quotas apply. For details, see code sample.
    @Sendable
    public func createDatabase(_ input: CreateDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateDatabaseResponse {
        return try await self.client.execute(operation: "CreateDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Adds a new table to an existing database in your account. In an Amazon Web Services account, table names must be at least unique within each Region if they are in the same database. You might have identical table names in the same Region if the tables are in separate databases. While creating the table, you must specify the table name, database name, and the retention properties. Service quotas apply. See code sample for details.
    @Sendable
    public func createTable(_ input: CreateTableRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> CreateTableResponse {
        return try await self.client.execute(operation: "CreateTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Deletes a given Timestream database. This is an irreversible operation. After a database is deleted, the time-series data from its tables cannot be recovered.   All tables in the database must be deleted first, or a ValidationException error will be thrown.  Due to the nature of distributed retries, the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent.  See code sample for details.
    @Sendable
    public func deleteDatabase(_ input: DeleteDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "DeleteDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Deletes a given Timestream table. This is an irreversible operation. After a Timestream database table is deleted, the time-series data stored in the table cannot be recovered.   Due to the nature of distributed retries, the operation can return either success or a ResourceNotFoundException. Clients should consider them equivalent.  See code sample for details.
    @Sendable
    public func deleteTable(_ input: DeleteTableRequest, logger: Logger = AWSClient.loggingDisabled) async throws {
        return try await self.client.execute(operation: "DeleteTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Returns information about the batch load task, including configurations, mappings, progress, and other details. Service quotas apply. See code sample for details.
    @Sendable
    public func describeBatchLoadTask(_ input: DescribeBatchLoadTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeBatchLoadTaskResponse {
        return try await self.client.execute(operation: "DescribeBatchLoadTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Returns information about the database, including the database name, time that the database was created, and the total number of tables found within the database. Service quotas apply. See code sample for details.
    @Sendable
    public func describeDatabase(_ input: DescribeDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeDatabaseResponse {
        return try await self.client.execute(operation: "DescribeDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Returns a list of available endpoints to make Timestream API calls against. This API operation is available through both the Write and Query APIs. Because the Timestream SDKs are designed to transparently work with the service’s architecture, including the management and mapping of the service endpoints, we don't recommend that you use this API operation unless:   You are using VPC endpoints (Amazon Web Services PrivateLink) with Timestream    Your application uses a programming language that does not yet have SDK support   You require better control over the client-side implementation   For detailed information on how and when to use and implement DescribeEndpoints, see The Endpoint Discovery Pattern.
    @Sendable
    public func describeEndpoints(_ input: DescribeEndpointsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeEndpointsResponse {
        return try await self.client.execute(operation: "DescribeEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger)
    }

    /// Returns information about the table, including the table name, database name, retention duration of the memory store and the magnetic store. Service quotas apply. See code sample for details.
    @Sendable
    public func describeTable(_ input: DescribeTableRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeTableResponse {
        return try await self.client.execute(operation: "DescribeTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Provides a list of batch load tasks, along with the name, status, when the task is resumable until, and other details. See code sample for details.
    @Sendable
    public func listBatchLoadTasks(_ input: ListBatchLoadTasksRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListBatchLoadTasksResponse {
        return try await self.client.execute(operation: "ListBatchLoadTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Returns a list of your Timestream databases. Service quotas apply. See code sample for details.
    @Sendable
    public func listDatabases(_ input: ListDatabasesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListDatabasesResponse {
        return try await self.client.execute(operation: "ListDatabases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Provides a list of tables, along with the name, status, and retention properties of each table. See code sample for details.
    @Sendable
    public func listTables(_ input: ListTablesRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTablesResponse {
        return try await self.client.execute(operation: "ListTables", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    ///  Lists all tags on a Timestream resource.
    @Sendable
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    ///
    @Sendable
    public func resumeBatchLoadTask(_ input: ResumeBatchLoadTaskRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> ResumeBatchLoadTaskResponse {
        return try await self.client.execute(operation: "ResumeBatchLoadTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    ///  Associates a set of tags with a Timestream resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking.
    @Sendable
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    ///  Removes the association of tags from a Timestream resource.
    @Sendable
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    ///  Modifies the KMS key for an existing database. While updating the database, you must specify the database name and the identifier of the new KMS key to be used (KmsKeyId). If there are any concurrent UpdateDatabase requests, first writer wins.  See code sample for details.
    @Sendable
    public func updateDatabase(_ input: UpdateDatabaseRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateDatabaseResponse {
        return try await self.client.execute(operation: "UpdateDatabase", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Modifies the retention duration of the memory store and magnetic store for your Timestream table. Note that the change in retention duration takes effect immediately. For example, if the retention period of the memory store was initially set to 2 hours and then changed to 24 hours, the memory store will be capable of holding 24 hours of data, but will be populated with 24 hours of data 22 hours after this change was made. Timestream does not retrieve data from the magnetic store to populate the memory store.  See code sample for details.
    @Sendable
    public func updateTable(_ input: UpdateTableRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> UpdateTableResponse {
        return try await self.client.execute(operation: "UpdateTable", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    /// Enables you to write your time-series data into Timestream. You can specify a single data point or a batch of data points to be inserted into the system. Timestream offers you a flexible schema that auto detects the column names and data types for your Timestream tables based on the dimension names and data types of the data points you specify when invoking writes into the database.  Timestream supports eventual consistency read semantics. This means that when you query data immediately after writing a batch of data into Timestream, the query results might not reflect the results of a recently completed write operation. The results may also include some stale data. If you repeat the query request after a short time, the results should return the latest data. Service quotas apply.  See code sample for details.  Upserts  You can use the Version parameter in a WriteRecords request to update data points. Timestream tracks a version number with each record. Version defaults to 1 when it's not specified for the record in the request. Timestream updates an existing record’s measure value along with its Version when it receives a write request with a higher Version number for that record. When it receives an update request where the measure value is the same as that of the existing record, Timestream still updates Version, if it is greater than the existing value of Version. You can update a data point as many times as desired, as long as the value of Version continuously increases.  For example, suppose you write a new record without indicating Version in the request. Timestream stores this record, and set Version to 1. Now, suppose you try to update this record with a WriteRecords request of the same record with a different measure value but, like before, do not provide Version. In this case, Timestream will reject this update with a RejectedRecordsException since the updated record’s version is not greater than the existing value of Version.  However, if you were to resend the update request with Version set to 2, Timestream would then succeed in updating the record’s value, and the Version would be set to 2. Next, suppose you sent a WriteRecords request with this same record and an identical measure value, but with Version set to 3. In this case, Timestream would only update Version to 3. Any further updates would need to send a version number greater than 3, or the update requests would receive a RejectedRecordsException.
    @Sendable
    public func writeRecords(_ input: WriteRecordsRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> WriteRecordsResponse {
        return try await self.client.execute(operation: "WriteRecords", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, endpointDiscovery: .init(storage: self.endpointStorage, discover: self.getEndpoint, required: true), logger: logger)
    }

    @Sendable func getEndpoint(logger: Logger) async throws -> AWSEndpoints {
        let response = try await self.describeEndpoints(.init(), logger: logger)
        return .init(endpoints: response.endpoints.map {
            .init(address: "https://\($0.address)", cachePeriodInMinutes: $0.cachePeriodInMinutes)
        })
    }
}

extension TimestreamWrite {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: TimestreamWrite, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
        self.endpointStorage = .init()
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension TimestreamWrite {
    /// Provides a list of batch load tasks, along with the name, status, when the task is resumable until, and other details. See code sample for details.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listBatchLoadTasksPaginator(
        _ input: ListBatchLoadTasksRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListBatchLoadTasksRequest, ListBatchLoadTasksResponse> {
        return .init(
            input: input,
            command: self.listBatchLoadTasks,
            inputKey: \ListBatchLoadTasksRequest.nextToken,
            outputKey: \ListBatchLoadTasksResponse.nextToken,
            logger: logger
        )
    }

    /// Returns a list of your Timestream databases. Service quotas apply. See code sample for details.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listDatabasesPaginator(
        _ input: ListDatabasesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListDatabasesRequest, ListDatabasesResponse> {
        return .init(
            input: input,
            command: self.listDatabases,
            inputKey: \ListDatabasesRequest.nextToken,
            outputKey: \ListDatabasesResponse.nextToken,
            logger: logger
        )
    }

    /// Provides a list of tables, along with the name, status, and retention properties of each table. See code sample for details.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTablesPaginator(
        _ input: ListTablesRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTablesRequest, ListTablesResponse> {
        return .init(
            input: input,
            command: self.listTables,
            inputKey: \ListTablesRequest.nextToken,
            outputKey: \ListTablesResponse.nextToken,
            logger: logger
        )
    }
}

extension TimestreamWrite.ListBatchLoadTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TimestreamWrite.ListBatchLoadTasksRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            taskStatus: self.taskStatus
        )
    }
}

extension TimestreamWrite.ListDatabasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TimestreamWrite.ListDatabasesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension TimestreamWrite.ListTablesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> TimestreamWrite.ListTablesRequest {
        return .init(
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
