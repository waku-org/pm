# Waku Roadmap 2024 (Draft)

This live document acts as a high overview of the work to be tackled for Waku in 2024.

**This is still a draft**.

Actual planning and execution is done through GitHub issues and [milestones](https://github.com/waku-org/pm/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3Amilestone).

## Deliverable

Waku commits to 3 deliverables (WIP):

1. RLN membership growth
2. Status Support
3. Progress on Censorship-resistance, Privacy and Sustainability. 

(~2) expresses that while this deliverable is expected to be needed by Status, it's usage may not happen in 2024 and is
not part of the list of requirements for Status in 2024.

## Research Milestones

### The Waku Whitepaper

- **Goal:** On completion, Waku will have an academically rigorous whitepaper explaining the what, why and how of Waku protocols
- **Deliverables**: (3)
- **Research tracks:** All
- **Estimated date of completion:** 2024Q4

As set out in [https://github.com/waku-org/research/issues/7](https://github.com/waku-org/research/issues/7).
The document itself may source from one or more academic papers published and presented throughout the year.
Total length should be around 15 pages.

### [Waku RFC Review](https://github.com/waku-org/pm/issues/130)

- **Goal:** On completion, the set of RFCs for Waku will be simplified, reasonably up to date and accessible.
- **Deliverables**: (3)
- **Research tracks:** All
- **Estimated date of completion:** 2024Q1

Review our Waku RFC strategy, review the content of the most important RFCs, improve RFC indexing and ensure that
important RFCs are easily identified and accessible.

2 outputs are expected to achieve this milestone:

#### Review and implement RFC strategy

**Ownership note**: this Epic is a collaboration between Waku Research (R/A) and Vac RFCs (C/I)

Consult with stakeholders (Waku teams, Waku Community and Vac RFC team) to come up with an improved strategy for Waku RFCs to answer:

1. Should Waku RFCs be in a separate Waku-owned repo?
2. What is the role of proof of concepts vs raw RFCs?
3. How should Waku RFCs be indexed?
4. How should Waku RFCs be presented to make important specs obvious and easy to find?
5. Should we continue with the same RFC categories (Standards, Informational and Best Current Practices)?
6. Should we continue with the same RFC tags (Waku core vs application)?
7. Should we continue with the same COSS lifecycle? Should we add a "stagnant" status a la EIPs?
8. How do we clarify the responsibility of the Vac team vs Waku team when it comes to RFCs?
9. How can external contributors contribute or propose improvements to Waku specifications?
10. Clarify intended scope of topics that can be covered in Waku RFCs, delineate categories clearly and revise the spec lifecycles.

This item includes actioning the new proposed strategy, such as potentially moving Waku specs to a waku-org repo,
updating references to these in documentation, adding/removing tags and categories, writing up the proposed strategy
in contributor guidelines, etc.

#### Review Waku RFCs

**Ownership note**: this Epic is a collaboration between Waku Research (R/A) and Vac RFCs (C/I)

Review the most important Waku RFCs:

- review language for clarity
- ensure core specifications reflect the latest thinking around protocols and procedures
- consider marking some specifications as "stagnant" indicating that they're not being focused on
- deprecate RFCs that are no longer relevant

### [Store v3-beta - Message Hashes](https://github.com/waku-org/pm/issues/131)

- **Goal:** After this upgrade, the network will provide distributed and synchronised store services.
- **Deliverables**: (2), (3)
- **Research tracks:** Message Reliability
- **Estimated date of completion:** 2024Q2

An improved version of the Store protocol, marking a crucial increment towards a synchronisation protocol:

- introduces the concept of deterministic message hashes to index messages
- considers the Store as a key-value store
- allows for querying a list of keys (message hashes) from the Store
- allows for querying for the full message content (values) of a set of keys from the Store
- keeps all previous value-based filtering (e.g. content topic, timestamp) in place

The [proposed PR](https://github.com/waku-org/waku-proto/pull/10/files) to simplify the Store protocol and use message
hashes as index/cursor, can be used as a starting point.

### [Store v3 - store synchronisation](https://github.com/waku-org/pm/issues/132)

- **Goal:** Upgrade the Store service capability in the network from a collection of local, unsynchronised,
semi-centralised (trusted) service nodes to a decentralised service capability in the network with inter-node synchronisation.
- **Deliverables**: (2), (3)
- **Research tracks:** Message Reliability
- **Estimated date of completion:** 2024Q2

Building on Store v3-beta, this version of Store includes basic synchronisation between nodes.
This will probably include:

- a protocol/heuristic to resume store services after an offline period
- a protocol/heuristic to periodically compare local key-value store with other nodes and find missing keys
- a protocol/heuristic to periodically download the messages (values) for missing keys from other store nodes

Note that this can either be

- (i) designing a new synchronisation protocol built into the Store protocol
- (ii) adapting existing synchronisation building blocks (e.g. a [Prolly Tree library](https://docs.canvas.xyz/blog/2023-05-04-merklizing-the-key-value-store.html)) into Store, or
- (iii) simply swapping the key-value store itself to a synchronised backend, such as [GossipLog](https://github.com/canvasxyz/canvas/tree/c1c208032b56d6b474996cb7da7bda5c55b69463/packages/gossiplog)

IMO (iii) should be pursued as the preferred option, as far as possible.

### Store Incentivisation (first iteration/POC)

- **Goal:** The network will provide proof of concept for incentivised store protocol
- **Deliverables**: (3)
- **Research tracks:** Secure Scaling, Restricted Run, Protocol Incentivization
- **Estimated date of completion:** 2024Q2

A POC incentivisation mechanism that incorporates POC versions of the three Waku service incentivisation elements:

- a price offer/negotiation mechanism
- a proof of payment system
- a local reputation mechanism to distinguish between "good" and "bad" store nodes

> Note: Milestones in the incentivization domain may be significantly disrupted as the overall direction here is still being clarified re topics
> such as tokenomics, decisions about monetary vs reputational incentivisation, etc. Similarly, distributed reputation
> may soon form a very large part of this effort, but is not listed here as it's unclear where/if it fits the roadmap.

### General Service Protocol Incentivisation (first iteration/POC)

- **Goal:** The network will provide proof of concept for incentivised service protocols
- **Deliverables**: (3)
- **Research tracks:** Secure Scaling, Restricted Run, Protocol Incentivization
- **Estimated date of completion:** 2024Q2

This expands store incentivisation to other protocols:

- consider the most reasonable incentivisation vectors for non-store service protocols, if they need incentivisation at all (filter, lightpush, peer-exchange)
- apply the POC incentivisation elements developed for Store to other service protocols where applicable, delineating alternative strategies where not.

### Roadmap Towards Incentivisation on Mainnet

- **Goal:** Publish a breakdown clarifying the roadmap to push incentivization to mainnet.
- **Deliverables**: (3)
- **Research tracks:** Secure Scaling, Restricted Run, Protocol Incentivization
- **Estimated date of completion:** 2024Q3

The research and design necessary to come up with a roadmap to productionised incentivisation, including:

1. evaluating the POC incentivisation mechanisms for fairness, security, exploitability and changing tactics where necessary
2. maturing our tokenomics, etc
3. establishing the (possible) role of a global reputation mechanism

### Capability Service Discovery

- **Goal:** After this upgrade, the network will support decentralised service (e.g. store, filter) discovery on shards.
- **Deliverables**: (2), (3)
- **Research tracks**: Secure Scaling, Restricted Run
- **Estimated date of completion:** 2024Q2

Implement a strategy for Waku nodes to discover and maintain a healthy connectivity to the set of service peers
necessary for their configured applications. In the Waku Network nodes can opt to provide a range of services
(Store, Filter, etc.). Nodes can provide these services for one or more of the 8 pubsub topics comprising the Waku
Network. Any peer in the network trying to make use of these services should be able to easily find a service node
matching its desired (shard, service) capability vector. Various service discovery approaches is possible here.

See https://github.com/waku-org/research/issues/74.

### Content Service Discovery

- **Goal:** After this upgrade, the network will support service discovery on content topics
- **Deliverables**: (1), (2), (3)
- **Research tracks**: Secure Scaling, Restricted Run
- **Estimated date of completion:** 2024Q4

Implement a strategy for Waku nodes to discover service peers necessary for their configured applications based on the
content topics configured on those service nodes. In the Waku Network nodes can opt to provide a range of services
(Store, Filter, etc.). Nodes can provide these services for any set of content topic(s), allowing application-specific
service operators and nodes. Any peer in the network trying to make use of these services should be able to easily find
a service node matching its desired set of content topics. Note that the cardinality of all possible content topics
(infinite) may be too high for integration into existing DHTs/shared discovery methods. Alternative approaches could
include advertising on a separate pubsub topic, advertisements published on the configured content topics, etc.

### RLN in resource-restricted clients

- **Goal:** Using RLN in resource-restricted provide fair user experience in terms of initial setup and performance.
- **Deliverables**: (1), (~2), (3)
- **Research tracks:** Secure Scaling, Restricted Run, Rate Limiting
- **Estimated date of completion:** 2024Q3

Enabling RLN proof generation and verification within light clients.
Different options are set out in [https://github.com/waku-org/research/issues/45](https://github.com/waku-org/research/issues/45).
Most recently, the promising option of deploying the entire RLN membership tree to a L2 as opposed to a L1 chain,
became the key focus of this effort.

### RLNv2

- **Goal:** Improved flexibility of the rate limit (from 1 msg/epoch to N msg/epoch), providing better dimensioning for bandwidth capping.
- **Deliverables**: (1), (~2), (3)
- **Research tracks:** Secure Scaling, Restricted Run, Rate Limiting
- **Estimated date of completion:** 2024Q3

Moving from RLNv1 to RLNv2 to allow better bandwidth dimensioning in the network. This will allow a message allocation
per day per registered publisher, providing better statistical guarantees for network bandwidth usage.

See: [https://github.com/waku-org/research/issues/22](https://github.com/waku-org/research/issues/22) for more

### Maturing RLN variables/parameters revision (staking, contract/chain, token)

- **Goal:** A review of RLN security parameters and functionality in preparation for mainnet deployment.
- **Deliverables**: (~2), (3)
- **Research tracks:** Secure Scaling, Restricted Run, Rate Limiting
- **Estimated date of completion:** 2024Q3

Analyse RLN deployment in TWN Gen 0 and evaluate its DoS protection performance.

- should staking be introduced, especially to improve resilience against adversarial membership registrations?
- should slashing be introduced or does the existing gossipsub scoring method provide enough protection?
- which chain or L2 should we target for memberships?
- if staking is introduced, which token should be used?
- do we need a combination of msg/sec and msg allocation/day rate limiting?

### Unscheduled Milestones

The following items are not yet scheduled, but may be prioritised in the first few months of 2024:

- publish integrated peer and connection management strategy for all Waku protocols
- implement a distributed/global reputation mechanism
- pluggable validator strategy (see [https://github.com/waku-org/nwaku/issues/1700](https://github.com/waku-org/nwaku/issues/1700))
- general Waku protocol security review and audit

### Future Milestoness

#### Decentralised bootstrapping

Improve DNS-based discovery decentralisation by:

1. including non-Waku nodes in the default bootstrap list/domain published by Waku
2. allowing non-Waku parties to easily create and publish their own lists, likely in the form of a discv5 DHT crawler that creates a DNS-discovery compatible Merkle tree of discovered nodes, signs and publishes these to a domain
3. using the DNS-discovery link tree functionality to link multiple published lists
4. allowing (and creating?) offline bootstrap lists maintained locally for each node

See [https://github.com/waku-org/research/issues/69](https://github.com/waku-org/research/issues/69) for more

### RLNv3

## Engineering Milestones

### [Node Bandwidth Management Mechanism](https://github.com/waku-org/pm/issues/66)

- **Deliverables**: (1), (2)


Finish https://github.com/waku-org/pm/issues/66.

### [PostgreSQL Maintenance](https://github.com/waku-org/pm/milestone/9)

- **Deliverables**: (2)

Work on how to best handle PostgreSQL database growth and pruning is in progress and must completed to enable node operators
to handle database growth in an easy and non-disruptive manner.

### [Bindings (NodeJS, Rust, Golang)](https://github.com/waku-org/pm/issues/121)

- **Deliverables**: (1)

Provide functioning bindings over nwaku in the following environments:

- C
- NodeJS
- Rust (swap go-waku with nwaku)
- Golang

### Bindings - Mobile

- **Deliverables**: (1)
  
Verify and demonstrate that the Golang and Rust bindings work on mobile environments (Android and iOS).
Note that a review of client side protocols may be needed to ensure that nwaku uses the right protocols on mobile
(e.g. circuit relay as a client).

### [Serve Limited Content Topic (Store)](https://github.com/waku-org/pm/issues/122)

- **Deliverables**: (1), (2)

Enable store service to only serve specific content topics.
Note that decentralized peer discovery for content topics is scheduled at a later stage, meaning that application
developers would likely need to pass or hardcode list of store node or an enrtree in their client.

Need to cater for scenarios where a node connect to a store that does not support their content topic, such as a
possible update of the metadata protocol.

Ref: https://github.com/waku-org/pm/issues/64

### [User Pays Own RLN Membership](https://github.com/waku-org/pm/issues/108)

- **Deliverables**: (1)
- **Tracking issue**: https://github.com/waku-org/pm/issues/108

Provide a developer-ready API for a user to generate their own credentials and insert them.

Ref: (A) https://github.com/waku-org/pm/issues/102

### Project Pays RLN Memberships for Users

- **Deliverables**: (1)

Provide a developer-ready API and software to enable developers to fund membership for users.
Some concession regarding the privacy of the developer/project infra may be acceptable (e.g. project hosts a REST API to
exchange private commitment).

Ref: (B) https://github.com/waku-org/pm/issues/102

### Special User Pays RLN Memberships for Other Users

- **Deliverables**: (1), (~2)

This is a continuation of [Project Pays RLN Memberships for Users](#project-pays-rln-memberships-for-users).
However, requirements are stricter to preserve the privacy of the special user.

TODO: This could be postponed to a future date, depending on appetite, acceptable properties for Status Communities
usage and properties of [Project Pays RLN Memberships for Users](#project-pays-rln-memberships-for-users) solution.

Ref: (C) https://github.com/waku-org/pm/issues/102

### RLN Credentials Security and Multiple Devices

- **Deliverables**: (1), (~2)

Define how users should handle their credentials and provide the tooling for it.
Define whether RLN credentials should be shared between application or devices.
May also scope the work to enable sharing credentials between devices, or done as separate milestone.

Note: Support needed from RLNP2P team.

### [Composing Waku Protocols to Improve Reliability](https://github.com/waku-org/pm/issues/114)

- **Deliverables**: (1), (2)

Provide recommendation in a form of a library to compose the Waku protocols to minimize message loss at a protocol level.
This is both for relay and non-relay node.
The aim is to provide opinionated libraries that use Waku in a generalized manner.
The library may not fit all use-case and can always be bypassed or forked.
Finally, the expectation is not 100% reliability but simply increased reliability for common scenarios.
Application level solution for more certitude are covered as part of [Minimum Viable Data Synchronization](#minimum-viable-data-synchronization).

This is part of the general SDK strategy and expected to be implemented in each language:
- JavaScript for Browser using js-waku
- Rust/Golang/JavaScript for Node using nwaku bindings.

### Fault-Tolerant Usage of Web3 Providers

- **Deliverables**: (1), (~2), (3)

Review the usage of Web3 Providers and provide a fault-tolerant strategy to ensure that The Waku Network cannot be DOS'd by Web3 Provider outage.
Strategies such as the software ability to fallback to alternative providers or usage of Ethereum Light Client and Portal network should be considered.

### [Waku in the Browser on Unreliable Network](https://github.com/waku-org/pm/issues/137)

- **Deliverables**: (1)

During Hackathon, venue network and Internet access can be limited or unreliable.
Hackers mostly build web apps during hackathons, using js-waku in the browser.

A strategy needs to be defined on how to improve js-waku reliability in such context.
The deliverable can be a mix of solutions:
- Document how to easily run a nwaku node locally and have js-waku connect to it
- Understand and document how to run nwaku node in the venue's LAN and define how to easily get js-waku to connect to it

### [Waku Relay and Discv5 in a Hostile, Restricted or Subpar Online Network](https://github.com/waku-org/pm/issues/123)

- **Deliverables**: (1), (3)

Proceed with a multi-client analysis of Waku Relay's performance in a somewhat online hostile or subpar network and the ability for a relay node to remain connected when said network:
- prevent incoming connections
- Usage of proxy or VPN to access Internet
- Mix of WAN/LAN configuration.
- Usage of IPV6

Note: Bluetooth, network mesh and internet outage are not in the scope of this milestone. 

### FQDN-less Browser Connections

- **Deliverables**: (1), (3)

Enable node operators to serve js-waku browser clients without acquiring a domain name.

Note: WebRTC Direct and webtransport support needed in nim-libp2p and js-libp2p.

### Relay in The Browser

- **Deliverables**: (3)

Understand and progress on the viability of using Waku Relay in the browser.

Note: Support from js-libp2p maintainer needed.

### [Waku React Native](https://github.com/waku-org/pm/issues/124)

- **Deliverables**: (1)

Provide a functioning React Native library on both Android and iOS.
Likely using js-waku to enable multi-platform development (browser, iOS, Android).

### [JSON RPC Deprecation](https://github.com/waku-org/pm/issues/125)

- **Deliverables**: (1)

Deprecate nwaku and go-waku JSON RPC API and replace its usage with REST API across the repos (tests).

### General Status Support

- **Deliverables**: (2)

Prioritize Status requirements, bugs or issues.

### Developer Experience Feedback

- **Deliverables**: (1)

Expected to receive and action feedback from the usage of Waku libraries.
Feedback may be consolidated in a milestone.

### Waku Node on Raspberry Pi and Dappnode

Maintain nwaku node packages/images for Raspberry Pi and Dappnode.

Note: intent is to have the heavy work done via grant/bounties.

### [Operator Feature Requests](https://github.com/waku-org/pm/issues/152)

- **Deliverables**: (2)

Not a milestone per se.
Review and potentially implement operator request feature requests.
Requests may come from Status Community operators.

### Ad hoc Network Formation

- **Deliverables**: (1), (3)

Design and implement a protocol that uses TWN to negotiate the creation of an alternative small network that would enable lower-latency or higher bandwidth transfer.

### Future Milestones

- Serve only Content Topic Specific messages (filter, light push)
- Merge js-waku and NodeJS-nwaku APIs to enable usage of single SDK for JavaScript on all environments.
- Review DB choices for embedded, and datacenter node.
- All Waku protocols on bindings: it would be a large scope to have all protocols available in bindings so the bindings scope will be limited until value is demonstrated.

## Chat SDK Milestones

### [Static Sharding Integration in Status](https://github.com/waku-org/pm/issues/126)

- **Deliverables**: (2)

Complete static sharding integration in Status app and provide support for any issue encountered.

### Status Community Scaling

- **Deliverables**: (2)

See https://github.com/vacp2p/research/issues/177

### Use of nwaku in status-go

- **Deliverables**: (~2)

Identify, plan and start the execution of replacing go-waku with nwaku in status-go. 
Output for 2024 is a feasibility study is done, action plan is drafted and work has started.

The action plan need to take in account the intent to provide Status chat protocol as libraries decoupled from status-go.
Yet, full dependency on said libraries should not be blocking.

### Chat SDK PoC 1

- **Deliverables**: (1)

Provide and consume JS library that enable a project to use Waku for chat purposes over TWN.
Exact scope to be defined later. Likely either existing Status Chat 1:1 protocol or [Ethereum Address to Secure Channel](#ethereum-address-to-secure-channel).

This library usage should be demonstrated in a web app a la wakuplay as part of dogfooding effort.

### Extract 1 Status protocol from status-go

- **Deliverables**: (1)

This may or may not be the same item as [Chat SDK PoC 1](#chat-sdk-poc-1) as the consideration to be made are different
(market potential vs engineering feasibility within status-go context).

This needs to be done with [use of nwaku in status-go](#use-of-nwaku-in-status-go) in mind with a bigger picture of status-go
future architecture in mind.

### [Minimum Viable Data Synchronization](https://github.com/waku-org/pm/issues/128)

- **Deliverables**: (1)

Provide a Minimum Viable Data Synchronization protocol that developer can use to ensure the delivery of messages in their protocol.
Note the [protocol](https://rfc.vac.dev/spec/2/) and a [Golang library](https://github.com/vacp2p/mvds) already exist.
The aim is to review and improve the protocol and library using Status feedback, implement the protocol for the browser and provide documentation.

### [Ethereum Address to Secure Channel](https://github.com/waku-org/pm/issues/129)

- **Deliverables**: (1)

Working MVP of https://rfc.vac.dev/spec/70/.

### Future Milestones

- Private group chat SDK
- Wakuplay usage to dogfood private group chat
- Support of Waku Objects and make it consumable

## Other SDK Milestones

### External Wallet Authentication and Transaction for Webapp

- **Deliverables**: (1)

Enable a web app to use Waku to request wallet signature for authentication and transaction purposes.

## Vac work Required

**Ownership note**: these items are owned by Vac (R/A) and supported by Waku Research (C/I)

1. Continue DST simulations: simulation of Waku network of 10K users, RLN simulations, etc. (DST)
2. Continue QA work: improve test coverage from a RFC and Status usage angle, including interoperability test run
   between nwaku and go-waku, and once done, js-waku and nwaku. Considerations should be made to also include status-go (DST).
3. Simulate or model status-go behaviour based on the result of Waku large scale simulations. (DST)
4. Secure RLN credentials: for example in [CryptKeeper](https://github.com/CryptKeeperZK) (ACZ)
5. Support in improving RLN usage on resource-restricted devices (ACZ)
6. Secure way of delegating acquisition of memberships as described in [RLN Design Patterns](https://github.com/waku-org/pm/issues/102) (ACZ)
7. Fee structure for RLN memberships: come up with a comprehensive strategy for RLN memberships, perhaps following 
   the [NFT-like approach](https://forum.vac.dev/t/ens-like-nfts-for-rln/243). Strategy should consider cost structures
   like Harberger tax, dev/node compensation and project sustainability, security, etc (ACZ, Tokenomics, Smart Contract)
8. RLN contract audited, reviewed and deployed to mainnet (ACZ, Smart Contract)
9. Investigate feasibility/risks for RLN on L2, recommend a specific L2 if any (ACZ, Tokenomics, Smart Contract)
10. Risk/attack analysis for RLN. How do we recover after an attack? (ACZ, Tokenomics)
11. Deliver WebRTC Direct support in nim-libp2p (P2P)
12. Deliver WebTransport support in nim-libp2p (P2P)
13. Deliver a cryptographic protocol to enable setting up a secure channel for 1:1 and private group chat purposes from 
    an Ethereum address (ACZ).
14. Support in terms of cryptographic security, especially in regards of extending the Waku noise protocol if such a
    need arises from Waku adoption (ACZ).

