# Introduce Mixnet For Message Sending

**Estimated date of completion**: 30 Sep 2025

**Resources Required for 2025H2**:
- 1 core research engineer for 3 months

A PoC implementation to improve anonymity in Waku message publishing by mixing Waku Lightpush requests and responses.

**FURPS** (see deliverables)

**GitHub Milestone and deliverables**:

## [Integrate libp2p mix into lightpush](https://github.com/waku-org/nwaku/issues/3280)

**Owner**: core research

**Feature**: [Mix](/FURPS/core/mix.md)

**FURPS**:
- F1. Relay nodes can mount mixnet protocol, acting as entry, exit or mixnet nodes.
- F2. Nodes can discover mixnet relay and exit nodes using available peer discovery mechanisms.
- F3. Client nodes can send light push requests over the mixnet before delivery to a service node.
- F4. Client nodes can receive a response to a light push request over the mixnet.


**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)
