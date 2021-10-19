//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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

/// Service object for interacting with AWS SMS service.
///
/// AWS Server Migration Service AWS Server Migration Service (AWS SMS) makes it easier and faster for you to migrate your on-premises workloads to AWS. To learn more about AWS SMS, see the following  resources:    AWS Server Migration Service product page     AWS Server Migration Service User Guide
public struct SMS: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SMS client
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
            amzTarget: "AWSServerMigrationService_V2016_10_24",
            service: "sms",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-24",
            endpoint: endpoint,
            errorType: SMSErrorType.self,
            xmlNamespace: "http://ec2.amazon.com/servermigration/2016-10-24/",
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
    public func createApp(_ input: CreateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppResponse> {
        return self.client.execute(operation: "CreateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).
    public func createReplicationJob(_ input: CreateReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReplicationJobResponse> {
        return self.client.execute(operation: "CreateReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.
    public func deleteApp(_ input: DeleteAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppResponse> {
        return self.client.execute(operation: "DeleteApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the launch configuration for the specified application.
    public func deleteAppLaunchConfiguration(_ input: DeleteAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppLaunchConfigurationResponse> {
        return self.client.execute(operation: "DeleteAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the replication configuration for the specified application.
    public func deleteAppReplicationConfiguration(_ input: DeleteAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppReplicationConfigurationResponse> {
        return self.client.execute(operation: "DeleteAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the validation configuration for the specified application.
    public func deleteAppValidationConfiguration(_ input: DeleteAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppValidationConfigurationResponse> {
        return self.client.execute(operation: "DeleteAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified replication job. After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.
    public func deleteReplicationJob(_ input: DeleteReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReplicationJobResponse> {
        return self.client.execute(operation: "DeleteReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes all servers from your server catalog.
    public func deleteServerCatalog(_ input: DeleteServerCatalogRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServerCatalogResponse> {
        return self.client.execute(operation: "DeleteServerCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified connector from AWS SMS. After you disassociate a connector, it is no longer available to support replication jobs.
    public func disassociateConnector(_ input: DisassociateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateConnectorResponse> {
        return self.client.execute(operation: "DisassociateConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateChangeSet(_ input: GenerateChangeSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateChangeSetResponse> {
        return self.client.execute(operation: "GenerateChangeSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates an AWS CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateTemplate(_ input: GenerateTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateTemplateResponse> {
        return self.client.execute(operation: "GenerateTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve information about the specified application.
    public func getApp(_ input: GetAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppResponse> {
        return self.client.execute(operation: "GetApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the application launch configuration associated with the specified application.
    public func getAppLaunchConfiguration(_ input: GetAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppLaunchConfigurationResponse> {
        return self.client.execute(operation: "GetAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the application replication configuration associated with the specified application.
    public func getAppReplicationConfiguration(_ input: GetAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppReplicationConfigurationResponse> {
        return self.client.execute(operation: "GetAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a configuration for validating an application.
    public func getAppValidationConfiguration(_ input: GetAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppValidationConfigurationResponse> {
        return self.client.execute(operation: "GetAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves output from validating an application.
    public func getAppValidationOutput(_ input: GetAppValidationOutputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAppValidationOutputResponse> {
        return self.client.execute(operation: "GetAppValidationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the connectors registered with the AWS SMS.
    public func getConnectors(_ input: GetConnectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConnectorsResponse> {
        return self.client.execute(operation: "GetConnectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified replication job or all of your replication jobs.
    public func getReplicationJobs(_ input: GetReplicationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReplicationJobsResponse> {
        return self.client.execute(operation: "GetReplicationJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the replication runs for the specified replication job.
    public func getReplicationRuns(_ input: GetReplicationRunsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetReplicationRunsResponse> {
        return self.client.execute(operation: "GetReplicationRuns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    public func getServers(_ input: GetServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServersResponse> {
        return self.client.execute(operation: "GetServers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows application import from AWS Migration Hub.
    public func importAppCatalog(_ input: ImportAppCatalogRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportAppCatalogResponse> {
        return self.client.execute(operation: "ImportAppCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import. This call returns immediately, but might take additional time to retrieve all the servers.
    public func importServerCatalog(_ input: ImportServerCatalogRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportServerCatalogResponse> {
        return self.client.execute(operation: "ImportServerCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Launches the specified application as a stack in AWS CloudFormation.
    public func launchApp(_ input: LaunchAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LaunchAppResponse> {
        return self.client.execute(operation: "LaunchApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves summaries for all applications.
    public func listApps(_ input: ListAppsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAppsResponse> {
        return self.client.execute(operation: "ListApps", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information to AWS SMS about whether application validation is successful.
    public func notifyAppValidationOutput(_ input: NotifyAppValidationOutputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<NotifyAppValidationOutputResponse> {
        return self.client.execute(operation: "NotifyAppValidationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the launch configuration for the specified application.
    public func putAppLaunchConfiguration(_ input: PutAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutAppLaunchConfigurationResponse> {
        return self.client.execute(operation: "PutAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the replication configuration for the specified application.
    public func putAppReplicationConfiguration(_ input: PutAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutAppReplicationConfigurationResponse> {
        return self.client.execute(operation: "PutAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a validation configuration for the specified application.
    public func putAppValidationConfiguration(_ input: PutAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutAppValidationConfigurationResponse> {
        return self.client.execute(operation: "PutAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts replicating the specified application by creating replication jobs for each server in the application.
    public func startAppReplication(_ input: StartAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartAppReplicationResponse> {
        return self.client.execute(operation: "StartAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an on-demand replication run for the specified application.
    public func startOnDemandAppReplication(_ input: StartOnDemandAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartOnDemandAppReplicationResponse> {
        return self.client.execute(operation: "StartOnDemandAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.
    public func startOnDemandReplicationRun(_ input: StartOnDemandReplicationRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartOnDemandReplicationRunResponse> {
        return self.client.execute(operation: "StartOnDemandReplicationRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops replicating the specified application by deleting the replication job for each server in the application.
    public func stopAppReplication(_ input: StopAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopAppReplicationResponse> {
        return self.client.execute(operation: "StopAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Terminates the stack for the specified application.
    public func terminateApp(_ input: TerminateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateAppResponse> {
        return self.client.execute(operation: "TerminateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified application.
    public func updateApp(_ input: UpdateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAppResponse> {
        return self.client.execute(operation: "UpdateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified settings for the specified replication job.
    public func updateReplicationJob(_ input: UpdateReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateReplicationJobResponse> {
        return self.client.execute(operation: "UpdateReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension SMS {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SMS, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
