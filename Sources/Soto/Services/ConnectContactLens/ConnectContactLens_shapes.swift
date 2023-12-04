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

#if os(Linux)
// swift-corelibs-foundation hasn't been updated with Sendable conformances
@preconcurrency import Foundation
#else
import Foundation
#endif
@_spi(SotoInternal) import SotoCore

extension ConnectContactLens {
    // MARK: Enums

    public enum SentimentValue: String, CustomStringConvertible, Codable, Sendable, CodingKeyRepresentable {
        case negative = "NEGATIVE"
        case neutral = "NEUTRAL"
        case positive = "POSITIVE"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Categories: AWSDecodableShape {
        /// The category rules that have been matched in the analyzed segment.
        public let matchedCategories: [String]?
        /// The category rule that was matched and when it occurred in the transcript.
        public let matchedDetails: [String: CategoryDetails]?

        public init(matchedCategories: [String]? = nil, matchedDetails: [String: CategoryDetails]? = nil) {
            self.matchedCategories = matchedCategories
            self.matchedDetails = matchedDetails
        }

        private enum CodingKeys: String, CodingKey {
            case matchedCategories = "MatchedCategories"
            case matchedDetails = "MatchedDetails"
        }
    }

    public struct CategoryDetails: AWSDecodableShape {
        /// The section of audio where the category rule was detected.
        public let pointsOfInterest: [PointOfInterest]?

        public init(pointsOfInterest: [PointOfInterest]? = nil) {
            self.pointsOfInterest = pointsOfInterest
        }

        private enum CodingKeys: String, CodingKey {
            case pointsOfInterest = "PointsOfInterest"
        }
    }

    public struct CharacterOffsets: AWSDecodableShape {
        /// The beginning of the issue.
        public let beginOffsetChar: Int?
        /// The end of the issue.
        public let endOffsetChar: Int?

        public init(beginOffsetChar: Int? = nil, endOffsetChar: Int? = nil) {
            self.beginOffsetChar = beginOffsetChar
            self.endOffsetChar = endOffsetChar
        }

        private enum CodingKeys: String, CodingKey {
            case beginOffsetChar = "BeginOffsetChar"
            case endOffsetChar = "EndOffsetChar"
        }
    }

    public struct IssueDetected: AWSDecodableShape {
        /// The offset for when the issue was detected in the segment.
        public let characterOffsets: CharacterOffsets?

        public init(characterOffsets: CharacterOffsets? = nil) {
            self.characterOffsets = characterOffsets
        }

        private enum CodingKeys: String, CodingKey {
            case characterOffsets = "CharacterOffsets"
        }
    }

    public struct ListRealtimeContactAnalysisSegmentsRequest: AWSEncodableShape {
        /// The identifier of the contact.
        public let contactId: String?
        /// The identifier of the Amazon Connect instance.
        public let instanceId: String?
        /// The maximimum number of results to return per page.
        public let maxResults: Int?
        /// The token for the next set of results. Use the value returned in the previous
        /// response in the next request to retrieve the next set of results.
        public let nextToken: String?

        public init(contactId: String? = nil, instanceId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.contactId = contactId
            self.instanceId = instanceId
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.contactId, name: "contactId", parent: name, max: 256)
            try self.validate(self.contactId, name: "contactId", parent: name, min: 1)
            try self.validate(self.contactId, name: "contactId", parent: name, pattern: "\\S")
            try self.validate(self.instanceId, name: "instanceId", parent: name, max: 256)
            try self.validate(self.instanceId, name: "instanceId", parent: name, min: 1)
            try self.validate(self.instanceId, name: "instanceId", parent: name, pattern: "\\S")
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 131070)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "\\S")
        }

        private enum CodingKeys: String, CodingKey {
            case contactId = "ContactId"
            case instanceId = "InstanceId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListRealtimeContactAnalysisSegmentsResponse: AWSDecodableShape {
        /// If there are additional results, this is the token for the next set of results. If response includes nextToken there are two possible scenarios:   There are more segments so another call is required to get them.   There are no more segments at this time, but more may be available later (real-time analysis is in progress) so the client should call the operation again to get new segments.   If response does not include nextToken, the analysis is completed (successfully or failed) and there are no more segments to retrieve.
        public let nextToken: String?
        /// An analyzed transcript or category.
        public let segments: [RealtimeContactAnalysisSegment]?

        public init(nextToken: String? = nil, segments: [RealtimeContactAnalysisSegment]? = nil) {
            self.nextToken = nextToken
            self.segments = segments
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case segments = "Segments"
        }
    }

    public struct PointOfInterest: AWSDecodableShape {
        /// The beginning offset in milliseconds where the category rule was detected.
        public let beginOffsetMillis: Int?
        /// The ending offset in milliseconds where the category rule was detected.
        public let endOffsetMillis: Int?

        public init(beginOffsetMillis: Int? = nil, endOffsetMillis: Int? = nil) {
            self.beginOffsetMillis = beginOffsetMillis
            self.endOffsetMillis = endOffsetMillis
        }

        private enum CodingKeys: String, CodingKey {
            case beginOffsetMillis = "BeginOffsetMillis"
            case endOffsetMillis = "EndOffsetMillis"
        }
    }

    public struct RealtimeContactAnalysisSegment: AWSDecodableShape {
        /// The matched category rules.
        public let categories: Categories?
        /// The analyzed transcript.
        public let transcript: Transcript?

        public init(categories: Categories? = nil, transcript: Transcript? = nil) {
            self.categories = categories
            self.transcript = transcript
        }

        private enum CodingKeys: String, CodingKey {
            case categories = "Categories"
            case transcript = "Transcript"
        }
    }

    public struct Transcript: AWSDecodableShape {
        /// The beginning offset in the contact for this transcript.
        public let beginOffsetMillis: Int?
        /// The content of the transcript.
        public let content: String?
        /// The end offset in the contact for this transcript.
        public let endOffsetMillis: Int?
        /// The identifier of the transcript.
        public let id: String?
        /// List of positions where issues were detected on the transcript.
        public let issuesDetected: [IssueDetected]?
        /// The identifier of the participant.
        public let participantId: String?
        /// The role of participant. For example, is it a customer, agent, or system.
        public let participantRole: String?
        /// The sentiment of the detected for this piece of transcript.
        public let sentiment: SentimentValue?

        public init(beginOffsetMillis: Int? = nil, content: String? = nil, endOffsetMillis: Int? = nil, id: String? = nil, issuesDetected: [IssueDetected]? = nil, participantId: String? = nil, participantRole: String? = nil, sentiment: SentimentValue? = nil) {
            self.beginOffsetMillis = beginOffsetMillis
            self.content = content
            self.endOffsetMillis = endOffsetMillis
            self.id = id
            self.issuesDetected = issuesDetected
            self.participantId = participantId
            self.participantRole = participantRole
            self.sentiment = sentiment
        }

        private enum CodingKeys: String, CodingKey {
            case beginOffsetMillis = "BeginOffsetMillis"
            case content = "Content"
            case endOffsetMillis = "EndOffsetMillis"
            case id = "Id"
            case issuesDetected = "IssuesDetected"
            case participantId = "ParticipantId"
            case participantRole = "ParticipantRole"
            case sentiment = "Sentiment"
        }
    }
}

// MARK: - Errors

/// Error enum for ConnectContactLens
public struct ConnectContactLensErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case internalServiceException = "InternalServiceException"
        case invalidRequestException = "InvalidRequestException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ConnectContactLens
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Request processing failed due to an error or failure with the service.
    public static var internalServiceException: Self { .init(.internalServiceException) }
    /// The request is not valid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The specified resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The throttling limit has been exceeded.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension ConnectContactLensErrorType: Equatable {
    public static func == (lhs: ConnectContactLensErrorType, rhs: ConnectContactLensErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ConnectContactLensErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
