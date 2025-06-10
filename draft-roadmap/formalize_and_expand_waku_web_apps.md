# Logos Web Apps

**Estimated date of completion**: 19 Dec 2025

**Resources Required for 2025H2**:
- 1.5 engineers for 6 months

Harden select Waku Web apps by extracting libraries and writing protocol specifications:

- Qaku (Q&A over Waku): harden Waku to MVP level, so it can be used for IFT Town Halls, and Logos physical events.
  - Integrate SDS and write specs. 
- Logos Operators Forum: Build a web forum PoC over Waku to serve as a basis for a decentralized Logos forum (opchan).
  - Added: Extend the Forum PoC to new FURPS, to align with Logos Movement needs.

Explore Codex x Waku integration, in Qaku and one other application.

Develop 10 Waku Web Apps PoC, and push them to the community to "teach them how to hunt" as well as inspire developers
to build over Waku.

## Strategic Objective

TODO: Clarify with Leonard

## FURPS

## Risks

| Risk                                               | (Accept, Own, Mitigation)                                      |
|----------------------------------------------------|----------------------------------------------------------------|
| Logos Core Readiness                               | Get involed early with Logos Core, tinker and provide feedback |
| Experimental application spam protection for Forum | Focus on MVP to get user feedback early                        | 
| Spec writing by non-researchers                    | Push for early specs, to enabling feedback and mentoring       |

## Deliverables

### [Forum PoC](https://github.com/waku-org/pm/issues/292) 

**Owner**: App/Chat Dev

**Feature**: [Waku Forum](/FURPS/application/forum.md)

**FURPS**:
- F1-11
- U1-10
- R1-2

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### [Codex for Message Archival PoC](https://github.com/waku-org/pm/issues/293)

TODO - Hanno is defining some FURPS and we can review.

**Owner**: {one waku subteam}

**Feature**: [{Feature Name (only 1)}]({path/to/furps/file})

**FURPS**:
- {F1. copy-paste full furps statement}

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### [Reliable Qaku & library](https://github.com/waku-org/pm/issues/287)

**Owner**: App/Chat Dev 

**Feature**: [Qaku](/FURPS/application/qaku.md)

**FURPS**: (see GitHub [issue](https://github.com/waku-org/pm/issues/292))
- F1-21
- U1-7
- R1
- P1
- S1-3

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

### Build Ten Waku Web Apps

**Owner**: App/Chat Dev

**No FURPS**

**Output**: 10 working Waku Web apps of various sort.

- The apps need to be functioning and deployed, PoC level.
- Broadcast to the community must happen (Logos/Waku Discord, Logos/Vac Forums, conference talks, Twitter, etc). 

**Checklist**:
- ~[ ] Specs: link to specs and/or API definition~
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- ~[ ] Docs: links to README.md or docs.waku.org (TBD)~
- [ ] Promote the app

### Build One Waku Logos Core App

**Owner**: App/Chat Dev

**No FURPS**

**Output**: 1 working Logos Core App.

- The app needs to be functioning, PoC level.
- Broadcast to the community must happen (Logos/Waku Discord, Logos/Vac Forums, conference talks, Twitter, etc).
- May use Waku SDK or Chat SDK.

**Checklist**:
- ~[ ] Specs: link to specs and/or API definition~
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- ~[ ] Docs: links to README.md or docs.waku.org (TBD)~
- [ ] Promote the app

### Open Forum to Web3 Users and Anons

**Owner**: App/Chat Dev

**Feature**: [Waku Forum](/FURPS/application/forum.md)

**FURPS**:
- F2. Only users owning Logos ordinal or an ENS can create a cell.
- F12. Users can identify themselves by signing with their Web3 key.
- F13. Posts, comments and cells have a relevance index, which can be used to order or hide them in the UX.
- F14. The relevance index is lowered for post and comments which are moderated, or from a moderated user.
- F15. The relevance index is increased if the author owns an ENS or Logos ordinal.
- F16. The relevance index is increased if the post or comment is upvoted by an ENS or Logos ordinal owner.
- F17. The relevance index is increased if the post has a comment from an ENS or Logos ordinal owner.
- F18. Anonymous users can upvote, comments and post.

- U11. ENS holders can choose to use an ENS for display purposes.
- U12. The relevance index is used to push most relevant posts and comments on top.


**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)