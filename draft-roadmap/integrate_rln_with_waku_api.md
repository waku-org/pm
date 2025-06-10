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

## FURPS

TODO

## Risks

| Risk                                                  | (Accept, Own, Mitigation)                                                                                                                                                                                                                               |
|-------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Not all required improvements are yet identified      | Dogfooding of the H1 delivery will enable identification of needed improvements, meaning this milestone may change in term of scope and schedule.                                                                                                       |
| Dependencies on Nim Web3 library                      | Previous upgrade of nim web3 libraries have lead to various issues. The dependencies of said library is increasing, meaning potential delay in development.                                                                                             |
| Uncertainty regarding zerokit and wasm in the browser | UX-related property are yet to be explored with the new RLN smart contract. WASM loading and execution may have considerable impact on UX. Collaboration with Vac/ACZ will be required to adapt zerokit for the browser.                                |
| Smart Contract Changes & Expertise                    | We expect functional extension of RLN smart contract to potentialy store multiple roots, and maybe other improvement depending on dogfooding. The Solidity knowledge in the team is limited/non-existent so we would need to rely on Vac-SC or upskill. |
| API Refactoring                                       | Extracting RLN as a validation plugin may ensue some API refactoring that may take longer than initially estimated. A conservative estimate will be done.                                                                                               |
| FFI to FFI interaction                                | The intent will be to have RLN and Waku SDK as 2 separate libraries that can be initialized in any language (e.g Golang). The nim to nim via FFI may raise unforeseen issues .                                                                          | 

## Deliverables 

### Implement RLN membership management in nwaku library

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Implement RLN Onchain Tree Proof generation and verification in the Browser 

**Owner**: js-waku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Extract RLN as a plug-in library from nwaku 

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Deploy RLN Contracts to Status L2 testnet

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Improve RLN UX by reducing Web3 RPC calls

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