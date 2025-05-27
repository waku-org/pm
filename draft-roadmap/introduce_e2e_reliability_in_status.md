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

**FURPS**:

- [SDS](/FURPS/application/sds.md): F1-2, U1-2, R1-2, P1-2, S1

**GitHub Milestone and deliverables**: https://github.com/waku-org/pm/milestone/29

## [End-to-end reliability protocol - Status integration](https://github.com/waku-org/pm/issues/194)

TODO:
- modify existing issue to the following template
- Potentially split this deliverable in two:
  1. initial integration in Status (this)
  2. recovery mechanisms (store query, etc) (new deliverable)

**Owner**: core research

**Feature**: [SDS](/FURPS/application/sds.md)

**FURPS**: all

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)