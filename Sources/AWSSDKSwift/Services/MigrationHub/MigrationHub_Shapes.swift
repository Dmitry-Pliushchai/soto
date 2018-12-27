// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MigrationHub {

    public struct ListProgressUpdateStreamsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamSummaryList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// List of progress update streams up to the max number of results passed in the input.
        public let progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]?
        /// If there are more streams created than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]? = nil, nextToken: String? = nil) {
            self.progressUpdateStreamSummaryList = progressUpdateStreamSummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamSummaryList = "ProgressUpdateStreamSummaryList"
            case nextToken = "NextToken"
        }
    }

    public struct PutResourceAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceAttributeList", required: true, type: .list), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service (ADS)'s repository.  Takes the object array of ResourceAttribute where the Type field is reserved for the following values: IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER where the identifying value can be a string up to 256 characters.     If any "VM" related value is set for a ResourceAttribute object, it is required that VM_MANAGER_ID, as a minimum, is always set. If VM_MANAGER_ID is not set, then all "VM" fields will be discarded and "VM" fields will not be used for matching the migration task to a server in Application Discovery Service (ADS)'s repository. See the Example section below for a use case of specifying "VM" related values.    If a server you are trying to match has multiple IP or MAC addresses, you should provide as many as you know in separate type/value pairs passed to the ResourceAttributeList parameter to maximize the chances of matching.   
        public let resourceAttributeList: [ResourceAttribute]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(resourceAttributeList: [ResourceAttribute], progressUpdateStream: String, migrationTaskName: String, dryRun: Bool? = nil) {
            self.resourceAttributeList = resourceAttributeList
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case resourceAttributeList = "ResourceAttributeList"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
        }
    }

    public struct ListCreatedArtifactsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string)
        ]
        /// Maximum number of results to be returned per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String

        public init(maxResults: Int32? = nil, nextToken: String? = nil, progressUpdateStream: String, migrationTaskName: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
        }
    }

    public enum Status: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case failed = "FAILED"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public struct NotifyMigrationTaskStateResult: AWSShape {

    }

    public struct ListProgressUpdateStreamsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
        ]
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// Filter to limit the maximum number of results to list per page.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
        }
    }

    public struct ImportMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(progressUpdateStream: String, migrationTaskName: String, dryRun: Bool? = nil) {
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
        }
    }

    public struct NotifyMigrationTaskStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "UpdateDateTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "Task", required: true, type: .structure), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "NextUpdateSeconds", required: true, type: .integer)
        ]
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp
        /// Information about the task's progress and status.
        public let task: Task
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Number of seconds after the UpdateDateTime within which the Migration Hub can expect an update. If Migration Hub does not receive an update within the specified interval, then the migration task will be considered stale.
        public let nextUpdateSeconds: Int32

        public init(updateDateTime: TimeStamp, task: Task, progressUpdateStream: String, migrationTaskName: String, dryRun: Bool? = nil, nextUpdateSeconds: Int32) {
            self.updateDateTime = updateDateTime
            self.task = task
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
            self.nextUpdateSeconds = nextUpdateSeconds
        }

        private enum CodingKeys: String, CodingKey {
            case updateDateTime = "UpdateDateTime"
            case task = "Task"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
            case nextUpdateSeconds = "NextUpdateSeconds"
        }
    }

    public struct DescribeApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String

        public init(applicationId: String) {
            self.applicationId = applicationId
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    public struct ImportMigrationTaskResult: AWSShape {

    }

    public struct NotifyApplicationStateResult: AWSShape {

    }

    public struct DisassociateCreatedArtifactResult: AWSShape {

    }

    public enum ApplicationStatus: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public struct ListDiscoveredResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string)
        ]
        /// The maximum number of results returned per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String
        /// The name of the MigrationTask.
        public let migrationTaskName: String

        public init(maxResults: Int32? = nil, nextToken: String? = nil, progressUpdateStream: String, migrationTaskName: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
        }
    }

    public struct CreateProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String

        public init(dryRun: Bool? = nil, progressUpdateStreamName: String) {
            self.dryRun = dryRun
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct DescribeMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String

        public init(progressUpdateStream: String, migrationTaskName: String) {
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
        }
    }

    public struct AssociateCreatedArtifactResult: AWSShape {

    }

    public struct DisassociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// ConfigurationId of the ADS resource to be disassociated.
        public let configurationId: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(progressUpdateStream: String, migrationTaskName: String, configurationId: String, dryRun: Bool? = nil) {
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
            self.configurationId = configurationId
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
            case configurationId = "ConfigurationId"
            case dryRun = "DryRun"
        }
    }

    public struct ListMigrationTasksRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ResourceName", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
        ]
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// Filter migration tasks by discovered resource name.
        public let resourceName: String?
        /// Value to specify how many results are returned per page.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, resourceName: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.resourceName = resourceName
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case resourceName = "ResourceName"
            case maxResults = "MaxResults"
        }
    }

    public struct DisassociateDiscoveredResourceResult: AWSShape {

    }

    public struct ListDiscoveredResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResourceList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Returned list of discovered resources associated with the given MigrationTask.
        public let discoveredResourceList: [DiscoveredResource]?
        /// If there are more discovered resources than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(discoveredResourceList: [DiscoveredResource]? = nil, nextToken: String? = nil) {
            self.discoveredResourceList = discoveredResourceList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResourceList = "DiscoveredResourceList"
            case nextToken = "NextToken"
        }
    }

    public struct ListMigrationTasksResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskSummaryList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Lists the migration task's summary which includes: MigrationTaskName, ProgressPercent, ProgressUpdateStream, Status, and the UpdateDateTime for each task.
        public let migrationTaskSummaryList: [MigrationTaskSummary]?
        /// If there are more migration tasks than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(migrationTaskSummaryList: [MigrationTaskSummary]? = nil, nextToken: String? = nil) {
            self.migrationTaskSummaryList = migrationTaskSummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskSummaryList = "MigrationTaskSummaryList"
            case nextToken = "NextToken"
        }
    }

    public struct MigrationTask: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Task", required: false, type: .structure), 
            AWSShapeMember(label: "ResourceAttributeList", required: false, type: .list), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string)
        ]
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?
        /// Task object encapsulating task information.
        public let task: Task?
        public let resourceAttributeList: [ResourceAttribute]?
        /// A name that identifies the vendor of the migration tool being used.
        public let progressUpdateStream: String?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?

        public init(updateDateTime: TimeStamp? = nil, task: Task? = nil, resourceAttributeList: [ResourceAttribute]? = nil, progressUpdateStream: String? = nil, migrationTaskName: String? = nil) {
            self.updateDateTime = updateDateTime
            self.task = task
            self.resourceAttributeList = resourceAttributeList
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
        }

        private enum CodingKeys: String, CodingKey {
            case updateDateTime = "UpdateDateTime"
            case task = "Task"
            case resourceAttributeList = "ResourceAttributeList"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
        }
    }

    public struct MigrationTaskSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "StatusDetail", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum), 
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string)
        ]
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?
        /// Detail information of what is being done within the overall status state.
        public let statusDetail: String?
        /// Status of the task.
        public let status: Status?
        public let progressPercent: Int32?
        /// An AWS resource used for access control. It should uniquely identify the migration tool as it is used for all updates made by the tool.
        public let progressUpdateStream: String?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?

        public init(updateDateTime: TimeStamp? = nil, statusDetail: String? = nil, status: Status? = nil, progressPercent: Int32? = nil, progressUpdateStream: String? = nil, migrationTaskName: String? = nil) {
            self.updateDateTime = updateDateTime
            self.statusDetail = statusDetail
            self.status = status
            self.progressPercent = progressPercent
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
        }

        private enum CodingKeys: String, CodingKey {
            case updateDateTime = "UpdateDateTime"
            case statusDetail = "StatusDetail"
            case status = "Status"
            case progressPercent = "ProgressPercent"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
        }
    }

    public struct DisassociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "CreatedArtifactName", required: true, type: .string)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Unique identifier that references the migration task to be disassociated with the artifact.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.)
        public let createdArtifactName: String

        public init(progressUpdateStream: String, migrationTaskName: String, dryRun: Bool? = nil, createdArtifactName: String) {
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
            self.createdArtifactName = createdArtifactName
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
            case createdArtifactName = "CreatedArtifactName"
        }
    }

    public struct AssociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResource", required: true, type: .structure), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// Object representing a Resource.
        public let discoveredResource: DiscoveredResource
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(discoveredResource: DiscoveredResource, progressUpdateStream: String, migrationTaskName: String, dryRun: Bool? = nil) {
            self.discoveredResource = discoveredResource
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResource = "DiscoveredResource"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
        }
    }

    public struct CreateProgressUpdateStreamResult: AWSShape {

    }

    public struct ResourceAttribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", required: true, type: .enum), 
            AWSShapeMember(label: "Value", required: true, type: .string)
        ]
        /// Type of resource.
        public let `type`: ResourceAttributeType
        /// Value of the resource type.
        public let value: String

        public init(type: ResourceAttributeType, value: String) {
            self.`type` = `type`
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
            case value = "Value"
        }
    }

    public struct DiscoveredResource: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string)
        ]
        /// A description that can be free-form text to record additional detail about the discovered resource for clarity or later reference.
        public let description: String?
        /// The configurationId in ADS that uniquely identifies the on-premise resource.
        public let configurationId: String

        public init(description: String? = nil, configurationId: String) {
            self.description = description
            self.configurationId = configurationId
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case configurationId = "ConfigurationId"
        }
    }

    public struct ProgressUpdateStreamSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamName", required: false, type: .string)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String?

        public init(progressUpdateStreamName: String? = nil) {
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct ListCreatedArtifactsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreatedArtifactList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// List of created artifacts up to the maximum number of results specified in the request.
        public let createdArtifactList: [CreatedArtifact]?
        /// If there are more created artifacts than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(createdArtifactList: [CreatedArtifact]? = nil, nextToken: String? = nil) {
            self.createdArtifactList = createdArtifactList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case createdArtifactList = "CreatedArtifactList"
            case nextToken = "NextToken"
        }
    }

    public enum ResourceAttributeType: String, CustomStringConvertible, Codable {
        case ipv4Address = "IPV4_ADDRESS"
        case ipv6Address = "IPV6_ADDRESS"
        case macAddress = "MAC_ADDRESS"
        case fqdn = "FQDN"
        case vmManagerId = "VM_MANAGER_ID"
        case vmManagedObjectReference = "VM_MANAGED_OBJECT_REFERENCE"
        case vmName = "VM_NAME"
        case vmPath = "VM_PATH"
        case biosId = "BIOS_ID"
        case motherboardSerialNumber = "MOTHERBOARD_SERIAL_NUMBER"
        public var description: String { return self.rawValue }
    }

    public struct DescribeMigrationTaskResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTask", required: false, type: .structure)
        ]
        /// Object encapsulating information about the migration task.
        public let migrationTask: MigrationTask?

        public init(migrationTask: MigrationTask? = nil) {
            self.migrationTask = migrationTask
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTask = "MigrationTask"
        }
    }

    public struct DeleteProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string)
        ]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String

        public init(dryRun: Bool? = nil, progressUpdateStreamName: String) {
            self.dryRun = dryRun
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case dryRun = "DryRun"
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct Task: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer), 
            AWSShapeMember(label: "Status", required: true, type: .enum), 
            AWSShapeMember(label: "StatusDetail", required: false, type: .string)
        ]
        /// Indication of the percentage completion of the task.
        public let progressPercent: Int32?
        /// Status of the task - Not Started, In-Progress, Complete.
        public let status: Status
        /// Details of task status as notified by a migration tool. A tool might use this field to provide clarifying information about the status that is unique to that tool or that explains an error state.
        public let statusDetail: String?

        public init(progressPercent: Int32? = nil, status: Status, statusDetail: String? = nil) {
            self.progressPercent = progressPercent
            self.status = status
            self.statusDetail = statusDetail
        }

        private enum CodingKeys: String, CodingKey {
            case progressPercent = "ProgressPercent"
            case status = "Status"
            case statusDetail = "StatusDetail"
        }
    }

    public struct AssociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreatedArtifact", required: true, type: .structure), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.) 
        public let createdArtifact: CreatedArtifact
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(createdArtifact: CreatedArtifact, progressUpdateStream: String, migrationTaskName: String, dryRun: Bool? = nil) {
            self.createdArtifact = createdArtifact
            self.progressUpdateStream = progressUpdateStream
            self.migrationTaskName = migrationTaskName
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case createdArtifact = "CreatedArtifact"
            case progressUpdateStream = "ProgressUpdateStream"
            case migrationTaskName = "MigrationTaskName"
            case dryRun = "DryRun"
        }
    }

    public struct DeleteProgressUpdateStreamResult: AWSShape {

    }

    public struct NotifyApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string), 
            AWSShapeMember(label: "Status", required: true, type: .enum), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String
        /// Status of the application - Not Started, In-Progress, Complete.
        public let status: ApplicationStatus
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(applicationId: String, status: ApplicationStatus, dryRun: Bool? = nil) {
            self.applicationId = applicationId
            self.status = status
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case status = "Status"
            case dryRun = "DryRun"
        }
    }

    public struct DescribeApplicationStateResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationStatus", required: false, type: .enum), 
            AWSShapeMember(label: "LastUpdatedTime", required: false, type: .timestamp)
        ]
        /// Status of the application - Not Started, In-Progress, Complete.
        public let applicationStatus: ApplicationStatus?
        /// The timestamp when the application status was last updated.
        public let lastUpdatedTime: TimeStamp?

        public init(applicationStatus: ApplicationStatus? = nil, lastUpdatedTime: TimeStamp? = nil) {
            self.applicationStatus = applicationStatus
            self.lastUpdatedTime = lastUpdatedTime
        }

        private enum CodingKeys: String, CodingKey {
            case applicationStatus = "ApplicationStatus"
            case lastUpdatedTime = "LastUpdatedTime"
        }
    }

    public struct PutResourceAttributesResult: AWSShape {

    }

    public struct CreatedArtifact: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// A description that can be free-form text to record additional detail about the artifact for clarity or for later reference.
        public let description: String?
        /// An ARN that uniquely identifies the result of a migration task.
        public let name: String

        public init(description: String? = nil, name: String) {
            self.description = description
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case name = "Name"
        }
    }

    public struct AssociateDiscoveredResourceResult: AWSShape {

    }

}