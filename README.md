# Waku Project Management

## Teams

The Waku Team is comprised of the following subteams:

- Waku Research
- Waku Development nwaku, js-waku, go-waku
- Waku Chat

The Waku Team also gets the support from other Logos groups, in particular:

- [VAC/DST](https://vac.dev/): Distributed System Testing Team for simulations and QA/Testing
- Comms Hub: For communications, marketing, digital content, etc.

## Work Tracking and Project Management Process

See [PROCESS.md](./PROCESS.md)

## Reporting Guidelines

### Requirements

#### Weekly Reporting

Weekly reporting provides an insight on the progress by milestones.

### Reporting

**Weekly Updates**:

Report progress on each **active** Deliverables per sub-team.

Every week, all team members must add their update in the appropriate discord thread *WITH LINKS* to the GitHub **issues** (not pull requests) they own and worked on over the past week and/or plan to work on next week.

If work is done on several *Tasks* related to the same *Epic*, team members are free to link the common parent *Epic* issue.

Please include an update for the following categories:

- achieved: what was achieved this week.
- next: what will be worked on next.
- blocked: blocking items, not required if no blockers exist.

PM compiles the updates following sign-off from sub-team Leads and publishes to https://roadmap.logos.co.

### Process Flow

```md
Submit Updates (Everyone) - Tuesday
         │
         ▼
Review/Signoff (Leads) - Wednesday
         │
         ▼
Compile (PM) - Thursday
         │
         ▼
Publish (PM) - Monday
```

## Milestones

https://github.com/waku-org/pm/milestones

## RLN Smart Contract Deployment

### Purpose and Functionality

The RLN (Rate-Limiting Nullifier) smart contract is designed to manage memberships and rate-limiting nullifiers. It allows adding and removing members, as well as retrieving information about members.

### Deployment Instructions

To deploy the RLN smart contract to a Layer 2 mainnet, follow these steps:

1. Ensure you have Node.js and npm installed on your machine.
2. Install the required dependencies by running `npm install` in the project directory.
3. Update the `scripts/deploy.js` file with your Infura project ID and private key.
4. Run the deployment script using the command `node scripts/deploy.js`.

### Interacting with the Deployed Contract

Once the RLN smart contract is deployed, you can interact with it using the following functions:

- `addMember(address _memberAddress, uint256 _rateLimit, uint256 _nullifier)`: Adds a new member to the contract.
- `removeMember(address _memberAddress)`: Removes an existing member from the contract.
- `getMember(address _memberAddress)`: Retrieves information about a specific member.
- `getAllMembers()`: Retrieves information about all members in the contract.

Refer to the `contracts/RLN.sol` file for the complete implementation of the RLN smart contract.
