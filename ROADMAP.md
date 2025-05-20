Roadmap and milestones can be found on the [Logos roadmap](https://roadmap.logos.co/waku/).

## Draft Milestones

Testing out new format, final roadmap to be pushed in Logos roadmap.

### Peer-To-Peer Reliability

Last remains of *Direct Message Reliability* milestone.

Once delivered, the the reliability of the Waku protocols will be maximised when used with decentralised light push and filter service nodes;
in mostly offline or frequently disconnected environments (mobile, laptop).

This may include some bandwidth overhead that can later be optimized when rolling out enhanced end-to-end reliability strategies.
This includes a high reliance on centralized store nodes.

User experience is catered for, in terms of delay of message retrieval and retention,
which is why store performance is also review and maximized for the current circumstances.
Limited effort will be spent on store performance as its relevance is expected to reduce mid-long term.

**Deliverables**:

#### Define and Implement Light Push Error codes in nwaku.

**Owner**: nwaku

**Feature**: Light Push

**FURPS**:
- F4: Supports comprehensive error codes for various failure scenarios.
- U4: Provides descriptive error messages in responses.
- R3: Status codes indicate the best recovery method (retry, discard service node or irrecoverable failure).
- R4: 80% message transmission success rate on live Status network (service node from both Status Desktop and fleet Waku instances)

For S1: nwaku as service node
Includes spec delivery

#### Implement Light Push Error codes in The Browser

**Owner**: js-waku

**Feature**: Light Push

**FURPS**:
- F4: Supports comprehensive error codes for various failure scenarios.
- U4: Provides descriptive error messages in responses.
- R3: Status codes indicate the best recovery method (retry, discard service node or irrecoverable failure).

For S2: js-waku as edge node
Spec delivery not included.

#### PostgreSQL Optimisation Phase 1

**Owner**: nwaku

**Feature**: Store

**FURPS**:
- F6: Industry practices are applied to PostgreSQL setup to reach appropriate performance
- P5:️ Hash query of less than 10 hashes are served under 400ms; for a database less than 250 GB size and average message size under 500KiB **(Vac-DST)**.
- P6:️ Time range queries of less than 24 hours, with less than 10 content topics, are served under 400 ms; for a database less than 250 GB size and average message size under 500KiB **(Vac-DST)**.

For S1: nwaku support as service node.

#### P2P Reliability Implementation in the Browser

TBD