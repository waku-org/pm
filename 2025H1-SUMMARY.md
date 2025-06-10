# Execution Summary (Half-Year to June-2025): Waku

## 🧭 Key Outcome(s)

- Integrated nwaku in Status Desktop, progress towards decommissioning go-waku and pave the way for nim libraries to be integrated in any native desktop application.   
- Stabilized store performance for Status Communities usage, understood the best usage patterns and design around limitations.
- Delivered an end-to-end reliability protocol adapted to Waku's restriction (RLN), applicable for large group chat (Communities) and extensible to small chats (1:1s); progressed on integration in Status Communities and delivered browser library.
- Understood the limitations of in-app, centralized, telemetry and delivered sustainable local metrics approach to analyse usage behaviour.
- Understood working and limitation of existing Status Private Chat protocol. Line out work to use Waku securely and at scale (RLN) and various security limitations and inadequacies
- Delivered new peer discovery protocol (rendezvous) to enable further scaling of Waku applications in terms of number of nodes and node capabilities.
- Integrated local DoS protection mechanisms to all Waku service node, fleet and Status Desktop apps.
- Bd achievements TODO https://discord.com/channels/1110799176264056863/1111541918585868348/1381801780949553183
- Greatly improved RLN UX with onchain tree reducing resource costs on Waku Nodes, actioning lessons from previous dogfooding in The Waku Network. Deployed on Linea Sepolia.
- Defined and delivered first economic cost for RLN membership acquisition via stable coin deposits; including a web app for membership management to allow further dogfooding https://rln.waku.org/.
- Defined first incentivisation mechanism including payment and local reputation (PoC incomplete as of H1)
- Delivered 7 new Waku PoC Applications, as part of Waku internal hackathon (6) and Dev Rel effort to show how to build over Waku. This includes PoC Opchan Forum over Waku (FURPS not complete as of H1).
- Collaborated with Vac-QA to migrate status-lib chat testing to status-backend, and include more mobile environment scenarios to improve QA of Waku and Chat protocols.
- Delivered mixnet PoC (partial functionality) to increase sender anonymity, collaborating closely with Vac to mature nim-libp2p implementation.
- Delivered Waku Rust SDK PoC and handed over to a couple community projects.

## 🚩 Key Achievement(s)
From the list of planned items
| Milestone Headline         | Strategic Objective                          | Realised Value (0/10)|
|----------------------------|----------------------------------------------|----------------------|
| Waku Store Database Metric | Objective link, We Need One, ND(Not defined) |                      |

## 🧩 Strategic Benefits Realised
- **[e.g. Protocol Responsiveness]**: [Broadens utility of Waku protocol]
- **[e.g. Rate Limited Nullifier PoC]**: [helps anti-spam and network load]
- **[Differentiator 3]**: [Explanation]

## 🚩 Non-Realised Item(s)
From the list of planned items
| Headline                   | Reason for not being realised | Carry(Yes/No)   |
|----------------------------|-------------------------------|-----------------|
| SDS phase 1 rollout        | e.g. descoped by sponsor      |                 |


## 🛠️ FURPS Execution Snapshot

| Headline 1                     | FURPS Doneness                      | Link          |
|--------------------------------|-------------------------------------|---------------|
| Direct Message Reliability     | F(8/9) U(4/4) R(2/3) P(0/2) S(1/2) | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c8042b6d6d9fadb0ddcef |
| End-to-End Reliability Protocol | F(0/2) U(0/2) R(0/2) P(0/2) S(0/1) | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c803ca2acf006cd9aa6bd |
| Scale Up Number of Communities |  F(1/2) U(1/2) R(0/2) P(0/1) S(0/3) | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c8017bf15c825908fca8d |
| RLN Mainnet                    |  F(3/5) U(1/4) R(0/3) P(0/4) S(1/3) | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c80309c8dddc660273baa |
| Nwaku in Status Desktop (Relay mode) | F(0/2) U(0/2) R(0/2) P(0/1) S(0/2) | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c8012916fe63b1a244df1 |
| Incentivise running a Waku infrastructure node | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c805e9345f2c1e59da62f |
| Foundation for Communities Optimization | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1858f96fb65c803cbc0ddb6cbde6282f |
| Hardening and scaling foundations for private chats | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1518f96fb65c801383e4c0a65b9ae5f5 |
| Global network metrics deliverable | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1518f96fb65c8014b396c39edf300af7 |
| Upgrade Waku for the Web | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1898f96fb65c80bf9614d520301a1e60 |
| Logos Web apps: Qaku |  F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1828f96fb65c80db9d98d5f2f8aaef52 |
| Logos Web apps: Forum |  F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1578f96fb65c80d18d2be483e8c3ba28 |
| Explore Peer Discovery Gap: Store Sync | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1508f96fb65c80d88942cbd0bfb91ce5 |
| Explore Peer Discovery Gap: Mixnet | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1898f96fb65c8045bc67c5fa7d806bd9 |
| Nwaku in Status Mobile and Light Mode | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1508f96fb65c808abb35d6242895d72e |
| Debugging Tools: log parser | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1508f96fb65c80a8abd6f5d37a273657 |
| Debugging Tools: local metrics |  F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1538f96fb65c8029b5b1fd0054c78bb4 |
| Messaging API | F() U() R() P() S() | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1578f96fb65c80c3afb3d6538a98139a |

## Funding and Resources

| Headline Budget Ask    | k-USD   |
| Final Budget Used      | k-USD   |
| Resource Count Initial | ####### |
| Resource Count Final   | ####### |
| Open Positions         | ####### |


## ⚠️ Keys Risks & Controls

| Risk               | Control                                |
|--------------------|----------------------------------------|
| [Risk]             | [Mitigation strategy]                  |
| [Risk]             | [Mitigation strategy]                  |
| [Risk]             | [Mitigation strategy]                  |

## ✅ Key Observations
**[Specific observations from this last execution window]**
