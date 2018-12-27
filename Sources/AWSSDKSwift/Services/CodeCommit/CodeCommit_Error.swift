// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CodeCommit
public enum CodeCommitErrorType: AWSErrorType {
    case repositoryNameRequiredException(message: String?)
    case invalidRepositoryNameException(message: String?)
    case repositoryDoesNotExistException(message: String?)
    case encryptionIntegrityChecksFailedException(message: String?)
    case encryptionKeyAccessDeniedException(message: String?)
    case encryptionKeyDisabledException(message: String?)
    case encryptionKeyNotFoundException(message: String?)
    case encryptionKeyUnavailableException(message: String?)
    case clientRequestTokenRequiredException(message: String?)
    case invalidClientRequestTokenException(message: String?)
    case idempotencyParameterMismatchException(message: String?)
    case referenceNameRequiredException(message: String?)
    case invalidReferenceNameException(message: String?)
    case referenceDoesNotExistException(message: String?)
    case referenceTypeNotSupportedException(message: String?)
    case titleRequiredException(message: String?)
    case invalidTitleException(message: String?)
    case invalidDescriptionException(message: String?)
    case targetsRequiredException(message: String?)
    case invalidTargetsException(message: String?)
    case targetRequiredException(message: String?)
    case invalidTargetException(message: String?)
    case multipleRepositoriesInPullRequestException(message: String?)
    case maximumOpenPullRequestsExceededException(message: String?)
    case sourceAndDestinationAreSameException(message: String?)
    case mergeOptionRequiredException(message: String?)
    case invalidMergeOptionException(message: String?)
    case invalidDestinationCommitSpecifierException(message: String?)
    case invalidSourceCommitSpecifierException(message: String?)
    case commitRequiredException(message: String?)
    case commitDoesNotExistException(message: String?)
    case invalidCommitException(message: String?)
    case tipsDivergenceExceededException(message: String?)
    case branchNameRequiredException(message: String?)
    case invalidBranchNameException(message: String?)
    case branchDoesNotExistException(message: String?)
    case pullRequestDoesNotExistException(message: String?)
    case invalidPullRequestIdException(message: String?)
    case pullRequestIdRequiredException(message: String?)
    case invalidPullRequestEventTypeException(message: String?)
    case invalidActorArnException(message: String?)
    case actorDoesNotExistException(message: String?)
    case invalidMaxResultsException(message: String?)
    case invalidContinuationTokenException(message: String?)
    case repositoryTriggersListRequiredException(message: String?)
    case maximumRepositoryTriggersExceededException(message: String?)
    case invalidRepositoryTriggerNameException(message: String?)
    case invalidRepositoryTriggerDestinationArnException(message: String?)
    case invalidRepositoryTriggerRegionException(message: String?)
    case invalidRepositoryTriggerCustomDataException(message: String?)
    case maximumBranchesExceededException(message: String?)
    case invalidRepositoryTriggerBranchNameException(message: String?)
    case invalidRepositoryTriggerEventsException(message: String?)
    case repositoryTriggerNameRequiredException(message: String?)
    case repositoryTriggerDestinationArnRequiredException(message: String?)
    case repositoryTriggerBranchNameListRequiredException(message: String?)
    case repositoryTriggerEventsListRequiredException(message: String?)
    case parentCommitIdRequiredException(message: String?)
    case invalidParentCommitIdException(message: String?)
    case parentCommitDoesNotExistException(message: String?)
    case parentCommitIdOutdatedException(message: String?)
    case fileContentRequiredException(message: String?)
    case fileContentSizeLimitExceededException(message: String?)
    case pathRequiredException(message: String?)
    case invalidPathException(message: String?)
    case branchNameIsTagNameException(message: String?)
    case invalidFileModeException(message: String?)
    case nameLengthExceededException(message: String?)
    case invalidEmailException(message: String?)
    case commitMessageLengthExceededException(message: String?)
    case invalidDeletionParameterException(message: String?)
    case sameFileContentException(message: String?)
    case fileNameConflictsWithDirectoryNameException(message: String?)
    case directoryNameConflictsWithFileNameException(message: String?)
    case commentContentRequiredException(message: String?)
    case commentContentSizeLimitExceededException(message: String?)
    case invalidFileLocationException(message: String?)
    case invalidRelativeFileVersionEnumException(message: String?)
    case invalidFilePositionException(message: String?)
    case commitIdRequiredException(message: String?)
    case invalidCommitIdException(message: String?)
    case beforeCommitIdAndAfterCommitIdAreSameException(message: String?)
    case pathDoesNotExistException(message: String?)
    case invalidSortByException(message: String?)
    case invalidOrderException(message: String?)
    case repositoryNamesRequiredException(message: String?)
    case maximumRepositoryNamesExceededException(message: String?)
    case commentDoesNotExistException(message: String?)
    case commentIdRequiredException(message: String?)
    case invalidCommentIdException(message: String?)
    case commentDeletedException(message: String?)
    case repositoryNameExistsException(message: String?)
    case invalidRepositoryDescriptionException(message: String?)
    case repositoryLimitExceededException(message: String?)
    case defaultBranchCannotBeDeletedException(message: String?)
    case repositoryNotAssociatedWithPullRequestException(message: String?)
    case commentNotCreatedByCallerException(message: String?)
    case manualMergeRequiredException(message: String?)
    case pullRequestAlreadyClosedException(message: String?)
    case tipOfSourceReferenceIsDifferentException(message: String?)
    case branchNameExistsException(message: String?)
    case blobIdRequiredException(message: String?)
    case invalidBlobIdException(message: String?)
    case blobIdDoesNotExistException(message: String?)
    case fileTooLargeException(message: String?)
    case invalidPullRequestStatusException(message: String?)
    case invalidAuthorArnException(message: String?)
    case authorDoesNotExistException(message: String?)
    case commitIdDoesNotExistException(message: String?)
    case folderDoesNotExistException(message: String?)
    case fileDoesNotExistException(message: String?)
    case invalidPullRequestStatusUpdateException(message: String?)
    case pullRequestStatusRequiredException(message: String?)
}

extension CodeCommitErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "RepositoryNameRequiredException":
            self = .repositoryNameRequiredException(message: message)
        case "InvalidRepositoryNameException":
            self = .invalidRepositoryNameException(message: message)
        case "RepositoryDoesNotExistException":
            self = .repositoryDoesNotExistException(message: message)
        case "EncryptionIntegrityChecksFailedException":
            self = .encryptionIntegrityChecksFailedException(message: message)
        case "EncryptionKeyAccessDeniedException":
            self = .encryptionKeyAccessDeniedException(message: message)
        case "EncryptionKeyDisabledException":
            self = .encryptionKeyDisabledException(message: message)
        case "EncryptionKeyNotFoundException":
            self = .encryptionKeyNotFoundException(message: message)
        case "EncryptionKeyUnavailableException":
            self = .encryptionKeyUnavailableException(message: message)
        case "ClientRequestTokenRequiredException":
            self = .clientRequestTokenRequiredException(message: message)
        case "InvalidClientRequestTokenException":
            self = .invalidClientRequestTokenException(message: message)
        case "IdempotencyParameterMismatchException":
            self = .idempotencyParameterMismatchException(message: message)
        case "ReferenceNameRequiredException":
            self = .referenceNameRequiredException(message: message)
        case "InvalidReferenceNameException":
            self = .invalidReferenceNameException(message: message)
        case "ReferenceDoesNotExistException":
            self = .referenceDoesNotExistException(message: message)
        case "ReferenceTypeNotSupportedException":
            self = .referenceTypeNotSupportedException(message: message)
        case "TitleRequiredException":
            self = .titleRequiredException(message: message)
        case "InvalidTitleException":
            self = .invalidTitleException(message: message)
        case "InvalidDescriptionException":
            self = .invalidDescriptionException(message: message)
        case "TargetsRequiredException":
            self = .targetsRequiredException(message: message)
        case "InvalidTargetsException":
            self = .invalidTargetsException(message: message)
        case "TargetRequiredException":
            self = .targetRequiredException(message: message)
        case "InvalidTargetException":
            self = .invalidTargetException(message: message)
        case "MultipleRepositoriesInPullRequestException":
            self = .multipleRepositoriesInPullRequestException(message: message)
        case "MaximumOpenPullRequestsExceededException":
            self = .maximumOpenPullRequestsExceededException(message: message)
        case "SourceAndDestinationAreSameException":
            self = .sourceAndDestinationAreSameException(message: message)
        case "MergeOptionRequiredException":
            self = .mergeOptionRequiredException(message: message)
        case "InvalidMergeOptionException":
            self = .invalidMergeOptionException(message: message)
        case "InvalidDestinationCommitSpecifierException":
            self = .invalidDestinationCommitSpecifierException(message: message)
        case "InvalidSourceCommitSpecifierException":
            self = .invalidSourceCommitSpecifierException(message: message)
        case "CommitRequiredException":
            self = .commitRequiredException(message: message)
        case "CommitDoesNotExistException":
            self = .commitDoesNotExistException(message: message)
        case "InvalidCommitException":
            self = .invalidCommitException(message: message)
        case "TipsDivergenceExceededException":
            self = .tipsDivergenceExceededException(message: message)
        case "BranchNameRequiredException":
            self = .branchNameRequiredException(message: message)
        case "InvalidBranchNameException":
            self = .invalidBranchNameException(message: message)
        case "BranchDoesNotExistException":
            self = .branchDoesNotExistException(message: message)
        case "PullRequestDoesNotExistException":
            self = .pullRequestDoesNotExistException(message: message)
        case "InvalidPullRequestIdException":
            self = .invalidPullRequestIdException(message: message)
        case "PullRequestIdRequiredException":
            self = .pullRequestIdRequiredException(message: message)
        case "InvalidPullRequestEventTypeException":
            self = .invalidPullRequestEventTypeException(message: message)
        case "InvalidActorArnException":
            self = .invalidActorArnException(message: message)
        case "ActorDoesNotExistException":
            self = .actorDoesNotExistException(message: message)
        case "InvalidMaxResultsException":
            self = .invalidMaxResultsException(message: message)
        case "InvalidContinuationTokenException":
            self = .invalidContinuationTokenException(message: message)
        case "RepositoryTriggersListRequiredException":
            self = .repositoryTriggersListRequiredException(message: message)
        case "MaximumRepositoryTriggersExceededException":
            self = .maximumRepositoryTriggersExceededException(message: message)
        case "InvalidRepositoryTriggerNameException":
            self = .invalidRepositoryTriggerNameException(message: message)
        case "InvalidRepositoryTriggerDestinationArnException":
            self = .invalidRepositoryTriggerDestinationArnException(message: message)
        case "InvalidRepositoryTriggerRegionException":
            self = .invalidRepositoryTriggerRegionException(message: message)
        case "InvalidRepositoryTriggerCustomDataException":
            self = .invalidRepositoryTriggerCustomDataException(message: message)
        case "MaximumBranchesExceededException":
            self = .maximumBranchesExceededException(message: message)
        case "InvalidRepositoryTriggerBranchNameException":
            self = .invalidRepositoryTriggerBranchNameException(message: message)
        case "InvalidRepositoryTriggerEventsException":
            self = .invalidRepositoryTriggerEventsException(message: message)
        case "RepositoryTriggerNameRequiredException":
            self = .repositoryTriggerNameRequiredException(message: message)
        case "RepositoryTriggerDestinationArnRequiredException":
            self = .repositoryTriggerDestinationArnRequiredException(message: message)
        case "RepositoryTriggerBranchNameListRequiredException":
            self = .repositoryTriggerBranchNameListRequiredException(message: message)
        case "RepositoryTriggerEventsListRequiredException":
            self = .repositoryTriggerEventsListRequiredException(message: message)
        case "ParentCommitIdRequiredException":
            self = .parentCommitIdRequiredException(message: message)
        case "InvalidParentCommitIdException":
            self = .invalidParentCommitIdException(message: message)
        case "ParentCommitDoesNotExistException":
            self = .parentCommitDoesNotExistException(message: message)
        case "ParentCommitIdOutdatedException":
            self = .parentCommitIdOutdatedException(message: message)
        case "FileContentRequiredException":
            self = .fileContentRequiredException(message: message)
        case "FileContentSizeLimitExceededException":
            self = .fileContentSizeLimitExceededException(message: message)
        case "PathRequiredException":
            self = .pathRequiredException(message: message)
        case "InvalidPathException":
            self = .invalidPathException(message: message)
        case "BranchNameIsTagNameException":
            self = .branchNameIsTagNameException(message: message)
        case "InvalidFileModeException":
            self = .invalidFileModeException(message: message)
        case "NameLengthExceededException":
            self = .nameLengthExceededException(message: message)
        case "InvalidEmailException":
            self = .invalidEmailException(message: message)
        case "CommitMessageLengthExceededException":
            self = .commitMessageLengthExceededException(message: message)
        case "InvalidDeletionParameterException":
            self = .invalidDeletionParameterException(message: message)
        case "SameFileContentException":
            self = .sameFileContentException(message: message)
        case "FileNameConflictsWithDirectoryNameException":
            self = .fileNameConflictsWithDirectoryNameException(message: message)
        case "DirectoryNameConflictsWithFileNameException":
            self = .directoryNameConflictsWithFileNameException(message: message)
        case "CommentContentRequiredException":
            self = .commentContentRequiredException(message: message)
        case "CommentContentSizeLimitExceededException":
            self = .commentContentSizeLimitExceededException(message: message)
        case "InvalidFileLocationException":
            self = .invalidFileLocationException(message: message)
        case "InvalidRelativeFileVersionEnumException":
            self = .invalidRelativeFileVersionEnumException(message: message)
        case "InvalidFilePositionException":
            self = .invalidFilePositionException(message: message)
        case "CommitIdRequiredException":
            self = .commitIdRequiredException(message: message)
        case "InvalidCommitIdException":
            self = .invalidCommitIdException(message: message)
        case "BeforeCommitIdAndAfterCommitIdAreSameException":
            self = .beforeCommitIdAndAfterCommitIdAreSameException(message: message)
        case "PathDoesNotExistException":
            self = .pathDoesNotExistException(message: message)
        case "InvalidSortByException":
            self = .invalidSortByException(message: message)
        case "InvalidOrderException":
            self = .invalidOrderException(message: message)
        case "RepositoryNamesRequiredException":
            self = .repositoryNamesRequiredException(message: message)
        case "MaximumRepositoryNamesExceededException":
            self = .maximumRepositoryNamesExceededException(message: message)
        case "CommentDoesNotExistException":
            self = .commentDoesNotExistException(message: message)
        case "CommentIdRequiredException":
            self = .commentIdRequiredException(message: message)
        case "InvalidCommentIdException":
            self = .invalidCommentIdException(message: message)
        case "CommentDeletedException":
            self = .commentDeletedException(message: message)
        case "RepositoryNameExistsException":
            self = .repositoryNameExistsException(message: message)
        case "InvalidRepositoryDescriptionException":
            self = .invalidRepositoryDescriptionException(message: message)
        case "RepositoryLimitExceededException":
            self = .repositoryLimitExceededException(message: message)
        case "DefaultBranchCannotBeDeletedException":
            self = .defaultBranchCannotBeDeletedException(message: message)
        case "RepositoryNotAssociatedWithPullRequestException":
            self = .repositoryNotAssociatedWithPullRequestException(message: message)
        case "CommentNotCreatedByCallerException":
            self = .commentNotCreatedByCallerException(message: message)
        case "ManualMergeRequiredException":
            self = .manualMergeRequiredException(message: message)
        case "PullRequestAlreadyClosedException":
            self = .pullRequestAlreadyClosedException(message: message)
        case "TipOfSourceReferenceIsDifferentException":
            self = .tipOfSourceReferenceIsDifferentException(message: message)
        case "BranchNameExistsException":
            self = .branchNameExistsException(message: message)
        case "BlobIdRequiredException":
            self = .blobIdRequiredException(message: message)
        case "InvalidBlobIdException":
            self = .invalidBlobIdException(message: message)
        case "BlobIdDoesNotExistException":
            self = .blobIdDoesNotExistException(message: message)
        case "FileTooLargeException":
            self = .fileTooLargeException(message: message)
        case "InvalidPullRequestStatusException":
            self = .invalidPullRequestStatusException(message: message)
        case "InvalidAuthorArnException":
            self = .invalidAuthorArnException(message: message)
        case "AuthorDoesNotExistException":
            self = .authorDoesNotExistException(message: message)
        case "CommitIdDoesNotExistException":
            self = .commitIdDoesNotExistException(message: message)
        case "FolderDoesNotExistException":
            self = .folderDoesNotExistException(message: message)
        case "FileDoesNotExistException":
            self = .fileDoesNotExistException(message: message)
        case "InvalidPullRequestStatusUpdateException":
            self = .invalidPullRequestStatusUpdateException(message: message)
        case "PullRequestStatusRequiredException":
            self = .pullRequestStatusRequiredException(message: message)
        default:
            return nil
        }
    }
}