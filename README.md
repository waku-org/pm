# Waku Project Management

Tracks/coordinate effort/tasks that targets Waku as a product across implementations (production readiness, scalability, etc).

## Teams

The Waku Team is currently split in the following subteams:

- Waku Research
- Waku Development (nwaku, js-waku, go-waku)
- Waku Eco Dev (DevRel, Docs)

## Work Tracking and Reporting Guidelines

### Requirements

The current reporting requirements are 2 folds:

#### 1. Weekly Reporting

Weekly reporting on work progress by milestones.

#### 2. Monthly Reporting

Monthly reporting is now handled by the Logos insight team.

### Terminology

| Name            | Number of                               | Timeframe                              | Team Scope                                   | Owner                       | Description                                                                 |
|-----------------|-----------------------------------------|----------------------------------------|----------------------------------------------|-----------------------------|-----------------------------------------------------------------------------|
| (Key) Milestone | 1-3 per year                            | Set yearly-ish/as needed               | Most subteams                                | Waku Lead                   | Key achievements for the Waku project, historical milestones.               |
| Epic            | Several per milestone                   | Set for a milestone, delivered monthly | Several subteams or external team (e.g. DST) | Team Members                | Chunk of a _Milestone_ across all clients.                                  |
| Task            | Many per Epic                           | Set monthly-ish, delivered weekly      | One subteam or individual                    | Team Member                 | May be one or several piece of work, client specific.                       |  

### Epic Owner Responsibilities

Each epic should have an owner per affected subteam (research, js-waku, go-waku, nwaku).

The epic owner is responsible for breaking down the work in smaller issues in the related repo.

For research team, it is expected that most of the research work is done by the epic owner, which includes:
- Capturing problem statement
- Designing protocol/solution
- Implementing PoC in reference implementation
- Running tests/simulations to confirm behaviour (to be offloaded to test engineer once hired)

For development teams, it is expected that design/break down is done by epic owner.
But actual workcan be picked up by other team member.
Epic owner must:

- Understand the change and its implications,
- Liaise with researcher for any doubt or questions or design issues related to specific client/use case,
- Create issues (_Tasks_) to break down work in client repo, include an _acceptance criteria_ in each issue to ensure that the objective/end goal/behaviour is clearly described.

It is likely that the epic owner will do the core change or first change for a given epic.
However, subsequent/other changes may be picked up in parallel or sequentially by other team members.

Hence:
- dependencies must be clearly stated in _Task_ issue description
- Team members must assign _Task_ issues to themselves when work starts
- Team member must update issues to track progress

The program manager should ensure that epics are getting the right assignee in a timely fashion.
For example, when research work starts for a given epic, epic owners from development team should be assigned, so they know to participate in discussions.
Program manager should also ensure that issues are being created in a timely fashion,
an is encouraged to use client PM call as a forum to check epics to be assigned.
For example, when PoC is near completion then breaking down the work should be started.

### GitHub Usage

A _Milestone_:
- MUST have a matching GH issue in the https://github.com/waku-org/pm repo with `milestone` label assigned.
- MUST have a GH Milestone in https://github.com/waku-org/pm repo, to which relevant _Epics_ are added.
- SHOULD have a roadmap to delivery done at planning phase, the GH milestone is then used to track progress.

An _Epic_:
- MUST have a matching GH issue in the https://github.com/waku-org/pm with `epic` label assigned.
- MUST have a label with format `E:<epic name>` created across all relevant https://github.com/waku-org/ repos (see [labels.yml](./.github/labels.yml)).
- SHOULD be added to a GH Milestone.
- SHOULD have a `Planned Start` and `Due Date` set (these are GitHub projects fields you can find in the `Projects` section of the issue view sidebar).
- MAY list _Tasks_ present in other repos.
- MUST have one assignee **per subteam**, who represent the epic owner.

A _Task_:
- MAY be tracked as a todo item in a GH Issue (_Task_ or _Epic_),
- OR MAY be tracked as a single GH issue
  - that MUST be labelled with related _Epic_ label (`E:...`),
- OR MAY be tracked as a GH Pull Request
    - that MUST be labelled with related _Epic_ label (`E:...`),
- MUST have an _acceptance criteria_ and/or a list of _tasks_ (that can be other GH issues).

Finally, for _Tasks_ that do not belong to a given _Epic_ or _Milestone_:
- MUST have either labels:
  - `bug`: This is a bug, likely reported by a user
  - `enhancement`: This is an enhancement out of the scope of the technical roadmap, likely reported by a user
    - Major enhancements should be carefully reviewed and prioritized.
  - `documentation`: Documentation improvement or correction.
  - `dependencies`: Upgrade dependencies in a timely manner to avoid time wasting when the dependency upgrade becomes critical.


Which means, in terms of _navigation_:

- Work for a Milestone is described in the related GitHub issue and tracked in the GitHub milestone.
- In the GitHub milestone, we have a list of _Epics_ to be achieved, the _Epics_ are being closed as the work is done across all clients.
- To look at remaining work for an _Epic_, one need to look at all issues/PRs (_Tasks_) with the corresponding _Epic_ label (`E:...`)

### Reporting

**Monthly**:

Handled by insight team

**Weekly**: Report progress on each **active** _Epic_ or _Task_ per sub-team.

Every Friday, all team members must add their update in the appropriate discord thread *WITH LINKS* to the GitHub **issues** (not pull requests) they own and worked on over the past week and/or plan to work on next week.

If work is done on several *Tasks* related to the same *Epic*, team members are free to link the common parent *Epic* issue.

Please include an update for the following categories:

- achieved: what was achieved this week.
- next: what will be worked on next.
- blocked: blocking items, not required if no blockers exist.

On Mondays PM compiles the updates following sign-off from sub-team Leads and publishes to https://roadmap.logos.co.

### Process Flow

```md
Submit Updates (Everyone) - Friday
         │
         ▼
Review/Signoff (Leads) - Monday
         │
         ▼
Compile (PM) - Monday
         │
         ▼
Publish (PM) - Tuesday
```

## Milestones

https://github.com/waku-org/pm/milestones
