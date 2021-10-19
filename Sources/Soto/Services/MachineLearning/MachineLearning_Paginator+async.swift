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
extension MachineLearning {
    ///  Returns a list of BatchPrediction operations that match the search criteria in the request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeBatchPredictionsPaginator(
        _ input: DescribeBatchPredictionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeBatchPredictionsInput, DescribeBatchPredictionsOutput> {
        return .init(
            input: input,
            command: describeBatchPredictions,
            inputKey: \DescribeBatchPredictionsInput.nextToken,
            outputKey: \DescribeBatchPredictionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of DataSource that match the search criteria in the request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeDataSourcesPaginator(
        _ input: DescribeDataSourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeDataSourcesInput, DescribeDataSourcesOutput> {
        return .init(
            input: input,
            command: describeDataSources,
            inputKey: \DescribeDataSourcesInput.nextToken,
            outputKey: \DescribeDataSourcesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of DescribeEvaluations that match the search criteria in the request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEvaluationsPaginator(
        _ input: DescribeEvaluationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEvaluationsInput, DescribeEvaluationsOutput> {
        return .init(
            input: input,
            command: describeEvaluations,
            inputKey: \DescribeEvaluationsInput.nextToken,
            outputKey: \DescribeEvaluationsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of MLModel that match the search criteria in the request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeMLModelsPaginator(
        _ input: DescribeMLModelsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeMLModelsInput, DescribeMLModelsOutput> {
        return .init(
            input: input,
            command: describeMLModels,
            inputKey: \DescribeMLModelsInput.nextToken,
            outputKey: \DescribeMLModelsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
