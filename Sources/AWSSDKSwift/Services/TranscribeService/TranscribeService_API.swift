// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Operations and objects for transcribing speech to text.
*/
public struct TranscribeService {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Transcribe",
            service: "transcribe",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [TranscribeServiceErrorType.self]
        )
    }

    ///  Starts an asynchronous job to transcribe speech to text. Note that en-AU, en-UK, and fr-CA languages are in preview and are only available to whitelisted customers. 
    public func startTranscriptionJob(_ input: StartTranscriptionJobRequest) throws -> EventLoopFuture<StartTranscriptionJobResponse> {
        return try client.send(operation: "StartTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists transcription jobs with the specified status.
    public func listTranscriptionJobs(_ input: ListTranscriptionJobsRequest) throws -> EventLoopFuture<ListTranscriptionJobsResponse> {
        return try client.send(operation: "ListTranscriptionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a vocabulary. Note that vocabularies for en-AU, en-UK, and fr-CA languages that are in preview are not available. In the console, the vocabulary section will be greyed-out and SDK will return error message.
    public func getVocabulary(_ input: GetVocabularyRequest) throws -> EventLoopFuture<GetVocabularyResponse> {
        return try client.send(operation: "GetVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request. Note that vocabularies for en-AU, en-UK, and fr-CA languages that are in preview are not available. In the console, the vocabulary section will be greyed-out and SDK will return error message.
    public func updateVocabulary(_ input: UpdateVocabularyRequest) throws -> EventLoopFuture<UpdateVocabularyResponse> {
        return try client.send(operation: "UpdateVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptionFileUri field.
    public func getTranscriptionJob(_ input: GetTranscriptionJobRequest) throws -> EventLoopFuture<GetTranscriptionJobResponse> {
        return try client.send(operation: "GetTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabularies(_ input: ListVocabulariesRequest) throws -> EventLoopFuture<ListVocabulariesResponse> {
        return try client.send(operation: "ListVocabularies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file. Note that vocabularies for en-AU, en-UK, and fr-CA languages that are in preview are not available. In the console, the vocabulary section will be greyed-out and SDK will return error message. 
    public func createVocabulary(_ input: CreateVocabularyRequest) throws -> EventLoopFuture<CreateVocabularyResponse> {
        return try client.send(operation: "CreateVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a vocabulary from Amazon Transcribe. 
    public func deleteVocabulary(_ input: DeleteVocabularyRequest) throws {
        _ = try client.send(operation: "DeleteVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.
    public func deleteTranscriptionJob(_ input: DeleteTranscriptionJobRequest) throws {
        _ = try client.send(operation: "DeleteTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }


}