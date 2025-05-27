Roadmap and milestones can be found on the [Logos roadmap](https://roadmap.logos.co/waku/).

## Draft Milestones

Testing out new format, once approved:

- Milestones are moved to Logos roadmap
- Deliverables are moved to GitHub issues
- Waku FURPS remains in [FURPS](/FURPS/README.md)

- [Define and Implement Peer-To-Peer Reliability Strategies](./define_p2p_reliability.md)
- [Introduce E2E Reliability in Status Communities](./introduce_e2e_reliability_in_status.md)
- Rendezvous TODO? (may be done)
- [Deploy RLN onchain tree on L2 testnet](TODO)
- [Integrate nwaku in Status Desktop, relay mode only](TODO)

#### P2P Reliability Implementation in the Browser

TODO: It's actually done

**Owner**: js-waku

**Feature**: [P2P Reliability](/FURPS/application/p2p_reliability.md)

**FURPS**:
- F1. Improves probability of message propagation through redundant publishing and receiving.
- F2. Enables detection and remedy of message losses between peers using Store or Filter based reliability strategies.
- F3. Enhances Lightpush reliability through service node pooling, redundant publishing, and failure detection.
- F4. Improves Filter reliability through redundant subscriptions and subscription health monitoring.
- U1. Provides feedback on message delivery status leveraging store protocol.
- U2. Automatically handles reconnection and retransmission when failures are detected.

For
- S1. Within browser environments (edge node mode)

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)