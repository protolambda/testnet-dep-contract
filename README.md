# TESTNET deposit contract

- **NOT SECURE**, source is not verified
- **DO NOT USE** for anything of value


This is a copy of the [Solidity deposit contract by Axic](https://github.com/axic/eth2-deposit-contract),
 modified to be an ERC20, by extending the [OpenZeppelin contract suite](https://docs.openzeppelin.com/contracts/3.x/erc20).
Along with some other changes, strictly intended for testnets.

- The contract is an ERC20, it maintains balances with the common interface
- A deposit costs 1 token
- Tokens are not divisible (decimals = 0)
- It hardcodes a 32 ETH deposit in the verification and log process, but no actual funds needed for the deposit!
- The creator gets 1 Million tokens (!!!)
- There is an admin drain function, to take all testnet ETH out of the contract (!!!)
- There is an admin burn function, to burn any token amount, of any account (!!!)


## Usage

To deploy (or use other [ethereal](https://github.com/wealdtech/ethereal/) account options):
```shell script
ethereal contract deploy --network=goerli --name=DepositContract --json=deposit_contract.json --from=$ETH1_FROM_ADDR --privatekey=$ETH1_FROM_PRIV
```

## License

Apache 2.0, largely based on [work by Axic](https://github.com/axic/eth2-deposit-contract).

The work is provided AS-IS, and BIG WARNING (AGAIN!): the changes may have bugs, 
and this deposit contract should not be used in a context with real value.
