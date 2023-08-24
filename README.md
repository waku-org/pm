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

Monthly reporting is currently done in a private Google Sheet and has the following sections:
- Progress on yearly milestones (10 milestones as defined in https://notes.status.im/Uz9HeCwZTDSYyOq36Q54cA#, now marked as _Epics_).
- Key achievements/highlights of previous month
- Planned achievement for next month
- RAID: Risks, Assumptions, Issues and Dependencies
- Identified Market Opportunities

The Google Sheet will soon be replaced by a dashboard that extract data using GitHub with the ability to organise the data by epic using GitHub labels.

### Terminology

| Name            | Number of                           | Timeframe                            | Team Scope                              | Owner       | Description                                                                 |
|-----------------|-------------------------------------|--------------------------------------|-----------------------------------------|-------------|-----------------------------------------------------------------------------|
| Priority Track  | 3-5                                 | Set yearly                           | Whole Team                              | Waku Lead   | Focus set for the year, must be aligned with Logos Collective's priorities. |
| (Key) Milestone | 2-3 per _Priority Track_, total<=10 | Set yearly, delivered quarterly-ish  | Several subteams                        | Waku Lead   | Identified deliverables for each _Priority Track_.                          |
| Epic            | Some per Milestone                  | Set quarterly-ish, delivered monthly | One subteam or external team (e.g. DST) | Team Member | Steps to deliver a _Milestone_.                                             |
| Task            | Many per Epic                       | Set monthly-ish, delivered weekly    | One individual                          | Team Member | Smallest chunk of work to be delivered.                                     |  

Owner = person responsible for the delivery of the milestone and related reporting.

### GitHub Usage

For each:

- _Milestone_, there is a GH issue under the https://github.com/waku-org/pm repo with `milestone` label assigned
- _Milestone_, there is a label with format `E:<year>-<milestoje title>` created across all relevant https://github.com/waku-org/ repos (see [labels.yml](./.github/labels.yml)).
- _Epic_, there is a GH issue under the relevant https://github.com/waku-org/ repo with related _Milestone_ label (`E:...`) and `epic` label assigned. The GH issue is assigned to the _owner_ of the epic.
- _Task_, there is a GH issue and/or pull request under the relevant https://github.com/waku-org/ repo with related _Epic_ label.

Hence, correct _Milestone_ label must be assigned to all GH issues/pull requests representing a _Milestone_ or _Task_.
This will enable the usage of the new reporting dashboard and reduce manual maintenance.

Ideally, every:

- _Milestone_ GH issue contains a list of planned _Epics_.
- _Epic_ GH issue contains list of planned and completed _Tasks_.

Note: GitHub `milestone` functionality is **not** used as part of this process.

### Reporting

**Monthly**:

- Report progress of each _Milestone_
- Report _Epics_ that were closed last months and expected to be closed next month
- Other relevant items (RISK, etc)

**Weekly**: Report progress on each **active** _Epic_ per subteam.

Every Friday, all team members must add a comment to the _Epic_ GH issue they own and worked on the past week or planned to work on next week.

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

**Milestones** (WIP):

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
