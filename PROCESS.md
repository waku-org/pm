# Work Tracking and Project Management Process

## Motivation and Goal

Provide a clear visibility to anyone (CCs or not) of:
  - What work is planned
  - What work is in progress
  - What work is done

Software properties are considered *delivered* when:

- it is ready-to-use
- the behaviour is documented in [specifications](https://waku.org/specs)
- the software has been used (dogfooding) by the Waku team
- documentation on how to use said properties is delivered

See [Waku Methodology](https://www.notion.so/Waku-Mission-and-Methodology-1a58f96fb65c80b9b789c1bbb9e99915) (draft) for more.

## Team Structure

The Waku team is currently organized in the following subteams:

- Core Research
- nwaku
- js-waku
- Chat/App Dev
- Chat/App Research
- Business Dev

## Documents

- [Waku FURPS](https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00)
- [Waku Milestones](https://roadmap.logos.co/waku/waku-milestones)

## Terminology and Scope

### FURPS

[FURPS](https://en.wikipedia.org/wiki/FURPS) are used to define software behaviour and property.
They are defined as:
- F: Functionality
- U: Usability
- R: Reliability
- P: Performance
- S: Supportability

Moreover: 

- A *set of FURPS* define the behaviour of a specific protocol implementation or feature.
- "a FURPS" refers to an individual FURPS statement (e.g. "S1. available in libwaku").
- For every `P` (Performance) there should be a Grafana panel (pointed to fleet), and a **Vac-DST** simulation to *sign-off* the `P` (search for “**Vac-DST**”).
  If it cannot be measured, then it cannot be a statement (in some instances, DST simulation may be enough).
- For every `R` (Reliability) there should be a test suite by Vac-QA that sign-off the `R` in unreliable network environment (search for “**Vac-QA**”);  and potentially a Grafana panel (pointed to fleet), and a Vac-DST simulation (if relevant).

### Feature

A feature is a specific domain of Waku software behaviour.
It can be a protocol, or a set of closely-related protocols.
It has one related set of FURPS.

For example, "End-to-end reliability" is a feature that refers to the SDS protocol.

### Deliverable

A deliverable is the work tackled by one subteam in regards to one FURPS set.
In other words, it tracks the delivery of specific FURP(S), for one feature, by one subteam.

For example:

> Light Push FURPS
> - F1. Light push returns itemized error code when the service node cannot forward a message.
> - S1. nwaku service node
> - S2. Browser edge node

To track the work to achieve these FURPS, two deliverables should be created: 

1. [nwaku] Support error code in light push: Implement Light Push FURPS F1, S1.
2. [js-waku] Support error code in light push: Implement Light Push FURPS F1, S2.

When the **work** is not related to software behaviour (e.g. a contributor guide, some BD activities),
then a deliverable is used to define the expected output, without referring to specific FURPS.

Deliverables are owned by one, and only one, subteam.
If a deliverable's execution depends on a group external to Waku, then it should be explicitly stated.

### Milestone

A milestone describes a specific objective we aim to achieve.
It holds the narrative of **why** we are doing this work and what is the value attached to completing the work.

A milestone usually involve effort from most of the Waku team.
The work should be organized to prioritise the delivery of complete milestones, over individual deliverables.

Milestone have estimation of effort and date of completion defined.

### Task

A *task* is a piece of work necessary to a deliverable.
A task may be defined as a checkbox, or a GitHub issue.
It is up to a subteam to decide how they organize their tasks (e.g. whether to use epics, issues per task, etc).

## Rules

Here are some rules to ensure the efficacy of our process.
What is not explicitly defined is left to the subteam's choice.

A _Milestone_:
- MUST have a GitHub Milestone in https://github.com/waku-org/pm repo, to which relevant _FURPS_ statements or _Deliverables_ are added.
- MUST have an *estimated date of completion*
- MUST have an effort estimate, stating how many CCs are needed to work on this for a given half-year (e.g. one research, half an engineer)

A _Deliverable_:
- MUST be defined as an issue in the https://github.com/waku-org/pm repo.
- MUST be included in its parent _Milestone_.
- MUST have an _Output_ section in the description detailing the result of work of the Deliverable, this may be a list of FURPS.
- If tracking FURPS, the FURPS only belong to one feature aka FURPS set.
- MUST have only one owner, assigned to the GitHub issue.
- MUST have a checklist to ensure the following items are done:
  - specs
  - code
  - dogfooding
  - docs

Finally, for _Tasks_ that do not belong to a _Deliverable_:
- MUST either qualify as (with related GitHub labels)
  - `bug` - bugs reported by users or discovered internally, SHOULD be linked back to a corresponding _FURPS_ and _Milestone_
  - `test` - maintaining and fixing broken tests, SHOULD ideally be linked back to a corresponding _FURPS_ and _Milestone_
  - `release` - work related to releasing version upgrades.
  - `dependencies` - work related to releasing version upgrades.

### Responsibilities

| Task                                                      | Does it         | Ensure it's done |
|-----------------------------------------------------------|-----------------|------------------|
| Set Milestones, FURPS and Deliverables in master document | Waku Lead       | Insights         |
| Create GitHub milestones in pm repo                       | Program Manager | Waku Lead        |
| Create Deliverables issues in pm repo                     | Team Leads      | Program Manager  |
| Create issues, PR (tasks) and link them to **FURPS**      | Team Member     | Team Lead        |
| Close Deliverables                                        | Waku Lead       | Program Manager  |
| Handover to Vac-QA, Vac-DST                               | Team Lead       | Vac PoCs         |
| Proceed with Dogfooding                                   | Team Lead       | Waku Lead        |

Waku Lead: @fryorcraken
Program Manager: @chair28980
Team Lead: @plopezlpz @Ivansete-status @jm-clius @weboko @jazzz
VAC PoC: @jm-clius, @stubbsta for Vac-DST