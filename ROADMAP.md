Roadmap and milestones can be found on the [Logos roadmap](https://roadmap.logos.co/waku/).

## Draft Milestones

Testing out new format, once approved:

- Milestones are moved to Logos roadmap
- Deliverables are moved to GitHub issues
- Waku FURPS remains in [FURPS](./FURPS.md)

### Peer-To-Peer Reliability

Last remains of *Direct Message Reliability* milestone.

Once delivered, the reliability of the Waku protocols will be maximised when used with decentralised light push and filter service nodes;
in mostly offline or frequently disconnected environments (mobile, laptop).

This may include some bandwidth overhead that can later be optimized when rolling out enhanced end-to-end reliability strategies.
This includes a high reliance on centralized store nodes.

User experience is catered for, in terms of delay of message retrieval and retention,
which is why store performance is also review and maximized for the current circumstances.
Limited effort will be spent on store performance as its relevance is expected to reduce mid-long term.

**Deliverables**:

#### Define and Implement Light Push Error codes in nwaku.

**Owner**: nwaku

**Feature**: [Light Push](./FURPS.md#light-push)

**FURPS**:
- F4. Supports comprehensive error codes for various failure scenarios.
- U4. Provides descriptive error messages in responses.
- R3. Status codes indicate the best recovery method (retry, discard service node or irrecoverable failure).
- R4. 80% message transmission success rate on live Status network (service node from both Status Desktop and fleet Waku instances)

For S1. Linux amd64 CLI as service node
Includes spec delivery

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

#### Implement Light Push Error codes in The Browser

**Owner**: js-waku

**Feature**: [Light Push](./FURPS.md#light-push)

**FURPS**:
- F4. Supports comprehensive error codes for various failure scenarios.
- U4. Provides descriptive error messages in responses.
- R3. Status codes indicate the best recovery method (retry, discard service node or irrecoverable failure).

For S2. Browser as client
Spec delivery not included.

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

#### PostgreSQL Optimisation Phase 1

**Owner**: nwaku

**Feature**: [Store](./FURPS.md#store)

**FURPS**:
- F6. Industry practices are applied to PostgreSQL setup to reach appropriate performance
- P5. Hash query of less than 10 hashes are served under 400ms; for a database less than 250 GB size and average message size under 500KiB **(Vac-DST)**.
- P6. Time range queries of less than 24 hours, with less than 10 content topics, are served under 400 ms; for a database less than 250 GB size and average message size under 500KiB **(Vac-DST)**.

For
- S1. Linux amd64 CLI as service node; and
- S2. PostgreSQL as database engine.
 
**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

#### P2P Reliability Implementation in the Browser

**Owner**: js-waku

**Feature**: [P2P Reliability](./FURPS.md#p2p-reliability)

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