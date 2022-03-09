# ✨ So you want to sponsor a contest

This `README.md` contains a set of checklists for our contest collaboration.

Your contest will use two repos:

- **a _contest_ repo** (this one), which is used for scoping your contest and for providing information to contestants (wardens)
- **a _findings_ repo**, where issues are submitted.

Ultimately, when we launch the contest, this contest repo will be made public and will contain the smart contracts to be reviewed and all the information needed for contest participants. The findings repo will be made public after the contest is over and your team has mitigated the identified issues.

Some of the checklists in this doc are for **C4 (🐺)** and some of them are for **you as the contest sponsor (⭐️)**.

---

# Contest setup

## ⭐️ Sponsor: Provide contest details

Under "SPONSORS ADD INFO HERE" heading below, include the following:

- [ ] Name of each contract and:
  - [ ] source lines of code (excluding blank lines and comments) in each
  - [ ] external contracts called in each
  - [ ] libraries used in each
- [ ] Describe any novel or unique curve logic or mathematical models implemented in the contracts
- [ ] Does the token conform to the ERC-20 standard? In what specific ways does it differ?
- [ ] Describe anything else that adds any special logic that makes your approach unique
- [ ] Identify any areas of specific concern in reviewing the code
- [ ] Add all of the code to this repo that you want reviewed
- [ ] Create a PR to this repo with the above changes.

---

# Contest prep

## ⭐️ Sponsor: Contest prep

- [ ] Make sure your code is thoroughly commented using the [NatSpec format](https://docs.soliditylang.org/en/v0.5.10/natspec-format.html#natspec-format).
- [ ] Modify the bottom of this `README.md` file to describe how your code is supposed to work with links to any relevent documentation and any other criteria/details that the C4 Wardens should keep in mind when reviewing. ([Here's a well-constructed example.](https://github.com/code-423n4/2021-06-gro/blob/main/README.md))
- [ ] Please have final versions of contracts and documentation added/updated in this repo **no less than 8 hours prior to contest start time.**
- [ ] Ensure that you have access to the _findings_ repo where issues will be submitted.
- [ ] Promote the contest on Twitter (optional: tag in relevant protocols, etc.)
- [ ] Share it with your own communities (blog, Discord, Telegram, email newsletters, etc.)
- [ ] Optional: pre-record a high-level overview of your protocol (not just specific smart contract functions). This saves wardens a lot of time wading through documentation.
- [ ] Delete this checklist and all text above the line below when you're ready.

---

# Biconomy Hyphen 2.0 contest details

- \$71,250 USDC main award pot
- \$3,750 USDC gas optimization award pot
- Join [C4 Discord](https://discord.gg/code4rena) to register
- Submit findings [using the C4 form](https://code4rena.com/contests/2022-03-biconomy-contest/submit)
- [Read our guidelines for more details](https://docs.code4rena.com/roles/wardens)
- Starts March 10, 2022 00:00 UTC
- Ends March 16, 2022 23:59 UTC

This repo will be made public before the start of the contest. (C4 delete this line when made public)
Test
[ ⭐️ SPONSORS ADD INFO HERE ]


| Glossary| |
|-------------------------------|------------------------------------------------------|
| Liquidity Pool | Liquidity pool contract where LPs will provider liquidity. Single contract deployed on each supported chain, contains multiple tokens liquidity including native token |
| Executors | Off chain accounts that is run by Biconomy who have access to Liqudity present in Liqudity Pools on each chain |
| Deposit Transaction | Transaction done by the user on source chain who want to move his funds from source chain to destination chain |
| Transfer Transaction | Transaction done by the Executors on destination chain where user gets his funds from the Liquidity Pool after deducting transfer fee |
| Cross Chain Transfer | Deposit Transaction + Transfer Transaction makes one cross chain transfer |
| LPToken | ERC721 Token that represents share in Liquidity Pool |
| Supplied Liquidity (SL) | Total liquidity supplied by Liquidity Providers in the pool |
| Available Liquidity (AL) | Current available liquidity available in the pool for cross chain transfers |
| Equilibrium State | State of the liquidity pool when supplied liquidity = available liquidity |
| Deficit State | State of the liquidity pool when supplied liquidity > available liquidity |
| Excess State | State of the liquidity pool when supplied liquidity < available liquidity |
| Incentive Pool | Mapping stored in Liquidity Pool that contains incentive amount that is given to user deposit when pool is in deficit state |
| Equilibrium Fee | Percentage fee deducted from user transfer amount that is distributed to LPs when funds are given from Liquidity Pool |
| Dynamic Transfer Fee | Equilibrium Fee + Incentive Pool Fee, This is dynamic number calculated based on SL and AL |
| Gas Fee | Fee deducted from user transfer amount in the token being trasnferred that is equal to gas being used in transfer transaction |
| Total Transfer Fee | Dynamic Transfer Fee + Gas Fee |

## Protocol overview

## Smart Contracts
All the contracts in this section are to be reviewed. Any contracts not in this list are to be ignored for this contest.

#### ExecutorManager.sol ( sloc each)

#### TokenManager.sol ( sloc each)

#### LiquidityPool.sol ( sloc each)

#### LiquidityProviders.sol ( sloc each)

#### WhitelistPeriodManager.sol (240 sloc each)
    This contract enforces limits on the total and per wallet supplied liquidity for a given token.
    The contract exposes the following functions:
        a. beforeLiquidityAddition(), beforeLiquidityRemoval(), which are called by the LiquidityProvider contract before liquidity is added or removed.
        b. beforeLiquidityTransfer() which is called bt the LPToken before positions are transferred.
    The functions verify if all limits are being respected, and reverts in case a limit is being crossed.
    External Contracts Called:
        - LiquidityProviders
        - TokenManager

#### LPToken.sol (201 sloc each)
    An ERC721 Token, signifies liquidity provided by an LP for a given token pool.
    Whenever an LP supplied liquidty for a given token, an NFT is minted to them. Whoever owns the NFT has the rights to
    claim the liquidity and any associated rewards from the pool.
    External Contracts Called:
        - SvgHelpers
        - Whitelist Period Manager
        - LiquidityProviders


#### HyphenLiquidityFarming.sol (373 sloc each)
    Liquidity Providers can optionally lock their LP Tokens (NFTs) in this contract to earn rewards in BICO Tokens
    External Contracts Called:
        - LiquidityProviders
        - LPToken


## Additional protocol information
#### Dynamic Fee

#### Profit and loss

#### User interaction
User interaction start in either the deposit or withdraw handler. A user is treated differently depending on the size of the user and the type of interaction the user is doing, user interactions can be broken down in the following groups:

#### Deposits:		 

#### Withdrawals:	


## Potential Protocol concerns

## Areas of concern for Wardens

## Tests
A full set of unit tests are provided in the repo. To run these do the following:
## Prepare local enviroment

1. install `nodejs`, refer to [nodejs](https://nodejs.org/en/)
2. install `yarn`, refer to [yarn](https://classic.yarnpkg.com/en/)


## Testnet deployment

[ropsten ETH faucet](https://faucet.ropsten.be/)

 The following mocked contracts are used by the protocol on Ropsten:
| Mocks                         | Address |
|-------------------------------|------------------------------------------------------|
| USDC	                        | [USDC, ''](https://ropsten.etherscan.io/address/), |
| USDT	                        | [USDT, ''](https://ropsten.etherscan.io/address/), |


The following external contracts are being used
| External                         | Address |
|-------------------------------|------------------------------------------------------|
| xxx| xxx |

