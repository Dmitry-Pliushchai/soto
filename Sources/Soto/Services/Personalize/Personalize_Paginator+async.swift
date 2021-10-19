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
extension Personalize {
    ///  Gets a list of the batch inference jobs that have been performed off of a solution version.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBatchInferenceJobsPaginator(
        _ input: ListBatchInferenceJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBatchInferenceJobsRequest, ListBatchInferenceJobsResponse> {
        return .init(
            input: input,
            command: listBatchInferenceJobs,
            inputKey: \ListBatchInferenceJobsRequest.nextToken,
            outputKey: \ListBatchInferenceJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of campaigns that use the given solution. When a solution is not specified, all the campaigns associated with the account are listed. The response provides the properties for each campaign, including the Amazon Resource Name (ARN). For more information on campaigns, see CreateCampaign.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCampaignsPaginator(
        _ input: ListCampaignsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCampaignsRequest, ListCampaignsResponse> {
        return .init(
            input: input,
            command: listCampaigns,
            inputKey: \ListCampaignsRequest.nextToken,
            outputKey: \ListCampaignsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of dataset export jobs that use the given dataset. When a dataset is not specified, all the dataset export jobs associated with the account are listed. The response provides the properties for each dataset export job, including the Amazon Resource Name (ARN). For more information on dataset export jobs, see CreateDatasetExportJob. For more information on datasets, see CreateDataset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetExportJobsPaginator(
        _ input: ListDatasetExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetExportJobsRequest, ListDatasetExportJobsResponse> {
        return .init(
            input: input,
            command: listDatasetExportJobs,
            inputKey: \ListDatasetExportJobsRequest.nextToken,
            outputKey: \ListDatasetExportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of dataset groups. The response provides the properties for each dataset group, including the Amazon Resource Name (ARN). For more information on dataset groups, see CreateDatasetGroup.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetGroupsPaginator(
        _ input: ListDatasetGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetGroupsRequest, ListDatasetGroupsResponse> {
        return .init(
            input: input,
            command: listDatasetGroups,
            inputKey: \ListDatasetGroupsRequest.nextToken,
            outputKey: \ListDatasetGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of dataset import jobs that use the given dataset. When a dataset is not specified, all the dataset import jobs associated with the account are listed. The response provides the properties for each dataset import job, including the Amazon Resource Name (ARN). For more information on dataset import jobs, see CreateDatasetImportJob. For more information on datasets, see CreateDataset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetImportJobsPaginator(
        _ input: ListDatasetImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetImportJobsRequest, ListDatasetImportJobsResponse> {
        return .init(
            input: input,
            command: listDatasetImportJobs,
            inputKey: \ListDatasetImportJobsRequest.nextToken,
            outputKey: \ListDatasetImportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the list of datasets contained in the given dataset group. The response provides the properties for each dataset, including the Amazon Resource Name (ARN). For more information on datasets, see CreateDataset.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetsRequest, ListDatasetsResponse> {
        return .init(
            input: input,
            command: listDatasets,
            inputKey: \ListDatasetsRequest.nextToken,
            outputKey: \ListDatasetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the list of event trackers associated with the account. The response provides the properties for each event tracker, including the Amazon Resource Name (ARN) and tracking ID. For more information on event trackers, see CreateEventTracker.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventTrackersPaginator(
        _ input: ListEventTrackersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventTrackersRequest, ListEventTrackersResponse> {
        return .init(
            input: input,
            command: listEventTrackers,
            inputKey: \ListEventTrackersRequest.nextToken,
            outputKey: \ListEventTrackersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all filters that belong to a given dataset group.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFiltersPaginator(
        _ input: ListFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFiltersRequest, ListFiltersResponse> {
        return .init(
            input: input,
            command: listFilters,
            inputKey: \ListFiltersRequest.nextToken,
            outputKey: \ListFiltersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of available recipes. The response provides the properties for each recipe, including the recipe's Amazon Resource Name (ARN).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecipesPaginator(
        _ input: ListRecipesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecipesRequest, ListRecipesResponse> {
        return .init(
            input: input,
            command: listRecipes,
            inputKey: \ListRecipesRequest.nextToken,
            outputKey: \ListRecipesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the list of schemas associated with the account. The response provides the properties for each schema, including the Amazon Resource Name (ARN). For more information on schemas, see CreateSchema.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSchemasPaginator(
        _ input: ListSchemasRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSchemasRequest, ListSchemasResponse> {
        return .init(
            input: input,
            command: listSchemas,
            inputKey: \ListSchemasRequest.nextToken,
            outputKey: \ListSchemasResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of solution versions for the given solution. When a solution is not specified, all the solution versions associated with the account are listed. The response provides the properties for each solution version, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSolutionVersionsPaginator(
        _ input: ListSolutionVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSolutionVersionsRequest, ListSolutionVersionsResponse> {
        return .init(
            input: input,
            command: listSolutionVersions,
            inputKey: \ListSolutionVersionsRequest.nextToken,
            outputKey: \ListSolutionVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of solutions that use the given dataset group. When a dataset group is not specified, all the solutions associated with the account are listed. The response provides the properties for each solution, including the Amazon Resource Name (ARN). For more information on solutions, see CreateSolution.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSolutionsPaginator(
        _ input: ListSolutionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSolutionsRequest, ListSolutionsResponse> {
        return .init(
            input: input,
            command: listSolutions,
            inputKey: \ListSolutionsRequest.nextToken,
            outputKey: \ListSolutionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
