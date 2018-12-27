// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IAM
public enum IAMErrorType: AWSErrorType {
    case noSuchEntityException(message: String?)
    case serviceFailureException(message: String?)
    case invalidInputException(message: String?)
    case policyEvaluationException(message: String?)
    case deleteConflictException(message: String?)
    case limitExceededException(message: String?)
    case unmodifiableEntityException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case entityAlreadyExistsException(message: String?)
    case malformedCertificateException(message: String?)
    case invalidCertificateException(message: String?)
    case duplicateCertificateException(message: String?)
    case policyNotAttachableException(message: String?)
    case entityTemporarilyUnmodifiableException(message: String?)
    case invalidAuthenticationCodeException(message: String?)
    case concurrentModificationException(message: String?)
    case unrecognizedPublicKeyEncodingException(message: String?)
    case invalidUserTypeException(message: String?)
    case passwordPolicyViolationException(message: String?)
    case credentialReportNotPresentException(message: String?)
    case credentialReportExpiredException(message: String?)
    case credentialReportNotReadyException(message: String?)
    case serviceNotSupportedException(message: String?)
    case keyPairMismatchException(message: String?)
    case invalidPublicKeyException(message: String?)
    case duplicateSSHPublicKeyException(message: String?)
}

extension IAMErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NoSuchEntityException":
            self = .noSuchEntityException(message: message)
        case "ServiceFailureException":
            self = .serviceFailureException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "PolicyEvaluationException":
            self = .policyEvaluationException(message: message)
        case "DeleteConflictException":
            self = .deleteConflictException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "UnmodifiableEntityException":
            self = .unmodifiableEntityException(message: message)
        case "MalformedPolicyDocumentException":
            self = .malformedPolicyDocumentException(message: message)
        case "EntityAlreadyExistsException":
            self = .entityAlreadyExistsException(message: message)
        case "MalformedCertificateException":
            self = .malformedCertificateException(message: message)
        case "InvalidCertificateException":
            self = .invalidCertificateException(message: message)
        case "DuplicateCertificateException":
            self = .duplicateCertificateException(message: message)
        case "PolicyNotAttachableException":
            self = .policyNotAttachableException(message: message)
        case "EntityTemporarilyUnmodifiableException":
            self = .entityTemporarilyUnmodifiableException(message: message)
        case "InvalidAuthenticationCodeException":
            self = .invalidAuthenticationCodeException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "UnrecognizedPublicKeyEncodingException":
            self = .unrecognizedPublicKeyEncodingException(message: message)
        case "InvalidUserTypeException":
            self = .invalidUserTypeException(message: message)
        case "PasswordPolicyViolationException":
            self = .passwordPolicyViolationException(message: message)
        case "CredentialReportNotPresentException":
            self = .credentialReportNotPresentException(message: message)
        case "CredentialReportExpiredException":
            self = .credentialReportExpiredException(message: message)
        case "CredentialReportNotReadyException":
            self = .credentialReportNotReadyException(message: message)
        case "ServiceNotSupportedException":
            self = .serviceNotSupportedException(message: message)
        case "KeyPairMismatchException":
            self = .keyPairMismatchException(message: message)
        case "InvalidPublicKeyException":
            self = .invalidPublicKeyException(message: message)
        case "DuplicateSSHPublicKeyException":
            self = .duplicateSSHPublicKeyException(message: message)
        default:
            return nil
        }
    }
}