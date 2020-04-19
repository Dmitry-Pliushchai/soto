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
Client object for interacting with AWS WorkDocs service.

The WorkDocs API is designed for the following use cases:   File Migration: File migration applications are supported for users who want to migrate their files from an on-premises or off-premises file system or service. Users can insert files into a user directory structure, as well as allow for basic metadata changes, such as modifications to the permissions of files.   Security: Support security applications are supported for users who have additional security needs, such as antivirus or data loss prevention. The API actions, along with AWS CloudTrail, allow these applications to detect when changes occur in Amazon WorkDocs. Then, the application can take the necessary actions and replace the target file. If the target file violates the policy, the application can also choose to email the user.   eDiscovery/Analytics: General administrative applications are supported, such as eDiscovery and analytics. These applications can choose to mimic or record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to replicate data for eDiscovery, backup, or analytical applications.   All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM user gains full administrative visibility into the entire Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not limited to, the ability to modify file permissions and upload any file to any user. This allows developers to perform the three use cases above, as well as give users the ability to grant access on a selective basis using the IAM model.
*/
public struct WorkDocs {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the WorkDocs client
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
            service: "workdocs",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-05-01",
            endpoint: endpoint,
            serviceEndpoints: ["fips-us-east-1": "workdocs-fips.us-east-1.amazonaws.com", "fips-us-west-2": "workdocs-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [WorkDocsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Aborts the upload of the specified document version that was previously initiated by InitiateDocumentVersionUpload. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
    @discardableResult public func abortDocumentVersionUpload(_ input: AbortDocumentVersionUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "AbortDocumentVersionUpload", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Activates the specified user. Only active users can access Amazon WorkDocs.
    public func activateUser(_ input: ActivateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateUserResponse> {
        return client.send(operation: "ActivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
    public func addResourcePermissions(_ input: AddResourcePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddResourcePermissionsResponse> {
        return client.send(operation: "AddResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds a new comment to the specified document version.
    public func createComment(_ input: CreateCommentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCommentResponse> {
        return client.send(operation: "CreateComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds one or more custom properties to the specified resource (a folder, document, or version).
    public func createCustomMetadata(_ input: CreateCustomMetadataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomMetadataResponse> {
        return client.send(operation: "CreateCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates a folder with the specified name and parent folder.
    public func createFolder(_ input: CreateFolderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFolderResponse> {
        return client.send(operation: "CreateFolder", path: "/api/v1/folders", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds the specified list of labels to the given resource (a document or folder)
    public func createLabels(_ input: CreateLabelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLabelsResponse> {
        return client.send(operation: "CreateLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see Subscribe to Notifications in the Amazon WorkDocs Developer Guide.
    public func createNotificationSubscription(_ input: CreateNotificationSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotificationSubscriptionResponse> {
        return client.send(operation: "CreateNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/api/v1/users", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.
    @discardableResult public func deactivateUser(_ input: DeactivateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeactivateUser", path: "/api/v1/users/{UserId}/activation", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified comment from the document version.
    @discardableResult public func deleteComment(_ input: DeleteCommentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteComment", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes custom metadata from the specified resource.
    public func deleteCustomMetadata(_ input: DeleteCustomMetadataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomMetadataResponse> {
        return client.send(operation: "DeleteCustomMetadata", path: "/api/v1/resources/{ResourceId}/customMetadata", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Permanently deletes the specified document and its associated metadata.
    @discardableResult public func deleteDocument(_ input: DeleteDocumentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Permanently deletes the specified folder and its contents.
    @discardableResult public func deleteFolder(_ input: DeleteFolderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteFolder", path: "/api/v1/folders/{FolderId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the contents of the specified folder.
    @discardableResult public func deleteFolderContents(_ input: DeleteFolderContentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified list of labels from a resource.
    public func deleteLabels(_ input: DeleteLabelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLabelsResponse> {
        return client.send(operation: "DeleteLabels", path: "/api/v1/resources/{ResourceId}/labels", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified subscription from the specified organization.
    @discardableResult public func deleteNotificationSubscription(_ input: DeleteNotificationSubscriptionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteNotificationSubscription", path: "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified user from a Simple AD or Microsoft AD directory.
    @discardableResult public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteUser", path: "/api/v1/users/{UserId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Describes the user activities in a specified time period.
    public func describeActivities(_ input: DescribeActivitiesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeActivitiesResponse> {
        return client.send(operation: "DescribeActivities", path: "/api/v1/activities", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List all the comments for the specified document version.
    public func describeComments(_ input: DescribeCommentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCommentsResponse> {
        return client.send(operation: "DescribeComments", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the document versions for the specified document. By default, only active versions are returned.
    public func describeDocumentVersions(_ input: DescribeDocumentVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentVersionsResponse> {
        return client.send(operation: "DescribeDocumentVersions", path: "/api/v1/documents/{DocumentId}/versions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    public func describeFolderContents(_ input: DescribeFolderContentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFolderContentsResponse> {
        return client.send(operation: "DescribeFolderContents", path: "/api/v1/folders/{FolderId}/contents", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes the groups specified by the query. Groups are defined by the underlying Active Directory.
    public func describeGroups(_ input: DescribeGroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupsResponse> {
        return client.send(operation: "DescribeGroups", path: "/api/v1/groups", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the specified notification subscriptions.
    public func describeNotificationSubscriptions(_ input: DescribeNotificationSubscriptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotificationSubscriptionsResponse> {
        return client.send(operation: "DescribeNotificationSubscriptions", path: "/api/v1/organizations/{OrganizationId}/subscriptions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes the permissions of a specified resource.
    public func describeResourcePermissions(_ input: DescribeResourcePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcePermissionsResponse> {
        return client.send(operation: "DescribeResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func describeRootFolders(_ input: DescribeRootFoldersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRootFoldersResponse> {
        return client.send(operation: "DescribeRootFolders", path: "/api/v1/me/root", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    public func describeUsers(_ input: DescribeUsersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        return client.send(operation: "DescribeUsers", path: "/api/v1/users", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see Authentication and Access Control for User Applications in the Amazon WorkDocs Developer Guide.
    public func getCurrentUser(_ input: GetCurrentUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCurrentUserResponse> {
        return client.send(operation: "GetCurrentUser", path: "/api/v1/me", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves details of a document.
    public func getDocument(_ input: GetDocumentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDocumentResponse> {
        return client.send(operation: "GetDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
    public func getDocumentPath(_ input: GetDocumentPathRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDocumentPathResponse> {
        return client.send(operation: "GetDocumentPath", path: "/api/v1/documents/{DocumentId}/path", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves version metadata for the specified document.
    public func getDocumentVersion(_ input: GetDocumentVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDocumentVersionResponse> {
        return client.send(operation: "GetDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the metadata of the specified folder.
    public func getFolder(_ input: GetFolderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFolderResponse> {
        return client.send(operation: "GetFolder", path: "/api/v1/folders/{FolderId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
    public func getFolderPath(_ input: GetFolderPathRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFolderPathResponse> {
        return client.send(operation: "GetFolderPath", path: "/api/v1/folders/{FolderId}/path", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
    public func getResources(_ input: GetResourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcesResponse> {
        return client.send(operation: "GetResources", path: "/api/v1/resources", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call UpdateDocumentVersion. To cancel the document upload, call AbortDocumentVersionUpload.
    public func initiateDocumentVersionUpload(_ input: InitiateDocumentVersionUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitiateDocumentVersionUploadResponse> {
        return client.send(operation: "InitiateDocumentVersionUpload", path: "/api/v1/documents", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes all the permissions from the specified resource.
    @discardableResult public func removeAllResourcePermissions(_ input: RemoveAllResourcePermissionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "RemoveAllResourcePermissions", path: "/api/v1/resources/{ResourceId}/permissions", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Removes the permission for the specified principal from the specified resource.
    @discardableResult public func removeResourcePermission(_ input: RemoveResourcePermissionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "RemoveResourcePermission", path: "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
    @discardableResult public func updateDocument(_ input: UpdateDocumentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateDocument", path: "/api/v1/documents/{DocumentId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Changes the status of the document version to ACTIVE.  Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by InitiateDocumentVersionUpload. 
    @discardableResult public func updateDocumentVersion(_ input: UpdateDocumentVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateDocumentVersion", path: "/api/v1/documents/{DocumentId}/versions/{VersionId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
    @discardableResult public func updateFolder(_ input: UpdateFolderRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateFolder", path: "/api/v1/folders/{FolderId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }

    ///  Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
    public func updateUser(_ input: UpdateUserRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUserResponse> {
        return client.send(operation: "UpdateUser", path: "/api/v1/users/{UserId}", httpMethod: "PATCH", input: input, on: eventLoop)
    }
}
