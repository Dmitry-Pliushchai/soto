//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension DynamoDB {

    ///  The BatchGetItem operation returns the attributes of one or more items from one or more tables. You identify requested items by primary key. A single operation can retrieve up to 16 MB of data, which can contain as many as 100 items. BatchGetItem returns a partial result if the response size limit is exceeded, the table's provisioned throughput is exceeded, or an internal processing failure occurs. If a partial result is returned, the operation returns a value for UnprocessedKeys. You can use this value to retry the operation starting with the next item to get.  If you request more than 100 items, BatchGetItem returns a ValidationException with the message "Too many items requested for the BatchGetItem call."  For example, if you ask to retrieve 100 items, but each individual item is 300 KB in size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns an appropriate UnprocessedKeys value so you can get the next page of results. If desired, your application can include its own logic to assemble the pages of results into one dataset. If none of the items can be processed due to insufficient provisioned throughput on all of the tables in the request, then BatchGetItem returns a ProvisionedThroughputExceededException. If at least one of the items is successfully processed, then BatchGetItem completes successfully, while returning the keys of the unread items in UnprocessedKeys.  If DynamoDB returns any unprocessed items, you should retry the batch operation on those items. However, we strongly recommend that you use an exponential backoff algorithm. If you retry the batch operation immediately, the underlying read or write requests can still fail due to throttling on the individual tables. If you delay the batch operation using exponential backoff, the individual requests in the batch are much more likely to succeed. For more information, see Batch Operations and Error Handling in the Amazon DynamoDB Developer Guide.  By default, BatchGetItem performs eventually consistent reads on every table in the request. If you want strongly consistent reads instead, you can set ConsistentRead to true for any or all tables. In order to minimize response latency, BatchGetItem retrieves items in parallel. When designing your application, keep in mind that DynamoDB does not return items in any particular order. To help parse the response by item, include the primary key values for the items in your request in the ProjectionExpression parameter. If a requested item does not exist, it is not returned in the result. Requests for nonexistent items consume the minimum read capacity units according to the type of read. For more information, see Working with Tables in the Amazon DynamoDB Developer Guide.
    public func batchGetItemPaginator(
        _ input: BatchGetItemInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (BatchGetItemOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: batchGetItem, tokenKey: \BatchGetItemOutput.unprocessedKeys, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of ContributorInsightsSummary for a table and all its global secondary indexes.
    public func listContributorInsightsPaginator(
        _ input: ListContributorInsightsInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListContributorInsightsOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listContributorInsights, tokenKey: \ListContributorInsightsOutput.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns an array of table names associated with the current account and endpoint. The output from ListTables is paginated, with each page returning a maximum of 100 table names.
    public func listTablesPaginator(
        _ input: ListTablesInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTablesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTables, tokenKey: \ListTablesOutput.lastEvaluatedTableName, on: eventLoop, onPage: onPage)
    }

    ///  The Query operation finds items based on primary key values. You can query any table or secondary index that has a composite primary key (a partition key and a sort key).  Use the KeyConditionExpression parameter to provide a specific value for the partition key. The Query operation will return all of the items from the table or index with that partition key value. You can optionally narrow the scope of the Query operation by specifying a sort key value and a comparison operator in KeyConditionExpression. To further refine the Query results, you can optionally provide a FilterExpression. A FilterExpression determines which items within the results should be returned to you. All of the other results are discarded.   A Query operation always returns a result set. If no matching items are found, the result set will be empty. Queries that do not return results consume the minimum number of read capacity units for that type of read operation.    DynamoDB calculates the number of read capacity units consumed based on item size, not on the amount of data that is returned to an application. The number of capacity units consumed will be the same whether you request all of the attributes (the default behavior) or just some of them (using a projection expression). The number will also be the same whether or not you use a FilterExpression.    Query results are always sorted by the sort key value. If the data type of the sort key is Number, the results are returned in numeric order; otherwise, the results are returned in order of UTF-8 bytes. By default, the sort order is ascending. To reverse the order, set the ScanIndexForward parameter to false.   A single Query operation will read up to the maximum number of items set (if using the Limit parameter) or a maximum of 1 MB of data and then apply any filtering to the results using FilterExpression. If LastEvaluatedKey is present in the response, you will need to paginate the result set. For more information, see Paginating the Results in the Amazon DynamoDB Developer Guide.   FilterExpression is applied after a Query finishes, but before the results are returned. A FilterExpression cannot contain partition key or sort key attributes. You need to specify those attributes in the KeyConditionExpression.    A Query operation can return an empty result set and a LastEvaluatedKey if all the items read for the page of results are filtered out.   You can query a table, a local secondary index, or a global secondary index. For a query on a table or on a local secondary index, you can set the ConsistentRead parameter to true and obtain a strongly consistent result. Global secondary indexes support eventually consistent reads only, so do not specify ConsistentRead when querying a global secondary index.
    public func queryPaginator(
        _ input: QueryInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (QueryOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: query, tokenKey: \QueryOutput.lastEvaluatedKey, on: eventLoop, onPage: onPage)
    }

    ///  The Scan operation returns one or more items and item attributes by accessing every item in a table or a secondary index. To have DynamoDB return fewer items, you can provide a FilterExpression operation. If the total number of scanned items exceeds the maximum dataset size limit of 1 MB, the scan stops and results are returned to the user as a LastEvaluatedKey value to continue the scan in a subsequent operation. The results also include the number of items exceeding the limit. A scan can result in no table data meeting the filter criteria.  A single Scan operation reads up to the maximum number of items set (if using the Limit parameter) or a maximum of 1 MB of data and then apply any filtering to the results using FilterExpression. If LastEvaluatedKey is present in the response, you need to paginate the result set. For more information, see Paginating the Results in the Amazon DynamoDB Developer Guide.   Scan operations proceed sequentially; however, for faster performance on a large table or secondary index, applications can request a parallel Scan operation by providing the Segment and TotalSegments parameters. For more information, see Parallel Scan in the Amazon DynamoDB Developer Guide.  Scan uses eventually consistent reads when accessing the data in a table; therefore, the result set might not include the changes to data in the table immediately before the operation began. If you need a consistent copy of the data, as of the time that the Scan begins, you can set the ConsistentRead parameter to true.
    public func scanPaginator(
        _ input: ScanInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ScanOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: scan, tokenKey: \ScanOutput.lastEvaluatedKey, on: eventLoop, onPage: onPage)
    }

}

extension DynamoDB.BatchGetItemInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: [String: DynamoDB.KeysAndAttributes]) -> DynamoDB.BatchGetItemInput {
        return .init(
            requestItems: token,
            returnConsumedCapacity: self.returnConsumedCapacity
        )

    }
}

extension DynamoDB.ListContributorInsightsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DynamoDB.ListContributorInsightsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            tableName: self.tableName
        )

    }
}

extension DynamoDB.ListTablesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DynamoDB.ListTablesInput {
        return .init(
            exclusiveStartTableName: token,
            limit: self.limit
        )

    }
}

extension DynamoDB.QueryInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: [String: DynamoDB.AttributeValue]) -> DynamoDB.QueryInput {
        return .init(
            attributesToGet: self.attributesToGet,
            conditionalOperator: self.conditionalOperator,
            consistentRead: self.consistentRead,
            exclusiveStartKey: token,
            expressionAttributeNames: self.expressionAttributeNames,
            expressionAttributeValues: self.expressionAttributeValues,
            filterExpression: self.filterExpression,
            indexName: self.indexName,
            keyConditionExpression: self.keyConditionExpression,
            keyConditions: self.keyConditions,
            limit: self.limit,
            projectionExpression: self.projectionExpression,
            queryFilter: self.queryFilter,
            returnConsumedCapacity: self.returnConsumedCapacity,
            scanIndexForward: self.scanIndexForward,
            select: self.select,
            tableName: self.tableName
        )

    }
}

extension DynamoDB.ScanInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: [String: DynamoDB.AttributeValue]) -> DynamoDB.ScanInput {
        return .init(
            attributesToGet: self.attributesToGet,
            conditionalOperator: self.conditionalOperator,
            consistentRead: self.consistentRead,
            exclusiveStartKey: token,
            expressionAttributeNames: self.expressionAttributeNames,
            expressionAttributeValues: self.expressionAttributeValues,
            filterExpression: self.filterExpression,
            indexName: self.indexName,
            limit: self.limit,
            projectionExpression: self.projectionExpression,
            returnConsumedCapacity: self.returnConsumedCapacity,
            scanFilter: self.scanFilter,
            segment: self.segment,
            select: self.select,
            tableName: self.tableName,
            totalSegments: self.totalSegments
        )

    }
}


