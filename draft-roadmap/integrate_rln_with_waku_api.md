# Integrate RLN With the Waku API

**Estimated date of completion**: {Enter date} TODO

**Resources Required for 2025H2**:
- nwaku engineer TODO
- 1 js-waku engineer for 2 months (til 30 Aug)
- core research/test engineer? TODO
- chat sdk engineer TODO
- Support from Vac/ACZ to get zerokit working in the browser.
- {infrastructure}

Deliver a native RLN library with a deliberate API to manage RLN memberships, as well as proof verification and generation.
This includes extracting RLN Relay as a relay plugin validation strategy, that can then be passed internally to nwaku node
as any other strategy.

Once delivered, usage of Chat SDK of RLN becomes possible, with clear API to instantiate nwaku library with RLN, as well
as API to manage RLN membership.

Introduce RLN proof generation and validation in the Browser. RLN API should be similar across all implementations.

Finally, migrate to Status network L2 testnet and improve UX issues discovered via dogfooding such as rate of RPC Calls.

**FURPS**:

- [{Feature Name}]({path/to/furps/file}): {list of furps: F1, etc} TODO

**deliverables**: 

## Implement RLN membership management in nwaku library

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Implement RLN Onchain Tree Proof generation and verification in the Browser 

**Owner**: js-waku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Extract RLN as a plug-in library from nwaku 

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Deploy RLN Contracts to Status L2 testnet

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Improve RLN UX by reducing Web3 RPC calls

TODO: other improvements may be flagged as we dogfood the previous RLN milestone.

**Owner**: nwaku

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