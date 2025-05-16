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

See [Waku Methodology](https://www.notion.so/Waku-Mission-and-Methodology-1a58f96fb65c80b9b789c1bbb9e99915) (draft) for more.

## Team Structure

The Waku team is current organized in the following subteams:

- Core Research
- nwaku
- js-waku
- Chat/App Dev
- Chat/App Research
- Business Dev


## Terminology and Scope

## FURPS

[FURPS](https://en.wikipedia.org/wiki/FURPS) are used to define software behaviour and property.
They are defined as:
- F: Functionality
- U: Usability
- R: Reliability
- P: Performance
- S: Supportability

Moreover: 

- A *set of FURPS* define the behaviour of a specific protocol implementation or feature.
- Individual FURPS (e.g a specific `F`unctionality statement) should be owned by one and only one Waku subteam.
- "a FURPS" refers to an individual FURPS statement (e.g. "S1. available in libwaku").
- For every `P` (Performance) there must be a Grafana panel (pointed to fleet), and a **Vac-DST** simulation to *sign-off* the `P` (search for “**Vac-DST**”).
- For every `R` (Reliability) there should be a test suite by Vac-QA that sign-off the `R` in unreliable network environment (search for “**Vac-QA**”);  and potentially a Grafana panel (pointed to fleet), and a Vac-DST simulation (if relevant).

## Feature

A feature is a specific domain of Waku software behaviour.
It can be a protocol, or a set of closely-related protocols.
It has one related set of FURPS.

For example, "End-to-end reliability" is a feature that refers to the SDS protocol.

## Milestone

A *Milestone* define a completion date and effort estimate for a collection of FURPS within or across given features.
Milestones are set for the whole Waku team and may involve the effort of one or several Waku subteams.
Dependencies on other groups to achieve a milestone should be minimalized.

## Deliverable

When the **work** is not related to software behaviour (e.g. a contributor guide, some BD activities),
then a *deliverable* is used to define the expected output.

Deliverables are an alternative to FURPS statements.

## Task

A *task* is a piece of work necessary to deliver a FURPS statement.
A task may be defined as a checkbox, or a GitHub issue.
It is up to a subteam to decide how they organize their tasks (e.g. whether to use epics, issues per task, etc).

### Rules

Here are some rules to ensure the efficacy of our process.
What is not explicitly defined is left to the subteam's choice.

A _Milestone_:
- MUST have a GitHub Milestone in https://github.com/waku-org/pm repo, to which relevant _FURPS_ statements or _Deliverables_ are added.
- MUST have an *estimated date of completion*
- MUST have an effort estimate, stating how many CCs are needed to work on this for a given half-year (e.g. one research, half an engineer)

A _Feature_:
- MUST have corresponding label defined in https://github.com/waku-org/pm repo with format `F: <feature name>`

A _FURPS_ (or FURPS statement):
- MUST HAVE a GitHub issue in https://github.com/waku-org/pm repo
  - which MUST be included in its parent _Milestone_.
  - which MUST have a feature label
- MUST have an easy way to find the related Pull Requests
 
A _Deliverable_:
- MUST be defined as an issue in the https://github.com/waku-org/pm repo.
- MUST be included in its parent _Milestone_.
- MUST have an _Output_ section in the description detailing the result of work of the Deliverable.

Finally, for _Tasks_ that do not belong to a _FURPS_  or _Deliverable_:
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
| Create FURPS and Deliverables issues in pm repo           | Team Leads      | Program Manager  |
| Create issues, PR (tasks) and link them to **FURPS**      | Team Member     | Team Lead        |
| Close FURPS and Deliverables                              | Waku Lead       | Program Manager  |
| Handover to Vac-QA, Vac-DST                               | Team Lead       | Vac PoCs         |
| Proceed with Dogfooding                                   | Team Lead       | Waku Lead        |

Waku Lead: @fryorcraken
Program Manager: @chair28980
Team Lead: @plopezlpz @Ivansete-status @jm-clius @weboko @jazzz
VAC PoC: @jm-clius, @stubbsta for Vac-DST
