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

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ComprehendMedical service.

 Amazon Comprehend Medical extracts structured information from unstructured clinical text. Use these actions to gain insight in your documents. 
*/
public struct ComprehendMedical {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ComprehendMedical client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "ComprehendMedical_20181030",
            service: "comprehendmedical",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-10-30",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ComprehendMedicalErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Gets the properties associated with a medical entities detection job. Use this operation to get the status of a detection job.
    public func describeEntitiesDetectionV2Job(_ input: DescribeEntitiesDetectionV2JobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEntitiesDetectionV2JobResponse> {
        return client.send(operation: "DescribeEntitiesDetectionV2Job", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the properties associated with a protected health information (PHI) detection job. Use this operation to get the status of a detection job.
    public func describePHIDetectionJob(_ input: DescribePHIDetectionJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePHIDetectionJobResponse> {
        return client.send(operation: "DescribePHIDetectionJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  The DetectEntities operation is deprecated. You should use the DetectEntitiesV2 operation instead.  Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information .
    @available(*, deprecated, message:"This operation is deprecated, use DetectEntitiesV2 instead.")
    public func detectEntities(_ input: DetectEntitiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectEntitiesResponse> {
        return client.send(operation: "DetectEntities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information. Amazon Comprehend Medical only detects medical entities in English language texts. The DetectEntitiesV2 operation replaces the DetectEntities operation. This new action uses a different model for determining the entities in your medical text and changes the way that some entities are returned in the output. You should use the DetectEntitiesV2 operation in all new applications. The DetectEntitiesV2 operation returns the Acuity and Direction entities as attributes instead of types. 
    public func detectEntitiesV2(_ input: DetectEntitiesV2Request, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectEntitiesV2Response> {
        return client.send(operation: "DetectEntitiesV2", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Inspects the clinical text for protected health information (PHI) entities and returns the entity category, location, and confidence score for each entity. Amazon Comprehend Medical only detects entities in English language texts.
    public func detectPHI(_ input: DetectPHIRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectPHIResponse> {
        return client.send(operation: "DetectPHI", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  InferICD10CM detects medical conditions as entities listed in a patient record and links those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the Centers for Disease Control. Amazon Comprehend Medical only detects medical entities in English language texts.
    public func inferICD10CM(_ input: InferICD10CMRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InferICD10CMResponse> {
        return client.send(operation: "InferICD10CM", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  InferRxNorm detects medications as entities listed in a patient record and links to the normalized concept identifiers in the RxNorm database from the National Library of Medicine. Amazon Comprehend Medical only detects medical entities in English language texts.
    public func inferRxNorm(_ input: InferRxNormRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InferRxNormResponse> {
        return client.send(operation: "InferRxNorm", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a list of medical entity detection jobs that you have submitted.
    public func listEntitiesDetectionV2Jobs(_ input: ListEntitiesDetectionV2JobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEntitiesDetectionV2JobsResponse> {
        return client.send(operation: "ListEntitiesDetectionV2Jobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a list of protected health information (PHI) detection jobs that you have submitted.
    public func listPHIDetectionJobs(_ input: ListPHIDetectionJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPHIDetectionJobsResponse> {
        return client.send(operation: "ListPHIDetectionJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts an asynchronous medical entity detection job for a collection of documents. Use the DescribeEntitiesDetectionV2Job operation to track the status of a job.
    public func startEntitiesDetectionV2Job(_ input: StartEntitiesDetectionV2JobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartEntitiesDetectionV2JobResponse> {
        return client.send(operation: "StartEntitiesDetectionV2Job", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts an asynchronous job to detect protected health information (PHI). Use the DescribePHIDetectionJob operation to track the status of a job.
    public func startPHIDetectionJob(_ input: StartPHIDetectionJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPHIDetectionJobResponse> {
        return client.send(operation: "StartPHIDetectionJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops a medical entities detection job in progress.
    public func stopEntitiesDetectionV2Job(_ input: StopEntitiesDetectionV2JobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopEntitiesDetectionV2JobResponse> {
        return client.send(operation: "StopEntitiesDetectionV2Job", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops a protected health information (PHI) detection job in progress.
    public func stopPHIDetectionJob(_ input: StopPHIDetectionJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopPHIDetectionJobResponse> {
        return client.send(operation: "StopPHIDetectionJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
