# Introduce Mixnet For Message Sending

**Estimated date of completion**: TBD(As it requires further study and analysis to determine estimate of new changes)

**Resources Required for 2025H2**:

- 1 core research engineer for 3 months
- TBD (Would depend on who owns js implementation)

A PoC implementation to improve anonymity in Waku message publishing by mixing Waku Lightpush requests and responses.

## Strategic Objective

Logos Vision: Core Values Alignment

## FURPS

See deliverables.

## Risks

| Risk                                    | (Accept, Own, Mitigation)                                          |
| --------------------------------------- | ------------------------------------------------------------------ |
| Dependency on mix library               | Strong collaboration, integrate early, get involved behind the API |
| Impact on latency and other UX elements | Run simulations and studies to understand impact                   |
| Unknowns on implementing js-mix         | Further study and understanding of js-libp2p internals             |

## Deliverables

### [Integrate libp2p mix into lightpush](https://github.com/waku-org/nwaku/issues/3280)

**Owner**: core research

**Feature**: [Mix](/FURPS/core/mix.md)

**FURPS**:

- F1. Relay nodes can mount mixnet protocol, acting as sender, intermediary or exit nodes.
- F2. Nodes can discover other nodes that support mix using available peer discovery mechanisms
- F3. Client nodes can send light push requests over the mixnet before delivery to a service node.
- F4. Client nodes can receive a response to a light push request over the mixnet.

- S1. `wakunode2` for intermediary and exit nodes.
- S2. nwaku CLI for sender nodes.

**Checklist**:

- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### [Implement and integrate libp2p mix in js-waku for light push](https://github.com/waku-org/js-waku/issues/2634)

**Owner**: TBD

**Feature**: [Mix](/FURPS/core/mix.md)

**FURPS**:


- P1. Payload (store query, light push query) are limited to 4kB

- S3. Browser-based apps as sender nodes; light push only.

**Checklist**:

- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)
