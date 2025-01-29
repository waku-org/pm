# Work Tracking and Project Management Process

## Motivation and Goal

Implement the following attribute when delivering:

1. Clear tracking of work across the teams so that when we says that a milestone is delivered, then:
   - it is usable by all types of users (operators, web devs, system devs).
   - It is documented (docs, dev rel)
   - It is of high quality (QA, Dogfooding)
2. Items (Milestones, Deliverables, Tasks) can easily be closed and marked as complete thanks to:
    - Minimal external dependencies
    - Minimal intra-team dependency
    - Finite, well-define scope.
3. Each milestone and the effort needed to achieve it has a clear value thanks to a well-defined, value-driven, and minimal scope.

## Terminology and Scope

| Name         | Number of             | Timeframe                                      | Team Scope                                      | Owner                  | Description                                           |
|--------------|-----------------------|------------------------------------------------|-------------------------------------------------|------------------------|-------------------------------------------------------|
| Milestone    | ?                     | Pencilled for the year, planned for 2 quarters | Most subteams                                   | Waku Lead              | A, or cohesive set of, feature(s).                    |
| Deliverable         | Several per milestone | Set for a milestone                            | Subteam leads | Waku Lead | Deliverable may be the result of the work of one, some or all Waku subteams.                   |
| Task         | Several per Deliverable         | Set monthly-ish, delivered weekly***              | One subteam or individual                       | Team Member            | May be one or several pieces of work, client specific. |

## Milestone Definition

A *Milestone*:

1. **Provides a tangible user benefit:** The milestone should aim to provide a distinct benefit or feature to the user, whether they are end users, operators, or developers. In some cases, a milestone may be a bundle of small features. The bundle of features should be cohesive and the benefit to the users should be easy to summarize. Most likely, a bundled milestone will be scoped to a given track.
2. **Minimal Scope:** The milestone should be trimmed to a minimal scope, encompassing only what is *just enough* to assess the potential impact of these features on the project's metrics (e.g. number of users, revenue). This means descoping any advanced features and aiming for a MVP-level delivery.
3. **Transversal:** While the vertical scope of a milestone should be minimal, the delivery should be complete in terms of research, engineering, QA, documentation and dev rel assets so that the feature can be pushed to users once the milestone is marked as complete. Feedback loops should be as small as possible to ensure the value of a milestone is measured in a timely manner.
4. **Attached Estimate:** An estimate should be associated with the milestone to facilitate the measurement of potential ROI. Additionally, tracking the estimate versus the actual progress is crucial for identifying any deviation and making informed decisions (e.g., deciding whether to continue if we learn the estimate is likely to be overrun).

## Workflow

A *Milestone* is divided into *Deliverables*. A *Deliverable* is divided into *Tasks* that are assigned to a given subteam.

### Accountability

For development teams, it is expected that design/break down is done by the *Deliverable* and/or *Task* owner.
But actual work can be picked up by other team members.
Task owner must:

- Understand the change and its implications,
- Liaise with researcher for any doubt or questions or design issues related to specific client/use case,
- Create issues (_Tasks_) to break down work in client repo, include an _acceptance criteria_ in each issue to ensure that the objective/end goal/behaviour is clearly described.

It is likely that the task owner will do the core change or first change for a given task.
However, subsequent/other changes may be picked up in parallel or sequentially by other team members.

Hence:
- dependencies must be clearly stated in _Task_ issue description
- Team members must assign _Task_ issues to themselves when work starts
- Team members must update issues to track progress

The program manager should ensure that Deliverables are getting the right assignee in a timely fashion.
For example, when research work starts for a given milestone, Deliverable owners from development team should be assigned, so they know to participate in discussions.

Program manager should also ensure that issues are being created in a timely fashion, and is encouraged to use client PM call as a forum to check deliverables to be assigned, for example when a given deliverable is near completion.

### Handovers

The following handovers are defined:

| Handover                      | Expectations when handing over                                                                           | Expectations when accepting handover                                                                  |
|-------------------------------|----------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| Research to development teams | - RFC PR is merged <br /> - PoC PR is merged                                                             | - RFC content and PoC are reviewed <br /> - Own code and functionality <br /> - Own minor RFC changes |  
| Development teams to QA       | - Happy path and selected error path tests exist <br /> - APIs are implemented to enable interop testing | - Review RFC <br /> - Review existing tests                                                           |

The group or person handing over is expected to initiate a sync (meeting) or async (chat or GitHub) discussion to go through the output and overview.

Once the handover is accepted, the given deliverable can be closed.

### GitHub Usage

A _Milestone_:
- MUST have a GitHub Milestone in https://github.com/waku-org/pm repo, to which relevant _Deliverables_ are added.
- The GitHub milestone MUST be used to track progress.

A _Deliverable_:
- MUST be defined as an issue in the https://github.com/waku-org/pm repo.
- MUST be included in its parent _Milestone_.
- MUST have an _Output_ section in the description detailing the result of work of the Deliverable.
- MUST have a `Planned Start` and `Due Date` set

A _Task_:
- MUST be tracked as a todo item in a GitHub Issue (_Deliverable_)
- MUST have an _acceptance criteria_ and/or a list of _tasks_ (that can be other GH issues).

Finally, for _Tasks_ that do not belong to a _Deliverable_:
- MUST qualify as
  - `Bugs` - bugs reported by users or discovered internally.
  - `Tests` - maintaining and fixing broken tests, if a test must be fixed as a result from a change from a *Deliverable* the work should be tracked and group with that *Deliverable*.
  - `Releases` - work related to releasing version upgrades.

Which means, in terms of _navigation_:
- Work for a Milestone is described in the [Roadmap](https://roadmap.logos.co/waku/waku-milestones) and tracked in the GitHub milestone in the pm repo.
- In the GitHub milestone, we have a list of _Deliverables_ to be achieved, the _Deliverables_ are being closed as the work is done and handed over.

### Responsibilities

| Task                                                        | Responsible     | Accountable     |
| ----------------------------------------------------------- | --------------- | --------------- |
| Set Milestones and Deliverables in master document          | Waku Lead       | Insights       |
| Create GitHub milestones and deliverables issues in pm repo | Team Leads | Waku Lead       |
| Create issues, PR (tasks) and link them to **deliverables**             | Team Member     | Team Lead       |
| Close deliverable                                           | Waku Lead       | Program Manager |
| Handover to Vac-QA, Vac-DST                                 | Team Lead       | Vac PoC     |
| Proceed with Dogfooding                                     | Team Lead       | Waku Lead       |

Responsible: who does the work
Accountable:  delegates and reviews

Waku Lead: @fryorcraken
Program Manager: @chair28980
Team Lead: @plopezlpz @Ivansete-status @jm-clius @weboko
VAC PoC: @jm-clius

## FURPS

Fore each *milestone*, FURPS headlines are defined by the Waku Lead.

[FURPS](https://www.marcinziemek.com/blog/content/articles/8/article_en.html) are defined as:
- F: Functionality
- U: Usability
- R: Reliability
- P: Performance
- S: Supportability

For each (R) and (P) headline, a grafana dashboard should be produced as output for the given *milestone*.