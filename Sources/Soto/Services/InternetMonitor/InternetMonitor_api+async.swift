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
extension InternetMonitor {
    // MARK: Async API Calls

    /// Creates a monitor in Amazon CloudWatch Internet Monitor. A monitor is built based on information from the application resources that you add: VPCs,
    /// 			Network Load Balancers (NLBs), Amazon CloudFront distributions, and Amazon WorkSpaces directories. Internet Monitor then publishes internet measurements from Amazon Web Services
    /// 			that are specific to the city-networks. That is, the locations and ASNs (typically internet service providers or ISPs),
    /// 			where clients access your application. For more information, see Using Amazon CloudWatch Internet Monitor in the Amazon CloudWatch User
    /// 					Guide. When you create a monitor, you choose the percentage of traffic that you want to monitor. You can also set a maximum limit for the
    /// 			number of city-networks where client traffic is monitored, that caps the total traffic that Internet Monitor monitors. A city-network
    /// 			maximum is the limit of city-networks, but you only pay for the number of city-networks that are actually monitored. You can update your monitor
    /// 			at any time to change the percentage of traffic to monitor or the city-networks maximum. For more information, see Choosing a city-network maximum value in the Amazon CloudWatch User Guide.
    public func createMonitor(_ input: CreateMonitorInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMonitorOutput {
        return try await self.client.execute(operation: "CreateMonitor", path: "/v20210603/Monitors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a monitor in Amazon CloudWatch Internet Monitor.
    public func deleteMonitor(_ input: DeleteMonitorInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMonitorOutput {
        return try await self.client.execute(operation: "DeleteMonitor", path: "/v20210603/Monitors/{MonitorName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information the Amazon CloudWatch Internet Monitor has created and stored about a health event for a specified monitor. This information includes the impacted locations,
    /// 			and all the information related to the event, by location. The information returned includes the impact on performance, availability, and round-trip time, information about the network providers (ASNs),
    /// 			the event type, and so on. Information rolled up at the global traffic level is also returned, including the impact type and total traffic impact.
    public func getHealthEvent(_ input: GetHealthEventInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetHealthEventOutput {
        return try await self.client.execute(operation: "GetHealthEvent", path: "/v20210603/Monitors/{MonitorName}/HealthEvents/{EventId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a monitor in Amazon CloudWatch Internet Monitor based on a monitor name. The information returned includes the Amazon Resource Name (ARN), create time,
    /// 			modified time, resources included in the monitor, and status information.
    public func getMonitor(_ input: GetMonitorInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMonitorOutput {
        return try await self.client.execute(operation: "GetMonitor", path: "/v20210603/Monitors/{MonitorName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Return the data for a query with the Amazon CloudWatch Internet Monitor query interface. Specify the query that you want to return results for by providing
    /// 			a QueryId and a monitor name. For more information about using the query interface, including examples, see
    /// 			Using the Amazon CloudWatch Internet Monitor query interface
    /// 			in the Amazon CloudWatch Internet Monitor User Guide.
    public func getQueryResults(_ input: GetQueryResultsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetQueryResultsOutput {
        return try await self.client.execute(operation: "GetQueryResults", path: "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Results", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the current status of a query for the Amazon CloudWatch Internet Monitor query interface, for a specified query ID and monitor.
    /// 			When you run a query, check the status to make sure that the query has SUCCEEDED before you review the results.    QUEUED: The query is scheduled to run.    RUNNING: The query is in progress but not complete.    SUCCEEDED: The query completed sucessfully.    FAILED: The query failed due to an error.    CANCELED: The query was canceled.
    public func getQueryStatus(_ input: GetQueryStatusInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetQueryStatusOutput {
        return try await self.client.execute(operation: "GetQueryStatus", path: "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Status", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all health events for a monitor in Amazon CloudWatch Internet Monitor. Returns information for health events including the event start and end time and
    /// 			the status.  Health events that have start times during the time frame that is requested are not included in the list of health events.
    public func listHealthEvents(_ input: ListHealthEventsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListHealthEventsOutput {
        return try await self.client.execute(operation: "ListHealthEvents", path: "/v20210603/Monitors/{MonitorName}/HealthEvents", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of your monitors for Amazon CloudWatch Internet Monitor and their statuses, along with the Amazon Resource Name (ARN) and name of each monitor.
    public func listMonitors(_ input: ListMonitorsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMonitorsOutput {
        return try await self.client.execute(operation: "ListMonitors", path: "/v20210603/Monitors", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start a query to return data for a specific query type for the Amazon CloudWatch Internet Monitor query interface. Specify a time period
    /// 			for the data that you want returned by using StartTime and EndTime. You filter the query
    /// 			results to return by providing parameters that you specify with FilterParameters. For more information about using the query interface, including examples, see
    /// 			Using the Amazon CloudWatch Internet Monitor query interface
    /// 		in the Amazon CloudWatch Internet Monitor User Guide.
    public func startQuery(_ input: StartQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartQueryOutput {
        return try await self.client.execute(operation: "StartQuery", path: "/v20210603/Monitors/{MonitorName}/Queries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stop a query that is progress for a specific monitor.
    public func stopQuery(_ input: StopQueryInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopQueryOutput {
        return try await self.client.execute(operation: "StopQuery", path: "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a tag to a resource. Tags are supported only for monitors in Amazon CloudWatch Internet Monitor. You can add a maximum of 50 tags in Internet Monitor. A minimum of one tag is required for this call. It returns an error if you use the TagResource request with 0 tags.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a monitor. You can update a monitor to change the percentage of traffic to monitor or the maximum number of city-networks
    /// 			(locations and ASNs), to add or remove resources, or to change the status of the monitor. Note that you can't change the name of a monitor. The city-network maximum that you choose is the limit, but you only pay for the number of city-networks that are actually monitored.
    /// 			For more information, see Choosing a city-network maximum value in the Amazon CloudWatch User Guide.
    public func updateMonitor(_ input: UpdateMonitorInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMonitorOutput {
        return try await self.client.execute(operation: "UpdateMonitor", path: "/v20210603/Monitors/{MonitorName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension InternetMonitor {
    /// Return the data for a query with the Amazon CloudWatch Internet Monitor query interface. Specify the query that you want to return results for by providing
    /// 			a QueryId and a monitor name. For more information about using the query interface, including examples, see
    /// 			Using the Amazon CloudWatch Internet Monitor query interface
    /// 			in the Amazon CloudWatch Internet Monitor User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getQueryResultsPaginator(
        _ input: GetQueryResultsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetQueryResultsInput, GetQueryResultsOutput> {
        return .init(
            input: input,
            command: self.getQueryResults,
            inputKey: \GetQueryResultsInput.nextToken,
            outputKey: \GetQueryResultsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all health events for a monitor in Amazon CloudWatch Internet Monitor. Returns information for health events including the event start and end time and
    /// 			the status.  Health events that have start times during the time frame that is requested are not included in the list of health events.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHealthEventsPaginator(
        _ input: ListHealthEventsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHealthEventsInput, ListHealthEventsOutput> {
        return .init(
            input: input,
            command: self.listHealthEvents,
            inputKey: \ListHealthEventsInput.nextToken,
            outputKey: \ListHealthEventsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all of your monitors for Amazon CloudWatch Internet Monitor and their statuses, along with the Amazon Resource Name (ARN) and name of each monitor.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMonitorsPaginator(
        _ input: ListMonitorsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMonitorsInput, ListMonitorsOutput> {
        return .init(
            input: input,
            command: self.listMonitors,
            inputKey: \ListMonitorsInput.nextToken,
            outputKey: \ListMonitorsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
