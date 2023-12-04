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

@_exported import SotoCore

/// Service object for interacting with AWS ManagedBlockchainQuery service.
///
/// Amazon Managed Blockchain (AMB) Query provides you with convenient access to multi-blockchain network data, which makes  it easier for you to extract contextual data related to blockchain activity. You can use AMB Query to  read data from public blockchain networks, such as Bitcoin Mainnet and Ethereum Mainnet. You can  also get information such as the current and historical balances of addresses, or you can get a  list of blockchain transactions for a given time period. Additionally, you can get details of a  given transaction, such as transaction events, which you can further analyze or use in business  logic for your applications.
public struct ManagedBlockchainQuery: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ManagedBlockchainQuery client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "ManagedBlockchainQuery",
            serviceIdentifier: "managedblockchain-query",
            serviceProtocol: .restjson,
            apiVersion: "2023-05-04",
            endpoint: endpoint,
            errorType: ManagedBlockchainQueryErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Gets the token balance for a batch of tokens by using the BatchGetTokenBalance  action for every token in the request.  Only the native tokens BTC,ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    @Sendable
    public func batchGetTokenBalance(_ input: BatchGetTokenBalanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchGetTokenBalanceOutput {
        return try await self.client.execute(
            operation: "BatchGetTokenBalance", 
            path: "/batch-get-token-balance", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the information about a specific contract deployed on the blockchain.    The Bitcoin blockchain networks do not support this  operation.   Metadata is currently only available for some ERC-20 contracts.  Metadata will be available for additional contracts in the future.
    @Sendable
    public func getAssetContract(_ input: GetAssetContractInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssetContractOutput {
        return try await self.client.execute(
            operation: "GetAssetContract", 
            path: "/get-asset-contract", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Gets the balance of a specific token, including native tokens, for a given address (wallet or contract) on the blockchain.  Only the native tokens BTC,ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    @Sendable
    public func getTokenBalance(_ input: GetTokenBalanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTokenBalanceOutput {
        return try await self.client.execute(
            operation: "GetTokenBalance", 
            path: "/get-token-balance", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Get the details of a transaction.
    @Sendable
    public func getTransaction(_ input: GetTransactionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTransactionOutput {
        return try await self.client.execute(
            operation: "GetTransaction", 
            path: "/get-transaction", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all the contracts for a given contract type deployed by an address  (either a contract address or a wallet address). The Bitcoin blockchain networks do not support this  operation.
    @Sendable
    public func listAssetContracts(_ input: ListAssetContractsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssetContractsOutput {
        return try await self.client.execute(
            operation: "ListAssetContracts", 
            path: "/list-asset-contracts", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// This action returns the following for a given blockchain network:   Lists all token balances owned by an address (either a contract  address or a wallet address).   Lists all token balances for all tokens created by a contract.   Lists all token balances for a given token.    You must always specify the network property of  the tokenFilter when using this operation.
    @Sendable
    public func listTokenBalances(_ input: ListTokenBalancesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTokenBalancesOutput {
        return try await self.client.execute(
            operation: "ListTokenBalances", 
            path: "/list-token-balances", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// An array of TransactionEvent objects. Each object contains details  about the transaction event.
    @Sendable
    public func listTransactionEvents(_ input: ListTransactionEventsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTransactionEventsOutput {
        return try await self.client.execute(
            operation: "ListTransactionEvents", 
            path: "/list-transaction-events", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Lists all of the transactions on a given wallet address or to a specific contract.
    @Sendable
    public func listTransactions(_ input: ListTransactionsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTransactionsOutput {
        return try await self.client.execute(
            operation: "ListTransactions", 
            path: "/list-transactions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension ManagedBlockchainQuery {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ManagedBlockchainQuery, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ManagedBlockchainQuery {
    /// Lists all the contracts for a given contract type deployed by an address  (either a contract address or a wallet address). The Bitcoin blockchain networks do not support this  operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listAssetContractsPaginator(
        _ input: ListAssetContractsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssetContractsInput, ListAssetContractsOutput> {
        return .init(
            input: input,
            command: self.listAssetContracts,
            inputKey: \ListAssetContractsInput.nextToken,
            outputKey: \ListAssetContractsOutput.nextToken,
            logger: logger
        )
    }

    /// This action returns the following for a given blockchain network:   Lists all token balances owned by an address (either a contract  address or a wallet address).   Lists all token balances for all tokens created by a contract.   Lists all token balances for a given token.    You must always specify the network property of  the tokenFilter when using this operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTokenBalancesPaginator(
        _ input: ListTokenBalancesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTokenBalancesInput, ListTokenBalancesOutput> {
        return .init(
            input: input,
            command: self.listTokenBalances,
            inputKey: \ListTokenBalancesInput.nextToken,
            outputKey: \ListTokenBalancesOutput.nextToken,
            logger: logger
        )
    }

    /// An array of TransactionEvent objects. Each object contains details  about the transaction event.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTransactionEventsPaginator(
        _ input: ListTransactionEventsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTransactionEventsInput, ListTransactionEventsOutput> {
        return .init(
            input: input,
            command: self.listTransactionEvents,
            inputKey: \ListTransactionEventsInput.nextToken,
            outputKey: \ListTransactionEventsOutput.nextToken,
            logger: logger
        )
    }

    /// Lists all of the transactions on a given wallet address or to a specific contract.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func listTransactionsPaginator(
        _ input: ListTransactionsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTransactionsInput, ListTransactionsOutput> {
        return .init(
            input: input,
            command: self.listTransactions,
            inputKey: \ListTransactionsInput.nextToken,
            outputKey: \ListTransactionsOutput.nextToken,
            logger: logger
        )
    }
}

extension ManagedBlockchainQuery.ListAssetContractsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListAssetContractsInput {
        return .init(
            contractFilter: self.contractFilter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ManagedBlockchainQuery.ListTokenBalancesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListTokenBalancesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            ownerFilter: self.ownerFilter,
            tokenFilter: self.tokenFilter
        )
    }
}

extension ManagedBlockchainQuery.ListTransactionEventsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListTransactionEventsInput {
        return .init(
            maxResults: self.maxResults,
            network: self.network,
            nextToken: token,
            transactionHash: self.transactionHash
        )
    }
}

extension ManagedBlockchainQuery.ListTransactionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListTransactionsInput {
        return .init(
            address: self.address,
            fromBlockchainInstant: self.fromBlockchainInstant,
            maxResults: self.maxResults,
            network: self.network,
            nextToken: token,
            sort: self.sort,
            toBlockchainInstant: self.toBlockchainInstant
        )
    }
}
