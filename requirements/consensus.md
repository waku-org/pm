# Waku's Requirements on a Consensus Mechanism

**Note:** It is unclear at this stage whether these requirements should be fulfilled by Nomos, Status Network, both, or neither.

This document outlines limitations in Waku's current reliance on smart contracts and explains how they impede the delivery of Waku's desired properties: privacy, anonymity, and censorship-resistance.

## RLN Protocol Dependency

Waku relies on the RLN (Rate Limit Nullifier) protocol to rate-limit message publishers in a permissionless, censorship-resistant, and privacy-preserving manner.
This ensures unlinkability between wallet addresses and messages, as well as between separate messages.

### RPC API Usage

Commitments are added to a Merkle tree. The tree’s `root` is used to validate incoming messages (proof verification), while Merkle proofs enable proof generation (for sending messages).
The `root` and `getMerkleProof` functions are available on the RLN EVM smart contract ABI. Note that a user’s RLN identity (commitment) is required when calling `getMerkleProof`.

All Waku network nodes must enforce identical message validation rules to prevent network splits at the libp2p-gossipsub layer.
This necessitates consensus on the Merkle tree’s state across the network.

To achieve this, range validation is employed: a node verifies messages against the current root and a set of previous roots, accommodating proofs generated on recent prior roots.
However, this requires Waku nodes to constantly track the smart contract’s root, which updates whenever a user registers or withdraws membership.
On L2 networks, roots may change every few seconds, making Waku a heavy consumer of Web3 RPC APIs.

**Mitigation Strategy:**  
We intend to enhance the smart contract to expose a set of historical `root` values.
This would reduce RPC call frequency, though scalability remains unproven.
Event subscriptions (e.g., WebSocket) could also minimize RPC usage, but we abandoned this approach due to RPC provider instability (shift from WebSocket to HTTP long polling).
Re-evaluation may occur during migration to Status Network, given potential closer relation with RPC providers.

*Note:* These constraints primarily affect Waku Relay nodes (cloud/laptop-based).
Edge nodes (mobile/browser) require less frequent RPC access due to lower message volume and relaxed time constraints—since they verify messages without forwarding them (unlike relays, which must validate before propagation).

### Deposits and RLN Entrypoints

While RLN mitigates network DoS attacks by limiting message propagation, the smart contract itself requires protection against membership influx surges. Proposed strategies include:

- zk-based proof-of-humanity protocols (e.g., zkPassport)
- On-chain heuristics (e.g., Karma, ENS, or POAP ownership)

The initial implementation uses an ERC-20 deposit: users lock DAI proportional to their desired rate limit for a fixed membership period (e.g., 6–12 months). Deposits are refundable post-expiry.

## Waku’s Desired Privacy Properties

Waku aims to provide:
- **Participation anonymity:** Observers can detect Waku usage by an IP but cannot identify which Waku application is in use (assuming a shared network).
- **Receiver anonymity:** External observers cannot determine which specific messages a Waku user (IP) is interested in.
- **Sender anonymity (work in progress):** External observers cannot identify messages sent by a specific Waku user (IP).
- **Message relation unlinkability:** External observers cannot link messages as originating from the same user or targeting the same receiver.
- **Wallet-to-message unlinkability:** External observers or RPC endpoints cannot associate messages with specific wallet addresses (e.g., those used for RLN membership registration).

## Risks of Current Implementation

The use of EVM smart contracts with Web3 RPC API endpoints introduces critical risks:
- **RPC scalability burden:** All Waku applications—especially Relay nodes—require frequent Web3 RPC access. This affects even casual desktop users.
- **Smart contract censorship:** Major RPC providers blocking access to the RLN contract would cause a network-wide outage.
- **Privacy leak: IP-to-wallet linkage:** RPC interactions risk exposing unintended PII, such as correlating user IPs with wallet addresses. (Note: Waku does not conceal "IP X uses Waku" by design.)
- **Privacy leak: Wallet-to-Waku association:** Smart contract interactions on transparent chains publicly reveal that a wallet uses Waku via RLN.
- **Privacy leak: IP-to-RLN-credentials:** RPC interactions risk a given IP revealing their specific membership commitment. Note it is unclear how important this point is at this stage.

### FURPS

In summary, we could summarize Waku's needs for a consensus mechanism, due to RLN, as follows:

TODO



## de-MLS

TODO: This section will most likely be filled at a later stage in 2025.
We believe that de-MLS is likely to be the right technology to scale the Waku Chat SDK.
However, its implementation is not yet planned.

We already understand that message ordering for group management purposes is required,
and hence a consensus mechanism will be required.
It may be possible for such mechanism to be done within Waku.
Alternatively, it needs to be out-of-band, hence the present section.