# Streamline DevEx: Mobile, Rust and Web dev

**Estimated date of completion**: {Enter date} TODO

**Resources Required for 2025H2**:
- {roles and % application to it}
- {external services consumed (Vac/IFT)}
- {infrastructure}

Complete the Waku API implementation in nwaku by implementing edge node mode (Status' Light Mode).

Streamline the Developer Experience by delivering a Rust SDK that implements the full Waku API and is available on crates.io.
As well as building an easy-to-use local dev environment from the browser, enabling developers to build web apps without
relying on external connectivity; as well as opting in and out of RLN, and include a local RLN dev environment.

Finalize the integration of nwaku in Status application by setting up nwaku-based build for Mobile platforms.

## Strategic Objective

TODO: Clarify with Leonard

## FURPS

TODO

## Risks

| Risk                    | (Accept, Own, Mitigation)                                                                                                                                                |
|-------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| nwaku performance       | Performance of nwaku in comparison to go-waku will be measured by DST during H2 and may raise issues that will become blockers for pratical usage of nwaku in Mobile.    |
| Publishing to crates.io | One of the challenge to publish libwaku on crates.io is the package size. Several strategy may be developed and tried to find a way to distribute Nim-based Rust crates. |
| Local dev harness       | Creating a local dev environment may be a challenge due to the nature of Waku and RLN, as we would need to locally coordinate bootstrap and blockchain emulation.        |

## Deliverables

### Edge Mode in Nwaku

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file}) TODO

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Nwaku in Status Mobile

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file}) TODO

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Waku Rust SDK

**Owner**: nwaku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file}) TODO

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Local RLN Dev Harness

**Owner**: ? (nwaku? core-research?) TODO

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)\

### Local Web Dev Harness

**Owner**: js-waku

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)
