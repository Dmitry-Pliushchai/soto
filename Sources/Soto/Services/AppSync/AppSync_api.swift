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

/// Service object for interacting with AWS AppSync service.
///
/// AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
public struct AppSync: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppSync client
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
            service: "appsync",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            errorType: AppSyncErrorType.self,
            xmlNamespace: "http://appsync.amazonaws.com",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Maps an endpoint to your custom domain.
    public func associateApi(_ input: AssociateApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateApiResponse> {
        return self.client.execute(operation: "AssociateApi", path: "/v1/domainnames/{domainName}/apiassociation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an association between a Merged API and source API using the source API's identifier.
    public func associateMergedGraphqlApi(_ input: AssociateMergedGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateMergedGraphqlApiResponse> {
        return self.client.execute(operation: "AssociateMergedGraphqlApi", path: "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an association between a Merged API and source API using the Merged API's identifier.
    public func associateSourceGraphqlApi(_ input: AssociateSourceGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateSourceGraphqlApiResponse> {
        return self.client.execute(operation: "AssociateSourceGraphqlApi", path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a cache for the GraphQL API.
    public func createApiCache(_ input: CreateApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiCacheResponse> {
        return self.client.execute(operation: "CreateApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a unique key that you can distribute to clients who invoke your API.
    public func createApiKey(_ input: CreateApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiKeyResponse> {
        return self.client.execute(operation: "CreateApiKey", path: "/v1/apis/{apiId}/apikeys", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a DataSource object.
    public func createDataSource(_ input: CreateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataSourceResponse> {
        return self.client.execute(operation: "CreateDataSource", path: "/v1/apis/{apiId}/datasources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom DomainName object.
    public func createDomainName(_ input: CreateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainNameResponse> {
        return self.client.execute(operation: "CreateDomainName", path: "/v1/domainnames", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Function object. A function is a reusable entity. You can use multiple functions to compose the resolver logic.
    public func createFunction(_ input: CreateFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFunctionResponse> {
        return self.client.execute(operation: "CreateFunction", path: "/v1/apis/{apiId}/functions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a GraphqlApi object.
    public func createGraphqlApi(_ input: CreateGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGraphqlApiResponse> {
        return self.client.execute(operation: "CreateGraphqlApi", path: "/v1/apis", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand, and converts the data source's responses into GraphQL.
    public func createResolver(_ input: CreateResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResolverResponse> {
        return self.client.execute(operation: "CreateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Type object.
    public func createType(_ input: CreateTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTypeResponse> {
        return self.client.execute(operation: "CreateType", path: "/v1/apis/{apiId}/types", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an ApiCache object.
    public func deleteApiCache(_ input: DeleteApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiCacheResponse> {
        return self.client.execute(operation: "DeleteApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an API key.
    public func deleteApiKey(_ input: DeleteApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiKeyResponse> {
        return self.client.execute(operation: "DeleteApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a DataSource object.
    public func deleteDataSource(_ input: DeleteDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataSourceResponse> {
        return self.client.execute(operation: "DeleteDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom DomainName object.
    public func deleteDomainName(_ input: DeleteDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainNameResponse> {
        return self.client.execute(operation: "DeleteDomainName", path: "/v1/domainnames/{domainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Function.
    public func deleteFunction(_ input: DeleteFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFunctionResponse> {
        return self.client.execute(operation: "DeleteFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a GraphqlApi object.
    public func deleteGraphqlApi(_ input: DeleteGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGraphqlApiResponse> {
        return self.client.execute(operation: "DeleteGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Resolver object.
    public func deleteResolver(_ input: DeleteResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResolverResponse> {
        return self.client.execute(operation: "DeleteResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Type object.
    public func deleteType(_ input: DeleteTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTypeResponse> {
        return self.client.execute(operation: "DeleteType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an ApiAssociation object from a custom domain.
    public func disassociateApi(_ input: DisassociateApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateApiResponse> {
        return self.client.execute(operation: "DisassociateApi", path: "/v1/domainnames/{domainName}/apiassociation", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an association between a Merged API and source API using the source API's identifier and the association ID.
    public func disassociateMergedGraphqlApi(_ input: DisassociateMergedGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateMergedGraphqlApiResponse> {
        return self.client.execute(operation: "DisassociateMergedGraphqlApi", path: "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an association between a Merged API and source API using the Merged API's identifier and the association ID.
    public func disassociateSourceGraphqlApi(_ input: DisassociateSourceGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateSourceGraphqlApiResponse> {
        return self.client.execute(operation: "DisassociateSourceGraphqlApi", path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Evaluates the given code and returns the response. The code definition requirements depend on the specified runtime. For APPSYNC_JS runtimes, the code defines the request and response functions. The request function takes the incoming request after a GraphQL operation is parsed and converts it into a request configuration for the selected data source operation. The response function interprets responses from the data source and maps it to the shape of the GraphQL field output type.
    public func evaluateCode(_ input: EvaluateCodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EvaluateCodeResponse> {
        return self.client.execute(operation: "EvaluateCode", path: "/v1/dataplane-evaluatecode", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Evaluates a given template and returns the response. The mapping template can be a request or response template. Request templates take the incoming request after a GraphQL operation is parsed and convert it into a request configuration for the selected data source operation. Response templates interpret responses from the data source and map it to the shape of the GraphQL field output type. Mapping templates are written in the Apache Velocity Template Language (VTL).
    public func evaluateMappingTemplate(_ input: EvaluateMappingTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EvaluateMappingTemplateResponse> {
        return self.client.execute(operation: "EvaluateMappingTemplate", path: "/v1/dataplane-evaluatetemplate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Flushes an ApiCache object.
    public func flushApiCache(_ input: FlushApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlushApiCacheResponse> {
        return self.client.execute(operation: "FlushApiCache", path: "/v1/apis/{apiId}/FlushCache", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an ApiAssociation object.
    public func getApiAssociation(_ input: GetApiAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApiAssociationResponse> {
        return self.client.execute(operation: "GetApiAssociation", path: "/v1/domainnames/{domainName}/apiassociation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves an ApiCache object.
    public func getApiCache(_ input: GetApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApiCacheResponse> {
        return self.client.execute(operation: "GetApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a DataSource object.
    public func getDataSource(_ input: GetDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataSourceResponse> {
        return self.client.execute(operation: "GetDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the record of an existing introspection. If the retrieval is successful, the result of the instrospection will also be returned. If the retrieval fails the operation, an error message will be returned instead.
    public func getDataSourceIntrospection(_ input: GetDataSourceIntrospectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataSourceIntrospectionResponse> {
        return self.client.execute(operation: "GetDataSourceIntrospection", path: "/v1/datasources/introspections/{introspectionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a custom DomainName object.
    public func getDomainName(_ input: GetDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDomainNameResponse> {
        return self.client.execute(operation: "GetDomainName", path: "/v1/domainnames/{domainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a Function.
    public func getFunction(_ input: GetFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFunctionResponse> {
        return self.client.execute(operation: "GetFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a GraphqlApi object.
    public func getGraphqlApi(_ input: GetGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGraphqlApiResponse> {
        return self.client.execute(operation: "GetGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the introspection schema for a GraphQL API.
    public func getIntrospectionSchema(_ input: GetIntrospectionSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntrospectionSchemaResponse> {
        return self.client.execute(operation: "GetIntrospectionSchema", path: "/v1/apis/{apiId}/schema", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a Resolver object.
    public func getResolver(_ input: GetResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverResponse> {
        return self.client.execute(operation: "GetResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the current status of a schema creation operation.
    public func getSchemaCreationStatus(_ input: GetSchemaCreationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSchemaCreationStatusResponse> {
        return self.client.execute(operation: "GetSchemaCreationStatus", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a SourceApiAssociation object.
    public func getSourceApiAssociation(_ input: GetSourceApiAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSourceApiAssociationResponse> {
        return self.client.execute(operation: "GetSourceApiAssociation", path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a Type object.
    public func getType(_ input: GetTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTypeResponse> {
        return self.client.execute(operation: "GetType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the API keys for a given API.  API keys are deleted automatically 60 days after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted.
    public func listApiKeys(_ input: ListApiKeysRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApiKeysResponse> {
        return self.client.execute(operation: "ListApiKeys", path: "/v1/apis/{apiId}/apikeys", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the data sources for a given API.
    public func listDataSources(_ input: ListDataSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSourcesResponse> {
        return self.client.execute(operation: "ListDataSources", path: "/v1/apis/{apiId}/datasources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists multiple custom domain names.
    public func listDomainNames(_ input: ListDomainNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDomainNamesResponse> {
        return self.client.execute(operation: "ListDomainNames", path: "/v1/domainnames", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List multiple functions.
    public func listFunctions(_ input: ListFunctionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFunctionsResponse> {
        return self.client.execute(operation: "ListFunctions", path: "/v1/apis/{apiId}/functions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists your GraphQL APIs.
    public func listGraphqlApis(_ input: ListGraphqlApisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGraphqlApisResponse> {
        return self.client.execute(operation: "ListGraphqlApis", path: "/v1/apis", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resolvers for a given API and type.
    public func listResolvers(_ input: ListResolversRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolversResponse> {
        return self.client.execute(operation: "ListResolvers", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the resolvers that are associated with a specific function.
    public func listResolversByFunction(_ input: ListResolversByFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolversByFunctionResponse> {
        return self.client.execute(operation: "ListResolversByFunction", path: "/v1/apis/{apiId}/functions/{functionId}/resolvers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the SourceApiAssociationSummary data.
    public func listSourceApiAssociations(_ input: ListSourceApiAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSourceApiAssociationsResponse> {
        return self.client.execute(operation: "ListSourceApiAssociations", path: "/v1/apis/{apiId}/sourceApiAssociations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the types for a given API.
    public func listTypes(_ input: ListTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTypesResponse> {
        return self.client.execute(operation: "ListTypes", path: "/v1/apis/{apiId}/types", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists Type objects by the source API association ID.
    public func listTypesByAssociation(_ input: ListTypesByAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTypesByAssociationResponse> {
        return self.client.execute(operation: "ListTypesByAssociation", path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new introspection. Returns the introspectionId of the new introspection after its creation.
    public func startDataSourceIntrospection(_ input: StartDataSourceIntrospectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDataSourceIntrospectionResponse> {
        return self.client.execute(operation: "StartDataSourceIntrospection", path: "/v1/datasources/introspections", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a new schema to your GraphQL API. This operation is asynchronous. Use  to determine when it has completed.
    public func startSchemaCreation(_ input: StartSchemaCreationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSchemaCreationResponse> {
        return self.client.execute(operation: "StartSchemaCreation", path: "/v1/apis/{apiId}/schemacreation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiates a merge operation. Returns a status that shows the result of the merge operation.
    public func startSchemaMerge(_ input: StartSchemaMergeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSchemaMergeResponse> {
        return self.client.execute(operation: "StartSchemaMerge", path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags a resource with user-supplied tags.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Untags a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the cache for the GraphQL API.
    public func updateApiCache(_ input: UpdateApiCacheRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiCacheResponse> {
        return self.client.execute(operation: "UpdateApiCache", path: "/v1/apis/{apiId}/ApiCaches/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an API key. You can update the key as long as it's not deleted.
    public func updateApiKey(_ input: UpdateApiKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiKeyResponse> {
        return self.client.execute(operation: "UpdateApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a DataSource object.
    public func updateDataSource(_ input: UpdateDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataSourceResponse> {
        return self.client.execute(operation: "UpdateDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a custom DomainName object.
    public func updateDomainName(_ input: UpdateDomainNameRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainNameResponse> {
        return self.client.execute(operation: "UpdateDomainName", path: "/v1/domainnames/{domainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Function object.
    public func updateFunction(_ input: UpdateFunctionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFunctionResponse> {
        return self.client.execute(operation: "UpdateFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a GraphqlApi object.
    public func updateGraphqlApi(_ input: UpdateGraphqlApiRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGraphqlApiResponse> {
        return self.client.execute(operation: "UpdateGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Resolver object.
    public func updateResolver(_ input: UpdateResolverRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResolverResponse> {
        return self.client.execute(operation: "UpdateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates some of the configuration choices of a particular source API association.
    public func updateSourceApiAssociation(_ input: UpdateSourceApiAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSourceApiAssociationResponse> {
        return self.client.execute(operation: "UpdateSourceApiAssociation", path: "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a Type object.
    public func updateType(_ input: UpdateTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTypeResponse> {
        return self.client.execute(operation: "UpdateType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension AppSync {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AppSync, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
