# Improve DevEx: API, TWN, Metrics, Docs

**Estimated date of completion**: {Enter date}

**Resources Required for 2025H2**:
- {roles and % application to it}
- {external services consumed (Vac/IFT)}
- {infrastructure}

Proceed with a number of improvements to the developer experience on Waku, for both internal and external purposes.
This includes:

- improving The Waku Network reliability for Logos apps and other web apps
- simplifying the Waku API
- measuring Waku usage across all integrations
- review and setting strategy for Waku documentation


**FURPS**:

- [{Feature Name}]({path/to/furps/file}): {list of furps: F1, etc}
- [Network Metrics Tracker](/FURPS/application/network_metrics_tracker.md): all

**deliverables**:

(TODO: adjust FURPS for existing deliverables)
- [Global Network Metrics](https://github.com/waku-org/pm/issues/295)
- [Scalable Data Sync in Browser](https://github.com/waku-org/pm/issues/280)
- [Improved Browser Bootstrap](https://github.com/waku-org/pm/issues/290)
- [Waku Sync](https://github.com/waku-org/pm/issues/132)

TODO: quic PoC

## Define and Implement Light Push Error codes in nwaku

**Owner**: nwaku

**Feature**: [Light Push](/FURPS/core/light_push.md)

**FURPS**:
- F4. Supports comprehensive error codes for various failure scenarios.
- U4. Provides descriptive error messages in responses.
- R2. Status codes indicate the best recovery method (retry, discard service node or irrecoverable failure).
- R3. 80% message transmission success rate on live Status network (service node from both Status Desktop and fleet Waku instances)

For S1. Linux amd64 CLI as service node
Includes spec delivery

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Implement Light Push Error codes in The Browser

**Owner**: js-waku

**Feature**: [Light Push](/FURPS/core/light_push.md)

**FURPS**:
- F4. Supports comprehensive error codes for various failure scenarios.
- U4. Provides descriptive error messages in responses.
- R2. Status codes indicate the best recovery method (retry, discard service node or irrecoverable failure).

For S2. Browser as client
Spec delivery not included.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Introduce Waku API in the Browser

**Owner**: js-waku

**Feature**: [Waku API](/FURPS/core/waku_api.md)

**FURPS**: 
- F1. Setup, start and stop a Waku node.
- F2. Support edge node operation mode.
- F4. Does automatic peer discovery based on the node platform and operation mode.
- F5. Returns health and connectivity information using proven heuristics.
- U1. When setting up a Waku node, no need to specify what protocols to mount, only an operational mode (edge or relay).
- U2. Disconnection detection and recovery, and other peer management matters are automatically handled.
- U3. Developers do not need to specify the protocols used to send and receive messages; it is deduced from the mode of operation.
- U4. Developers pass and receive data to the API in types native to the wrapping language.
- U5. By default, auto-sharding is applied, meaning developers do not need to be concerned by sharding; pubsub topics are never exposed.
- R1. Sends a message using peer-to-peer reliability (service node redundancy, optional store confirmation)
- R2. Receives messages using peer-to-peer reliability (service node redundancy, periodic store query, periodic filter ping)

For S3. Browser

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Introduce Waku API in nwaku

**Owner**: nwaku

**Feature**: [Waku API](/FURPS/core/waku_api.md)

**FURPS**:
- F1. Setup, start and stop a Waku node.
- F3. Support relay node operation mode.
- F4. Does automatic peer discovery based on the node platform and operation mode.
- F5. Returns health and connectivity information using proven heuristics.
- U1. When setting up a Waku node, no need to specify what protocols to mount, only an operational mode (edge or relay).
- U2. Disconnection detection and recovery, and other peer management matters are automatically handled.
- U3. Developers do not need to specify the protocols used to send and receive messages; it is deduced from the mode of operation.
- U4. Developers pass and receive data to the API in types native to the wrapping language.
- U5. By default, auto-sharding is applied, meaning developers do not need to be concerned by sharding; pubsub topics are never exposed.
- R1. Sends a message using peer-to-peer reliability (service node redundancy, optional store confirmation)
- R2. Receives messages using peer-to-peer reliability (service node redundancy, periodic store query, periodic filter ping)

For:
- S1. Nim library; used by chat SDK
- S2. Golang library; used by status-go

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Review Documentation and Define Guidelines

**Owner**: {one waku subteam}

(No FURPS)

- [ ] Review the current developer documentation
- [ ] And contributor doc
- [ ] Define a guideline for Waku teams to follow when contributing to documentation
- [ ] Setup an initial structure

## Use Protobuf to transfer data from Wrapper to nwaku library PoC TBC  

**Owner**: {one waku subteam}

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## {Name of deliverable 1 - eg "improve feature X for the browser"}

**Owner**: {one waku subteam}

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)