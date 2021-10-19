//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

// MARK: Paginators

extension ECS {
    ///  Lists the account settings for a specified principal.
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
    public func listAccountSettingsPaginator<Result>(
        _ input: ListAccountSettingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAccountSettingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccountSettings,
            inputKey: \ListAccountSettingsRequest.nextToken,
            outputKey: \ListAccountSettingsResponse.nextToken,
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
    public func listAccountSettingsPaginator(
        _ input: ListAccountSettingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAccountSettingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccountSettings,
            inputKey: \ListAccountSettingsRequest.nextToken,
            outputKey: \ListAccountSettingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the attributes for Amazon ECS resources within a specified target type and cluster.
    ///  			When you specify a target type and cluster, ListAttributes returns a list
    ///  			of attribute objects, one for each attribute on each resource. You can filter the list
    ///  			of results to a single attribute name to only return results that have that name. You
    ///  			can also filter the results by attribute name and value, for example, to see which
    ///  			container instances in a cluster are running a Linux AMI
    ///  			(ecs.os-type=linux).
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
    public func listAttributesPaginator<Result>(
        _ input: ListAttributesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAttributesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAttributes,
            inputKey: \ListAttributesRequest.nextToken,
            outputKey: \ListAttributesResponse.nextToken,
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
    public func listAttributesPaginator(
        _ input: ListAttributesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAttributesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAttributes,
            inputKey: \ListAttributesRequest.nextToken,
            outputKey: \ListAttributesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of existing clusters.
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
    public func listClustersPaginator<Result>(
        _ input: ListClustersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListClustersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listClusters,
            inputKey: \ListClustersRequest.nextToken,
            outputKey: \ListClustersResponse.nextToken,
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
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListClustersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listClusters,
            inputKey: \ListClustersRequest.nextToken,
            outputKey: \ListClustersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of container instances in a specified cluster. You can filter the
    ///  			results of a ListContainerInstances operation with cluster query language
    ///  			statements inside the filter parameter. For more information, see Cluster Query Language in the
    ///  				Amazon Elastic Container Service Developer Guide.
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
    public func listContainerInstancesPaginator<Result>(
        _ input: ListContainerInstancesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListContainerInstancesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listContainerInstances,
            inputKey: \ListContainerInstancesRequest.nextToken,
            outputKey: \ListContainerInstancesResponse.nextToken,
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
    public func listContainerInstancesPaginator(
        _ input: ListContainerInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListContainerInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listContainerInstances,
            inputKey: \ListContainerInstancesRequest.nextToken,
            outputKey: \ListContainerInstancesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of services. You can filter the results by cluster, launch type, and
    ///  			scheduling strategy.
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
    public func listServicesPaginator<Result>(
        _ input: ListServicesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListServicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
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
    public func listServicesPaginator(
        _ input: ListServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListServicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listServices,
            inputKey: \ListServicesRequest.nextToken,
            outputKey: \ListServicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of task definition families that are registered to your account (which
    ///  			may include task definition families that no longer have any ACTIVE task
    ///  			definition revisions).
    ///  		       You can filter out task definition families that do not contain any
    ///  				ACTIVE task definition revisions by setting the status
    ///  			parameter to ACTIVE. You can also filter the results with the
    ///  				familyPrefix parameter.
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
    public func listTaskDefinitionFamiliesPaginator<Result>(
        _ input: ListTaskDefinitionFamiliesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTaskDefinitionFamiliesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTaskDefinitionFamilies,
            inputKey: \ListTaskDefinitionFamiliesRequest.nextToken,
            outputKey: \ListTaskDefinitionFamiliesResponse.nextToken,
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
    public func listTaskDefinitionFamiliesPaginator(
        _ input: ListTaskDefinitionFamiliesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTaskDefinitionFamiliesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTaskDefinitionFamilies,
            inputKey: \ListTaskDefinitionFamiliesRequest.nextToken,
            outputKey: \ListTaskDefinitionFamiliesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of task definitions that are registered to your account. You can filter
    ///  			the results by family name with the familyPrefix parameter or by status
    ///  			with the status parameter.
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
    public func listTaskDefinitionsPaginator<Result>(
        _ input: ListTaskDefinitionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTaskDefinitionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTaskDefinitions,
            inputKey: \ListTaskDefinitionsRequest.nextToken,
            outputKey: \ListTaskDefinitionsResponse.nextToken,
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
    public func listTaskDefinitionsPaginator(
        _ input: ListTaskDefinitionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTaskDefinitionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTaskDefinitions,
            inputKey: \ListTaskDefinitionsRequest.nextToken,
            outputKey: \ListTaskDefinitionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of tasks. You can filter the results by cluster, task definition
    ///  			family, container instance, launch type, what IAM principal started the task, or by the
    ///  			desired status of the task.
    ///  		       Recently stopped tasks might appear in the returned results. Currently, stopped tasks
    ///  			appear in the returned results for at least one hour.
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
    public func listTasksPaginator<Result>(
        _ input: ListTasksRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTasksResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listTasks,
            inputKey: \ListTasksRequest.nextToken,
            outputKey: \ListTasksResponse.nextToken,
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
    public func listTasksPaginator(
        _ input: ListTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTasksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listTasks,
            inputKey: \ListTasksRequest.nextToken,
            outputKey: \ListTasksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ECS.ListAccountSettingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListAccountSettingsRequest {
        return .init(
            effectiveSettings: self.effectiveSettings,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            principalArn: self.principalArn,
            value: self.value
        )
    }
}

extension ECS.ListAttributesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListAttributesRequest {
        return .init(
            attributeName: self.attributeName,
            attributeValue: self.attributeValue,
            cluster: self.cluster,
            maxResults: self.maxResults,
            nextToken: token,
            targetType: self.targetType
        )
    }
}

extension ECS.ListClustersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListClustersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ECS.ListContainerInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListContainerInstancesRequest {
        return .init(
            cluster: self.cluster,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension ECS.ListServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListServicesRequest {
        return .init(
            cluster: self.cluster,
            launchType: self.launchType,
            maxResults: self.maxResults,
            nextToken: token,
            schedulingStrategy: self.schedulingStrategy
        )
    }
}

extension ECS.ListTaskDefinitionFamiliesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListTaskDefinitionFamiliesRequest {
        return .init(
            familyPrefix: self.familyPrefix,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )
    }
}

extension ECS.ListTaskDefinitionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListTaskDefinitionsRequest {
        return .init(
            familyPrefix: self.familyPrefix,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort,
            status: self.status
        )
    }
}

extension ECS.ListTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ECS.ListTasksRequest {
        return .init(
            cluster: self.cluster,
            containerInstance: self.containerInstance,
            desiredStatus: self.desiredStatus,
            family: self.family,
            launchType: self.launchType,
            maxResults: self.maxResults,
            nextToken: token,
            serviceName: self.serviceName,
            startedBy: self.startedBy
        )
    }
}
