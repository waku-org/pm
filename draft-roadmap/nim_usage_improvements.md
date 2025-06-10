# Upgrade Nim Usage

**Estimated date of completion**: {Enter date}

**Resources Required for 2025H2**:
- {roles and % application to it}
- {external services consumed (Vac/IFT)}
- {infrastructure}

Improve usage of Nim related tooling and design patterns by proceedings with PoCs to discover potential gains and caveats.
This includes adoption of Nimble, dogfooding VSCode plugin and iteration on C-Binding methodology.

## Strategic Objective

TODO: Clarify with Leonard

## FURPS

TODO

## Risks

| Risk                | (Accept, Own, Mitigation)                                                                                                                                                                                           |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Maturity of tooling | This milestone focusing on trying out fresh Nim tooling, hence it may not be possible to output a PoC, but instead raising a series of upstream issues.                                                             |
| Actual value/impact | The direct value on dev ex is not always clear, especially for Nimble. There is hope on bette contributor experience, but the end impact may mostly be on improving Nim tooling by providing constructive feedback. |

## Deliverables

### Migrate nwaku to Nimble PoC

Note: maybe taken over by Vac-Nim

**Owner**: nwaku

**Feature**: TODO

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Dogfood VSCode Plugin and Nimsuggest

**Owner**: nwaku

**No FURPS**

**Output**:
- [ ] Test nimsuggest in the nwaku codebase
- [ ] Create reproducible setup for crashes and poor performance, open upstream issues.
- [ ] Optional: provide a plan to make nwaku better compatible with nimsuggest (eg. no git submodule, less macros, etc)


### Use Protobuf to transfer data from Wrapper to nwaku library PoC

**Owner**: nwaku

**Feature**: TODO

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)