# Deploy RLN onchain tree on L2 Testnet

This is a split of RLN mainnet milestone which grew too large in scope.

Once complemented, the economical behaviour of RLN will have been specified,
implemented and discussed with the Status team.
An implementation of RLN for light clients will also be done, to demonstrate RLN’s UX with onchain Merkle tree.
Finally, the smart contract will be deployed on a Linea-based L2 testnet and used by The Waku Network.

It will then be possible to design the usage of RLN in Chat SDK.

**deliverables**: TODO

## [Implement RLN smart contract for paid, multilevel memberships](https://github.com/waku-org/pm/issues/228)

**Owner**: research

**Feature**: [RLN Smart Contract](/FURPS/core/rln_smart_contract.md)

**FURPS**:

- F1. RLN rate limit can be defined in terms of multiple messages per epoch.
- F2. RLN rate limit is set at membership insertion
- F3. RLN initialization only requires Web3 RPC `call`s, no blockchain events are needed.
- F4. An ERC-20 token deposit is needed to insert a membership
- U1. Application developers can set RLN rate limit at insertion.

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [TWN supports RLN onchain tree and deposits, existing memberships only](https://github.com/waku-org/pm/issues/286)

**Owner**: nwaku

**Feature**: [RLN Smart Contract](/FURPS/core/rln_smart_contract.md)

**FURPS**:

- F3. RLN initialization only requires Web3 RPC `call`s, no blockchain events are needed.
- U2. User do not need to wait for merkle tree synchronization and building to start relaying
  or sending messages.
- P1. New node setup with an RLN membership can be ready to verify RLN proof within 5s,
  no matter the size of the tree **(Vac-DST)**.
- +1. Smart Contracts are deployed on Linea Testnet.
- +2. TWN uses smart contracts deployed on Linea Testnet.

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [Fallback strategy for Web3 RPC endpoints are implemented in nwaku]()

**Owner**: nwaku

**Feature**: [nwaku](/FURPS/application/nwaku.md)

**FURPS**:

- R1. Relay node can fallback to alternative RPC endpoints
  if the primary Web3 RPC provider becomes unavailable.

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [RLNv2 Web management interface](https://github.com/waku-org/pm/issues/281)

**Owner**: js-waku

**Feature**: [RLN Membership Management](/FURPS/application/rln_membership_management.md)

**FURPS**:

- F1. Can generate RLN credentials.
- F2. Can insert RLN membership in smart contract, with accompanying deposit.
- F3. Can extend RLN membership on smart contract.
- F4. Can withdraw deposit from smart contract.
- F5. Membership credentials are encrypted by default on local disk.
- U1. RLN membership details can be exported and imported.
- U2. Deployment details (address, chain id) are persisted by library and in exports.
- R1. Import and exports are interoperable across all implementations.
- +1. Deployed on https://rln.waku.org
- +2. Available for Linea Sepolia Testnet contracts.
- +3. Proof generation and validation is out of scope.

For S1. Browser application, using web3 wallet browser extensions.

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)
