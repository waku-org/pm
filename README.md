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

Weekly reporting by subteam of progress on milestones.

#### 2. Monthly Reporting

Monthly reporting is now handled by the Logos insight team.

### Terminology

| Name            | Number of                               | Timeframe                              | Team Scope                                   | Owner                       | Description                                                                 |
|-----------------|-----------------------------------------|----------------------------------------|----------------------------------------------|-----------------------------|-----------------------------------------------------------------------------|
| Priority Track  | 3-5                                     | Set yearly                             | Whole Team                                   | Waku Lead                   | Focus set for the year, must be aligned with Logos Collective's priorities. |
| (Key) Milestone | 1-3 per year                            | Set yearly-ish                         | Most subteams                                | Waku Lead                   | Key achievements for the Waku project, historical milestones.               |
| Epic            | Several per milestone                   | Set for a milestone, delivered monthly | Several subteams or external team (e.g. DST) | Team Member (likely a lead) | Chunk of a _Milestone_ across all clients.                                  |
| Task            | Many per Epic                           | Set monthly-ish, delivered weekly      | One subteam or individual                    | Team Member                 | May be one or several piece of work, client specific.                       |  

Owner = person responsible for the delivery and related reporting, may not be doing all the work.

### GitHub Usage

A _Milestone_:
- MUST have a matching GH issue in the https://github.com/waku-org/pm repo with `milestone` label assigned.
- MUST have a GH Milestone in https://github.com/waku-org/pm repo, to which relevant _Epics_ are added.
- SHOULD have a roadmap to delivery done at planning phase, the GH milestone is then used to track progress.

An _Epic_:
- MUST have a matching GH issue in the https://github.com/waku-org/pm with `epic` label assigned.
- MUST have a label with format `E:<epic name>` created across all relevant https://github.com/waku-org/ repos (see [labels.yml](./.github/labels.yml)).
- SHOULD be added to a GH Milestone.
- MAY list _Tasks_ present in other repos.

A _Task_:
- MAY be tracked as a todo item in a GH Issue (_Task_ or _Epic_),
- OR MAY be tracked as a single GH issue
  - that MUST be labelled with related _Epic_ label (`E:...`),
- OR MAY be tracked as a GH Pull Request
    - that MUST be labelled with related _Epic_ label (`E:...`),
- MUST have an _acceptance criteria_ and/or a list of _tasks_ (that can be other GH issues).

Which means, in terms of _navigation_:

- Work for a Milestone is described in the related GitHub issue and tracked in the GitHub milestone.
- In the GitHub milestone, we have a list of _Epics_ to be achieved, the _Epics_ are being closed as the work is done across all clients.
- To look at remaining work for an _Epic_, one need to look at all issues/PRs (_Tasks_) with the corresponding _Epic_ label (`E:...`)

### Reporting

**Monthly**:

Handled by insight team

**Weekly**: Report progress on each **active** _Epic_ or _Task_ per subteam.

Every Friday, all team members must add a comment to the GH **issues** (not pull request) they own and worked on the past week or planned to work on next week.

If work is done on several _Tasks_ related to the same _Epic_, team member is free to do their weekly update in common parent issue.

The comment must have the following MarkDown format:

```md
**Weekly Update**

- _achieved_: what was achieved this week; must remain on one line.
- _next_: what will be worked on next week; must also remain on one line.
- _blocker_: any blocking items. Do not include the line if no blocker. 
```

**Omit the lines which are not relevant.**

On Monday, project lead or responsible person for report can run the [milestone-update](https://github.com/fryorcraken/milestone-update) script to generate a report and post it in the Logos Discord.

## Work Tracking per Year

### 2023

**Priority Tracks**: https://notes.status.im/Uz9HeCwZTDSYyOq36Q54cA#a

**Milestones** (to be changed):

- `E:2023-light-protocols` https://github.com/waku-org/pm/issues/25
- `E:2023-10k-users` https://github.com/waku-org/pm/issues/12
- `E:2023-1mil-users` https://github.com/waku-org/pm/issues/31
- `E:2023-dev-rel-assets` https://github.com/waku-org/pm/issues/32
- `E:2023-peer-mgmt` https://github.com/waku-org/pm/issues/33
- `E:2023-qa` https://github.com/waku-org/pm/issues/34
- `E:2023-metrics` https://github.com/waku-org/pm/issues/35
- `E:2023-eco-growth` https://github.com/waku-org/pm/issues/36
- `E:2023-rln` https://github.com/waku-org/pm/issues/37
- `E:2023-incentivize-operators` https://github.com/waku-org/pm/issues/38
- `E:2023-many-platforms` https://github.com/waku-org/pm/issues/42
