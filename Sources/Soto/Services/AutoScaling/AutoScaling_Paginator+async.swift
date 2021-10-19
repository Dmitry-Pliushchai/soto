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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension AutoScaling {
    ///  Gets information about the Auto Scaling groups in the account and Region. This operation returns information about instances in Auto Scaling groups. To retrieve information about the instances in a warm pool, you must call the DescribeWarmPool API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeAutoScalingGroupsPaginator(
        _ input: AutoScalingGroupNamesType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<AutoScalingGroupNamesType, AutoScalingGroupsType> {
        return .init(
            input: input,
            command: describeAutoScalingGroups,
            inputKey: \AutoScalingGroupNamesType.nextToken,
            outputKey: \AutoScalingGroupsType.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the Auto Scaling instances in the account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeAutoScalingInstancesPaginator(
        _ input: DescribeAutoScalingInstancesType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeAutoScalingInstancesType, AutoScalingInstancesType> {
        return .init(
            input: input,
            command: describeAutoScalingInstances,
            inputKey: \DescribeAutoScalingInstancesType.nextToken,
            outputKey: \AutoScalingInstancesType.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the launch configurations in the account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeLaunchConfigurationsPaginator(
        _ input: LaunchConfigurationNamesType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<LaunchConfigurationNamesType, LaunchConfigurationsType> {
        return .init(
            input: input,
            command: describeLaunchConfigurations,
            inputKey: \LaunchConfigurationNamesType.nextToken,
            outputKey: \LaunchConfigurationsType.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the Amazon SNS notifications that are configured for one or more Auto Scaling groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeNotificationConfigurationsPaginator(
        _ input: DescribeNotificationConfigurationsType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeNotificationConfigurationsType, DescribeNotificationConfigurationsAnswer> {
        return .init(
            input: input,
            command: describeNotificationConfigurations,
            inputKey: \DescribeNotificationConfigurationsType.nextToken,
            outputKey: \DescribeNotificationConfigurationsAnswer.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the scaling policies in the account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describePoliciesPaginator(
        _ input: DescribePoliciesType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribePoliciesType, PoliciesType> {
        return .init(
            input: input,
            command: describePolicies,
            inputKey: \DescribePoliciesType.nextToken,
            outputKey: \PoliciesType.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the scaling activities in the account and Region. When scaling events occur, you see a record of the scaling activity in the scaling activities. For more information, see Verifying a scaling activity for an Auto Scaling group in the Amazon EC2 Auto Scaling User Guide. If the scaling event succeeds, the value of the StatusCode element in the response is Successful. If an attempt to launch instances failed, the StatusCode value is Failed or Cancelled and the StatusMessage element in the response indicates the cause of the failure. For help interpreting the StatusMessage, see Troubleshooting Amazon EC2 Auto Scaling in the Amazon EC2 Auto Scaling User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeScalingActivitiesPaginator(
        _ input: DescribeScalingActivitiesType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScalingActivitiesType, ActivitiesType> {
        return .init(
            input: input,
            command: describeScalingActivities,
            inputKey: \DescribeScalingActivitiesType.nextToken,
            outputKey: \ActivitiesType.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about the scheduled actions that haven't run or that have not reached their end time. To describe the scaling activities for scheduled actions that have already run, call the DescribeScalingActivities API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeScheduledActionsPaginator(
        _ input: DescribeScheduledActionsType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScheduledActionsType, ScheduledActionsType> {
        return .init(
            input: input,
            command: describeScheduledActions,
            inputKey: \DescribeScheduledActionsType.nextToken,
            outputKey: \ScheduledActionsType.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified tags. You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results. You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned. For more information, see Tagging Auto Scaling groups and instances in the Amazon EC2 Auto Scaling User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeTagsPaginator(
        _ input: DescribeTagsType,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeTagsType, TagsType> {
        return .init(
            input: input,
            command: describeTags,
            inputKey: \DescribeTagsType.nextToken,
            outputKey: \TagsType.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
