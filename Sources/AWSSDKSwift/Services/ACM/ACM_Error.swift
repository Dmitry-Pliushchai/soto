// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ACM
public enum ACMErrorType: AWSErrorType {
    case resourceNotFoundException(message: String?)
    case requestInProgressException(message: String?)
    case invalidArnException(message: String?)
    case invalidTagException(message: String?)
    case resourceInUseException(message: String?)
    case limitExceededException(message: String?)
    case invalidDomainValidationOptionsException(message: String?)
    case invalidStateException(message: String?)
    case tooManyTagsException(message: String?)
}

extension ACMErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "RequestInProgressException":
            self = .requestInProgressException(message: message)
        case "InvalidArnException":
            self = .invalidArnException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidDomainValidationOptionsException":
            self = .invalidDomainValidationOptionsException(message: message)
        case "InvalidStateException":
            self = .invalidStateException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        default:
            return nil
        }
    }
}