// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon MQ is a managed message broker service for Apache ActiveMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.
*/
public struct MQ {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "mq",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MQErrorType.self]
        )
    }

    ///  Updates the specified configuration.
    public func updateConfiguration(_ input: UpdateConfigurationRequest) throws -> EventLoopFuture<UpdateConfigurationResponse> {
        return try client.send(operation: "UpdateConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: "PUT", input: input)
    }

    ///  Creates an ActiveMQ user.
    public func createUser(_ input: CreateUserRequest) throws -> EventLoopFuture<CreateUserResponse> {
        return try client.send(operation: "CreateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified broker.
    public func describeBroker(_ input: DescribeBrokerRequest) throws -> EventLoopFuture<DescribeBrokerResponse> {
        return try client.send(operation: "DescribeBroker", path: "/v1/brokers/{broker-id}", httpMethod: "GET", input: input)
    }

    ///  Adds a pending configuration change to a broker.
    public func updateBroker(_ input: UpdateBrokerRequest) throws -> EventLoopFuture<UpdateBrokerResponse> {
        return try client.send(operation: "UpdateBroker", path: "/v1/brokers/{broker-id}", httpMethod: "PUT", input: input)
    }

    ///  Updates the information for an ActiveMQ user.
    public func updateUser(_ input: UpdateUserRequest) throws -> EventLoopFuture<UpdateUserResponse> {
        return try client.send(operation: "UpdateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "PUT", input: input)
    }

    ///  Deletes a broker. Note: This API is asynchronous.
    public func deleteBroker(_ input: DeleteBrokerRequest) throws -> EventLoopFuture<DeleteBrokerResponse> {
        return try client.send(operation: "DeleteBroker", path: "/v1/brokers/{broker-id}", httpMethod: "DELETE", input: input)
    }

    ///  Creates a broker. Note: This API is asynchronous.
    public func createBroker(_ input: CreateBrokerRequest) throws -> EventLoopFuture<CreateBrokerResponse> {
        return try client.send(operation: "CreateBroker", path: "/v1/brokers", httpMethod: "POST", input: input)
    }

    ///  Deletes an ActiveMQ user.
    public func deleteUser(_ input: DeleteUserRequest) throws -> EventLoopFuture<DeleteUserResponse> {
        return try client.send(operation: "DeleteUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "DELETE", input: input)
    }

    ///  Returns a list of all ActiveMQ users.
    public func listUsers(_ input: ListUsersRequest) throws -> EventLoopFuture<ListUsersResponse> {
        return try client.send(operation: "ListUsers", path: "/v1/brokers/{broker-id}/users", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all configurations.
    public func listConfigurations(_ input: ListConfigurationsRequest) throws -> EventLoopFuture<ListConfigurationsResponse> {
        return try client.send(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: "GET", input: input)
    }

    ///  Returns information about the specified configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest) throws -> EventLoopFuture<DescribeConfigurationResponse> {
        return try client.send(operation: "DescribeConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: "GET", input: input)
    }

    ///  Reboots a broker. Note: This API is asynchronous.
    public func rebootBroker(_ input: RebootBrokerRequest) throws -> EventLoopFuture<RebootBrokerResponse> {
        return try client.send(operation: "RebootBroker", path: "/v1/brokers/{broker-id}/reboot", httpMethod: "POST", input: input)
    }

    ///  Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
    public func createConfiguration(_ input: CreateConfigurationRequest) throws -> EventLoopFuture<CreateConfigurationResponse> {
        return try client.send(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all brokers.
    public func listBrokers(_ input: ListBrokersRequest) throws -> EventLoopFuture<ListBrokersResponse> {
        return try client.send(operation: "ListBrokers", path: "/v1/brokers", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all revisions for the specified configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest) throws -> EventLoopFuture<ListConfigurationRevisionsResponse> {
        return try client.send(operation: "ListConfigurationRevisions", path: "/v1/configurations/{configuration-id}/revisions", httpMethod: "GET", input: input)
    }

    ///  Returns the specified configuration revision for the specified configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest) throws -> EventLoopFuture<DescribeConfigurationRevisionResponse> {
        return try client.send(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", httpMethod: "GET", input: input)
    }

    ///  Returns information about an ActiveMQ user.
    public func describeUser(_ input: DescribeUserRequest) throws -> EventLoopFuture<DescribeUserResponse> {
        return try client.send(operation: "DescribeUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: "GET", input: input)
    }


}