# [Define Incentivisation for RLNaaS](https://github.com/waku-org/pm/milestone/35)

**Estimated date of completion**: 31 July 2025

**Resources Required for 2025H2**:
- 1.5 core researchers for 1 month

By the end of this milestone, we will have defined a roadmap and implemented a working proof of concept to incentivise node operators running Waku infrastructure for shared shards.

In general, Waku infrastructure consists of RLN Relay nodes both forming the decentralised routing backbone for Waku messages and providing a set of services on top of Waku that might be useful for applications.
A sustainable Waku infrastructure is necessary within Status to achieve scalability for 1:1 chats and permissionless communities.
These Status features use RLN rate-limiting on shared shards as supported by the RLN relay nodes
and require a set of decentralised services for Status Mobile and resource-restricted clients,
including RLN proofs as a service, Store, Filter and Lightpush.
This milestone encapsulates the efforts to distribute rewards for running RLN Relay nodes and getting paid for providing Waku services.
This is the first step to providing a sustainable way to scale the Status application.

**FURPS**: TODO

**deliverables**: https://github.com/waku-org/pm/milestone/35 TODO adjust deliverables with FURPS

## [Pay for RLN provision PoC](https://github.com/waku-org/pm/issues/245)

**Owner**: core research

**Feature**: [Incentivisation](/FURPS/core/incentivisation.md)

**FURPS**:
- F1. RLNaaS clients proceed to pay RLNaaS providers for attaching RLN proof to published messages.
- F2. RLNaaS clients can assess the quality of a provisioned RLNaaS and use it to build local reputation.
- F3. RLNaaS clients can use local reputation of RLNaaS providers to select what provider to use.
- U1. A consumer node can pay a service node for RLNaaS.
- U2. A consumer node can select an RLNaaS provider based on local reputation.
- R1. A consumer prefers new providers to known unreliable providers.
- R2. In a stable network, a client can find, pay and send a message via a RLNaaS provider (**Vac-QA**)
   in 90% of cases **(Vac-DST)**.
- R3. A client can assess whether an RLNaaS provider has relayed their message (**Vac-QA**)
   in 90% of cases **(Vac-DST)**.
- P1. Assuming a block time of 5 seconds,
  a user can execute an RLNaaS payment and send a message within 30 seconds (Vac-DST)

For S1. A nwaku-based CLI on a testnet, interaction with a custodial wallet is out-of-scope.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [Service incentivisation roadmap & spec](https://github.com/waku-org/pm/issues/246)

**Owner**: core research

**Output**: a roadmap document.