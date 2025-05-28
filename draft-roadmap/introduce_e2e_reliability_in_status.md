# Introduce E2E Reliability in Status Communities

(Rename e2e reliability, but work as per scope)

To solve reliability is to solve two problems:

1. High heuristic that messages are received and sent
2. Ability to know whether messages are received or sent

Problem (1) can never be 100% reliable in a network environment. The previous milestones focused on it.
To solve (2), is to create an end-to-end protocol, sender to recipient, that enables the ability to know whether recipient(s) have received messages.

With this milestone, we design and deliver a first PoC for an end-to-end reliability protocol.
This protocol will be specified and implemented in the Status app for Status Communities chat rooms;
as well as in the browser for PoC Web Apps such as Qaku and Logos Forum.

**FURPS** (see deliverables)

**GitHub Milestone and deliverables**: https://github.com/waku-org/pm/milestone/29

## [SDS protocol in Status - basic integration](https://github.com/waku-org/pm/issues/194)

**Owner**: core research

**Feature**: [SDS](/FURPS/application/sds.md)

**FURPS**:
- F1. Ability to know that a published message has been received by at least one member of the group (and could therefore eventually be retrieved by other members).
- F2. Ability for participants to know when they have missed a message
- U1. When sending a message to a large group, the application knows whether it was received by other group members, with high probability
- U2. When being part of a large group, the application is able to know whether they are missing messages
- R1. When sending a message in a group, the publisher can ascertain the message was received by at least one recipient **(Vac-QA)**
- R2. When receiving messages in a group, the receiver can ascertain most missed messages by receiving one recent message from the group. **(Vac-QA)**
- P1. When sending a message in a group, the publisher can ensure the message was received by at least one recipient within `S` seconds **(Vac-DST)**
- P2. When receiving messages in a group, the receiver can detect 90% of missed messages within `3*S` seconds

For S1. Applied to Communities channels on Status Desktop

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## [SDS protocol in Status - basic recovery]()

**Owner**: chat app dev

**Feature**: [SDS](/FURPS/application/sds.md)

**FURPS**:
- F3. Ability to resend unacknowledged messages
- F4. Ability to retrieve missed messages using Waku store protocol
- U3. When being part of a large group, the application is able to retrieve missed messages
- P3. When receiving messages in group, the receiver can reach eventual consistency within `6*S` seconds **(Vac-DST)**

For S1. Applied to Communities channels on Status Desktop

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)
