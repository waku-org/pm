# Waku's Requirements on a Consensus Provider

Note: it is unclear at this stage whether those requirements should be fulfilled by Nomos, Status Network, both or neither.

The attempt here is to list the limitation of the current usage of Smart Contract by Waku,
and how it impedes in delivery Waku's desired properties of privacy, anonymity and censorship-resistance.

## RLN

Waku relies on RLN - Rate Limit Nullifier - protocol to rate limit message publishers in a permission-less,
censorship-resistant and privacy-preserving manner (unlinkability between wallet address and messages, and between separate messages).

### RPC API Usage

Commitments are added to a Merkle tree, the `root` of the tree is used for incoming message validation (proof verification),
And the Merkle proof for proof generation (sending messages).
`root` and `getMerkeProof` are ABI available on RLN EVM smart contract.
Note that the users' RLN identity (commitment) is needed when calling `getMerkleProof`.

All nodes in the Waku network must behave similarly in terms of message validation, to ensure the network does not split at the libp2p-gossipsub layer.
Which means there needs to be consensus on what the Merkle tree is, so that the same validation rules apply across the network.

To help ensure it happens, range validation is used:
a node verify messages against the current root, and a set of previous roots. In case the message proof was generated on a previous (recent) root.

However, it does mean that a Waku needs to keep up to date with the root of the smart contract, which change any time someone registers or withdraws a membership.
On a L2, this may happen every couple of seconds.
Making Waku a heavy user of Web3 RPC API.

To remediate to this, we intend to improve the smart contract and make available a set of the previous `root`. 
This will enable less frequent RPC usage, to a point. The scalability of this strategy is yet to be defined.

Note that using event subscription is also an option to reduce RPC calls.
We moved away from this due to unstability encountered with RPC providers (shift from WebSocket to http long polling),
we may review when migrating to the Status Network, as we'll have a closer relation with RPC providers.

Note that the above mainly applies for Waku Relay nodes (in the cloud, on a laptop).
Edge nodes (mobile, browser), still needs frequent RPC access. 
But to a lesser degree as the volume of messages is reduced, and message verification are not as time constraint as messages are not being forwarded.
(a relay node need to validate messages before forwarding aka relaying them).

### Deposits and Other RLN Entrypoints

While RLN protects the network from DoS, by limiting the number of messages propagated,
the smart contract needs to be protected from large influx of membership.

The intent is to develop a variety of strategies, such as usage of zk PoH protocols (e.g. zkPassport) or other onchain heuristics (e.g Karma, ENS or POAP ownership).

The first iteration is an ERC-20 deposit: The user needs to deposit an amount of DAI that is proportional to the rate limit they desired.
The DAI is locked in for the membership length (e.g. 6 or 12 months), and can refunded after expiry.

### Waku Desired Privacy Properties

A note on the privacy that Waku brings, or intends to:

Participation anonymity within the Waku network:
While it is possible for an observer to know that a given IP uses Waku, what Waku app they use (assuming usage of a common network) is not revealed.

Receiver anonymity: An external observer cannot determine what specific messages a Waku user (aka IP) are interested.
Sender anonymity (wip): An external observer cannot determine what specific messages a Waku user aka IP has sent.
Message relation: An external observer cannot determine whether two messages are related, sent by the same user or for the same receiver.
Wallet to message un-linkability: An external observer, or RPC API endpoint, cannot link messages with a specific wallet address (eg used to insert RLN membership).

### Risks

In summary, the risks of using an EVM smart contract with a Web3 RPC API endpoint are as follows:

- RPC API queries and scalability: Every application using Waku needs frequent access to a Web3 RPC API, especially relay node. This includes your average desktop app user.
- Smart contract censorship via Web3 RPC API: blocking access to the RLN smart contract by major RPC API providers would make create an effective outage on the Waku network.
- Privacy IP<>Wallet: By needing access to a smart contract, there is risk for a users to reveal unintended PII such as wallet to IP relation. Do note that "IP X uses Waku" is something Waku itself does not protect against.
- Privacy Wallet<>Waku: By introducing a smart contract element on a transparent chain, a user using Waku (and RLN), will reveal that their wallet uses Waku.

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