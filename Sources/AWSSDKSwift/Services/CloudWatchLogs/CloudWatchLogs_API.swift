// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
You can use Amazon CloudWatch Logs to monitor, store, and access your log files from Amazon EC2 instances, AWS CloudTrail, or other sources. You can then retrieve the associated log data from CloudWatch Logs using the CloudWatch console, CloudWatch Logs commands in the AWS CLI, CloudWatch Logs API, or CloudWatch Logs SDK. You can use CloudWatch Logs to:    Monitor logs from EC2 instances in real-time: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold that you specify. CloudWatch Logs uses your log data for monitoring; so, no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a CloudWatch metric that you specify.    Monitor AWS CloudTrail logged events: You can create alarms in CloudWatch and receive notifications of particular API activity as captured by CloudTrail and use the notification to perform troubleshooting.    Archive log data: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.  
*/
public struct CloudWatchLogs {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Logs_20140328",
            service: "logs",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2014-03-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CloudWatchLogsErrorType.self]
        )
    }

    ///  Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
    public func describeLogGroups(_ input: DescribeLogGroupsRequest) throws -> EventLoopFuture<DescribeLogGroupsResponse> {
        return try client.send(operation: "DescribeLogGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a log group with the specified name. You can create up to 5000 log groups per account. You must use the following guidelines when naming a log group:   Log group names must be unique within a region for an AWS account.   Log group names can be between 1 and 512 characters long.   Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).   If you associate a AWS Key Management Service (AWS KMS) customer master key (CMK) with the log group, ingested data is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested. If you attempt to associate a CMK with the log group but the CMK does not exist or the CMK is disabled, you will receive an InvalidParameterException error. 
    public func createLogGroup(_ input: CreateLogGroupRequest) throws {
        _ = try client.send(operation: "CreateLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified subscription filter.
    public func deleteSubscriptionFilter(_ input: DeleteSubscriptionFilterRequest) throws {
        _ = try client.send(operation: "DeleteSubscriptionFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the retention of the specified log group. A retention policy allows you to configure the number of days for which to retain log events in the specified log group.
    public func putRetentionPolicy(_ input: PutRetentionPolicyRequest) throws {
        _ = try client.send(operation: "PutRetentionPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a log stream for the specified log group. There is no limit on the number of log streams that you can create for a log group. You must use the following guidelines when naming a log stream:   Log stream names must be unique within the log group.   Log stream names can be between 1 and 512 characters long.   The ':' (colon) and '*' (asterisk) characters are not allowed.  
    public func createLogStream(_ input: CreateLogStreamRequest) throws {
        _ = try client.send(operation: "CreateLogStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
    public func describeSubscriptionFilters(_ input: DescribeSubscriptionFiltersRequest) throws -> EventLoopFuture<DescribeSubscriptionFiltersResponse> {
        return try client.send(operation: "DescribeSubscriptionFilters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53. An account can have up to 10 resource policies per region.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest) throws -> EventLoopFuture<PutResourcePolicyResponse> {
        return try client.send(operation: "PutResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Schedules a query of a log group using CloudWatch Logs Insights. You specify the log group to query, the query string to use, and the time to query. For more information, see CloudWatch Logs Insights Query Syntax.
    public func startQuery(_ input: StartQueryRequest) throws -> EventLoopFuture<StartQueryResponse> {
        return try client.send(operation: "StartQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.
    public func deleteLogStream(_ input: DeleteLogStreamRequest) throws {
        _ = try client.send(operation: "DeleteLogStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.
    public func testMetricFilter(_ input: TestMetricFilterRequest) throws -> EventLoopFuture<TestMetricFilterResponse> {
        return try client.send(operation: "TestMetricFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags for the specified log group.
    public func listTagsLogGroup(_ input: ListTagsLogGroupRequest) throws -> EventLoopFuture<ListTagsLogGroupResponse> {
        return try client.send(operation: "ListTagsLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account. You can request all queries, or limit it to queries of a specific log group or queries with a certain status.
    public func describeQueries(_ input: DescribeQueriesRequest) throws -> EventLoopFuture<DescribeQueriesResponse> {
        return try client.send(operation: "DescribeQueries", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified metric filter.
    public func deleteMetricFilter(_ input: DeleteMetricFilterRequest) throws {
        _ = try client.send(operation: "DeleteMetricFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the resource policies in this account.
    public func describeResourcePolicies(_ input: DescribeResourcePoliciesRequest) throws -> EventLoopFuture<DescribeResourcePoliciesResponse> {
        return try client.send(operation: "DescribeResourcePolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
    public func describeMetricFilters(_ input: DescribeMetricFiltersRequest) throws -> EventLoopFuture<DescribeMetricFiltersResponse> {
        return try client.send(operation: "DescribeMetricFilters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a CloudWatch Logs Insights query that is in progress. If the query has already ended, the operation returns an error indicating that the specified query is not running.
    public func stopQuery(_ input: StopQueryRequest) throws -> EventLoopFuture<StopQueryResponse> {
        return try client.send(operation: "StopQuery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates an access policy associated with an existing destination. An access policy is an IAM policy document that is used to authorize claims to register a subscription filter against a given destination.
    public func putDestinationPolicy(_ input: PutDestinationPolicyRequest) throws {
        _ = try client.send(operation: "PutDestinationPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified export task. The task must be in the PENDING or RUNNING state.
    public func cancelExportTask(_ input: CancelExportTaskRequest) throws {
        _ = try client.send(operation: "CancelExportTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.
    public func describeExportTasks(_ input: DescribeExportTasksRequest) throws -> EventLoopFuture<DescribeExportTasksResponse> {
        return try client.send(operation: "DescribeExportTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through PutLogEvents and have them delivered to a specific destination. Currently, the supported destinations are:   An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.   A logical destination that belongs to a different account, for cross-account delivery.   An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.   An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.   There can only be one subscription filter associated with a log group. If you are updating an existing filter, you must specify the correct name in filterName. Otherwise, the call fails because you cannot associate a second filter with a log group.
    public func putSubscriptionFilter(_ input: PutSubscriptionFilterRequest) throws {
        _ = try client.send(operation: "PutSubscriptionFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group. After the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested. Note that it can take up to 5 minutes for this operation to take effect.
    public func disassociateKmsKey(_ input: DisassociateKmsKeyRequest) throws {
        _ = try client.send(operation: "DisassociateKmsKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tags from the specified log group. To list the tags for a log group, use ListTagsLogGroup. To add tags, use UntagLogGroup.
    public func untagLogGroup(_ input: UntagLogGroupRequest) throws {
        _ = try client.send(operation: "UntagLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves all the fields and values of a single log event. All fields are retrieved, even if the original query that produced the logRecordPointer retrieved only a subset of fields. Fields are returned as field name/field value pairs. Additionally, the entire unparsed log event is returned within @message.
    public func getLogRecord(_ input: GetLogRecordRequest) throws -> EventLoopFuture<GetLogRecordResponse> {
        return try client.send(operation: "GetLogRecord", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the results from the specified query. If the query is in progress, partial results of that current execution are returned. Only the fields requested in the query are returned.  GetQueryResults does not start a query execution. To run a query, use .
    public func getQueryResults(_ input: GetQueryResultsRequest) throws -> EventLoopFuture<GetQueryResultsResponse> {
        return try client.send(operation: "GetQueryResults", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all your destinations. The results are ASCII-sorted by destination name.
    public func describeDestinations(_ input: DescribeDestinationsRequest) throws -> EventLoopFuture<DescribeDestinationsResponse> {
        return try client.send(operation: "DescribeDestinations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified retention policy. Log events do not expire if they belong to log groups without a retention policy.
    public func deleteRetentionPolicy(_ input: DeleteRetentionPolicyRequest) throws {
        _ = try client.send(operation: "DeleteRetentionPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.
    public func filterLogEvents(_ input: FilterLogEventsRequest) throws -> EventLoopFuture<FilterLogEventsResponse> {
        return try client.send(operation: "FilterLogEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a resource policy from this account. This revokes the access of the identities in that policy to put log events to this account.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest) throws {
        _ = try client.send(operation: "DeleteResourcePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group. Associating an AWS KMS CMK with a log group overrides any existing associations between the log group and a CMK. After a CMK is associated with a log group, all newly ingested data for the log group is encrypted using the CMK. This association is stored as long as the data encrypted with the CMK is still within Amazon CloudWatch Logs. This enables Amazon CloudWatch Logs to decrypt this data whenever it is requested. Note that it can take up to 5 minutes for this operation to take effect. If you attempt to associate a CMK with a log group but the CMK does not exist or the CMK is disabled, you will receive an InvalidParameterException error. 
    public func associateKmsKey(_ input: AssociateKmsKeyRequest) throws {
        _ = try client.send(operation: "AssociateKmsKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified log group and permanently deletes all the archived log events associated with the log group.
    public func deleteLogGroup(_ input: DeleteLogGroupRequest) throws {
        _ = try client.send(operation: "DeleteLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket. This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use DescribeExportTasks to get the status of the export task. Each account can only have one active (RUNNING or PENDING) export task at a time. To cancel an export task, use CancelExportTask. You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix to be used as the Amazon S3 key prefix for all exported objects.
    public func createExportTask(_ input: CreateExportTaskRequest) throws -> EventLoopFuture<CreateExportTaskResponse> {
        return try client.send(operation: "CreateExportTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the fields that are included in log events in the specified log group, along with the percentage of log events that contain each field. The search is limited to a time period that you specify. In the results, fields that start with @ are fields generated by CloudWatch Logs. For example, @timestamp is the timestamp of each log event. The response results are sorted by the frequency percentage, starting with the highest percentage.
    public func getLogGroupFields(_ input: GetLogGroupFieldsRequest) throws -> EventLoopFuture<GetLogGroupFieldsResponse> {
        return try client.send(operation: "GetLogGroupFields", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.
    public func describeLogStreams(_ input: DescribeLogStreamsRequest) throws -> EventLoopFuture<DescribeLogStreamsResponse> {
        return try client.send(operation: "DescribeLogStreams", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.
    public func deleteDestination(_ input: DeleteDestinationRequest) throws {
        _ = try client.send(operation: "DeleteDestination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads a batch of log events to the specified log stream. You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using DescribeLogStreams. If you call PutLogEvents twice within a narrow time period using the same value for sequenceToken, both calls may be successful, or one may be rejected. The batch of events must satisfy the following constraints:   The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.   None of the log events in the batch can be more than 2 hours in the future.   None of the log events in the batch can be older than 14 days or the retention period of the log group.   The log events in the batch must be in chronological ordered by their timestamp. The timestamp is the time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In AWS Tools for PowerShell and the AWS SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)    The maximum number of log events in a batch is 10,000.   A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.   If a call to PutLogEvents returns "UnrecognizedClientException" the most likely cause is an invalid AWS access key ID or secret key. 
    public func putLogEvents(_ input: PutLogEventsRequest) throws -> EventLoopFuture<PutLogEventsResponse> {
        return try client.send(operation: "PutLogEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a destination. A destination encapsulates a physical resource (such as an Amazon Kinesis stream) and enables you to subscribe to a real-time stream of log events for a different account, ingested using PutLogEvents. Currently, the only supported physical resource is a Kinesis stream belonging to the same account as the destination. Through an access policy, a destination controls what is written to its Kinesis stream. By default, PutDestination does not set any access policy with the destination, which means a cross-account user cannot call PutSubscriptionFilter against this destination. To enable this, the destination owner must call PutDestinationPolicy after PutDestination.
    public func putDestination(_ input: PutDestinationRequest) throws -> EventLoopFuture<PutDestinationResponse> {
        return try client.send(operation: "PutDestination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or updates the specified tags for the specified log group. To list the tags for a log group, use ListTagsLogGroup. To remove tags, use UntagLogGroup. For more information about tags, see Tag Log Groups in Amazon CloudWatch Logs in the Amazon CloudWatch Logs User Guide.
    public func tagLogGroup(_ input: TagLogGroupRequest) throws {
        _ = try client.send(operation: "TagLogGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists log events from the specified log stream. You can list all the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.
    public func getLogEvents(_ input: GetLogEventsRequest) throws -> EventLoopFuture<GetLogEventsResponse> {
        return try client.send(operation: "GetLogEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through PutLogEvents. The maximum number of metric filters that can be associated with a log group is 100.
    public func putMetricFilter(_ input: PutMetricFilterRequest) throws {
        _ = try client.send(operation: "PutMetricFilter", path: "/", httpMethod: "POST", input: input)
    }


}