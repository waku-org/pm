# Improve DevEx: API, TWN, Metrics, Docs

**Estimated date of completion**: {Enter date}

**Resources Required for 2025H2**:
- 1 js-waku engineer TODO
- {external services consumed (Vac/IFT)}
- {infrastructure}

Proceed with a number of improvements to the developer experience on Waku, for both internal and external purposes.
This includes:

- improving The Waku Network reliability for Logos apps and other web apps
- simplifying the Waku API
- measuring Waku usage across all integrations
- review and setting strategy for Waku documentation
- Testing quic as new transport

**deliverables**:

## [Global Network Metrics](https://github.com/waku-org/pm/issues/295)

**Owner**: App/Chat Dev

**Feature**: [Network Metrics Tracker](/FURPS/application/network_metrics_tracker.md)

**FURPS**:
- all

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [Scalable Data Sync in Browser](https://github.com/waku-org/pm/issues/280)

**Owner**: js-waku

**Feature**: [SDS](/FURPS/application/sds.md)

**FURPS**:
- all

For S2. For Web apps as a developer library.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [Improved Browser Bootstrap](https://github.com/waku-org/pm/issues/290)

**Owner**: js-waku

**Feature**: TODO see https://github.com/waku-org/pm/pull/308

**FURPS**: TODO

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [Waku Sync](https://github.com/waku-org/pm/issues/132)

**Owner**: core research

**Feature**: [Store Sync](/FURPS/core/store_sync.md)

**FURPS**: all

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

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
- F6. Previously discovered peers are persisted across restarted, and potentially used for future connections.
- U1. When setting up a Waku node, no need to specify what protocols to mount, only an operational mode (edge or relay).
- U2. Disconnection detection and recovery, and other peer management matters are automatically handled.
- U3. Developers do not need to specify the protocols used to send and receive messages; it is deduced from the mode of operation.
- U4. Developers pass and receive data to the API in types native to the wrapping language.
- U5. By default, auto-sharding is applied, meaning developers do not need to be concerned by sharding; pubsub topics are never exposed.
- U6. Developers only need to handle errors in cases of irretrievable failure requiring end-user action. Internal errors are not bubbled up if they can be recovered internally.
- R1. Sends a message using peer-to-peer reliability (service node redundancy, optional store confirmation)
- R2. Receives messages using peer-to-peer reliability (service node redundancy, periodic store query, periodic filter ping)

For S3. Browser; distribution via npmjs.com.

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
- F6. Previously discovered peers are persisted across restarted, and potentially used for future connections.
- U1. When setting up a Waku node, no need to specify what protocols to mount, only an operational mode (edge or relay).
- U2. Disconnection detection and recovery, and other peer management matters are automatically handled.
- U3. Developers do not need to specify the protocols used to send and receive messages; it is deduced from the mode of operation.
- U4. Developers pass and receive data to the API in types native to the wrapping language.
- U5. By default, auto-sharding is applied, meaning developers do not need to be concerned by sharding; pubsub topics are never exposed.
- U6. Developers only need to handle errors in cases of irretrievable failure requiring end-user action. Internal errors are not bubbled up if they can be recovered internally.
- R1. Sends a message using peer-to-peer reliability (service node redundancy, optional store confirmation)
- R2. Receives messages using peer-to-peer reliability (service node redundancy, periodic store query, periodic filter ping)

For:
- S1. Nim library; import via git path.
- S2. Golang library; available on pkg.go.dev.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Review Documentation and Define Guidelines

**Owner**: core research

(No FURPS)

- [ ] Review the current developer documentation
- [ ] And contributor doc
- [ ] Define a guideline for Waku teams to follow when contributing to documentation
- [ ] Setup an initial structure

## Trial QUIC

**Owner**: nwaku

**Feature**: [nwaku](/FURPS/application/nwaku.md)

**FURPS**:
- S4. QUIC transport is supported for peer-to-peer message routing connections.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Optimise Browser Bootstrapping

**Owner**: js-waku

**Feature**: [js-waku](/FURPS/application/js-waku.md)

**FURPS**:

- R1. From an operating state, a node can resume transmitting messages within 1 second after disconnection; in a network with 1 bootstrap node, 100 service nodes and 500 browser nodes (**Vac-DST**)
- P1. From a cold start, a node can start transmitting messages within 5 seconds; in a network with 1 bootstrap node, 100 service nodes and 500 browser nodes (**Vac-DST**)

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)
