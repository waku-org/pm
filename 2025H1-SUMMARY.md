# Execution Summary (Half-Year to June-2025): Waku

## 🧭 Key Outcome(s)

- Integrated nwaku in Status Desktop, progress towards decommissioning go-waku and pave the way for nim libraries to be integrated in any native desktop application.   
- Stabilized store performance for Status Communities usage, understood the best usage patterns and design around limitations.
- Delivered an end-to-end reliability protocol adapted to Waku's restriction (RLN), applicable for large group chat (Communities) and extensible to small chats (1:1s); progressed on integration in Status Communities and delivered browser library.
- Understood the limitations of in-app, centralized, telemetry and delivered sustainable local metrics approach to analyse usage behaviour.
- Understood working and limitation of existing Status Private Chat protocol. Line out work to use Waku securely and at scale (RLN) and various security limitations and inadequacies
- Delivered new peer discovery protocol (rendezvous) to enable further scaling of Waku applications in terms of number of nodes and node capabilities.
- Integrated local DoS protection mechanisms to all Waku service node, fleet and Status Desktop apps.
- Waku integration started in at least 2 new projects: [chrom.ar](https://x.com/McGee_noodle/status/1915893489151447269), [Portrait](https://openinternetprotocol.com/networking-layer/waku); commitment from 2 other projects (stealth mode).
- Greatly improved RLN UX with onchain tree reducing resource costs on Waku Nodes, actioning lessons from previous dogfooding in The Waku Network. Deployed on Linea Sepolia.
- Defined and delivered first economic cost for RLN membership acquisition via stable coin deposits; including a web app for membership management to allow further dogfooding https://rln.waku.org/.
- Defined first incentivisation mechanism including payment and local reputation (PoC incomplete as of H1)
- Delivered 11 new Waku PoC Applications, as part of Waku internal hackathon (6) and Dev Rel effort to show how to build over Waku (5). This includes PoC Opchan Forum over Waku (FURPS not complete as of H1).
- Collaborated with Vac-QA to migrate status-lib chat testing to status-backend, and include more mobile environment scenarios to improve QA of Waku and Chat protocols.
- Delivered mixnet PoC (partial functionality) to increase sender anonymity, collaborating closely with Vac to mature nim-libp2p implementation.
- Delivered Waku Rust SDK PoC and handed over to a couple community projects.

## 🚩 Key Achievement(s)

| Milestone Headline                                  | Strategic Objective                                                                                                                 | Realised Value (0/10) |
|-----------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-----------------------|
| Direct Message Reliability                          | Improve p2p reliability of edge nodes                                                                                               | 8/10                  |
| End-to-end reliability protocol                     | Provide agnostic protocol for reliability in group chats                                                                            | 5/10                  | 
| Foundation for Communities Optimization             | Simplify use of Waku to enable cheap optimization if needed                                                                         | 8/10                  |
| Scale up number of Communities                      | Introduce rendezvous as additional peer discovery mechanism                                                                         | 1/10                  |
| Nwaku in Status Desktop (Relay mode)                | Demonstrate usage of nwaku/nim-library in Status Desktop/Golang Application                                                         | 10/10                 |
| RLN Mainnet                                         | Introduce economics to DoS protection smart contract and improve UX                                                                 | 7/10                  | 
| Hardening and scaling foundations for private chats | Understand chat protocol to define roadmap, increase QA coverage for chat protocols                                                 | 7/10                  |
| Upgrade Waku for the Web                            | Delivered end-to-end reliability protocol and improved peer management to Web applications                                          | 5/10                  | 
| Logos Web apps                                      | Decentralized Forum PoC, Qaku library, demonstration of Codex integration w/ Waku and more resilience to Web3 RPC outages for nwaku | 7/10                  |
| Explore Peer Discovery Gap                          | Partial Mixnet PoC, dogfooding store sync for network message consistency                                                           | 6/10                  |
| Debugging Tools                                     | Local metrics dashboard to enable study of software behaviour and usage of Waku                                                     | 5/10                  | 

## 🧩 Strategic Benefits Realised

- Network DoS Protection: Improved UX and defined economic parameters
- P2P reliability: Improve recovery on network disconnection
- E2E reliability: Introduced scalable protocol for large group chat, that can extended to 1:1 chats. Both for native and browser applications.
- Nwaku in Golan application: Open the path to multi-language SDKs to fulfill needs of any application developers, including Logos Core.
- Various Waku Apps: teach them how to hunt by demonstrating potential Waku use-cases in different platforms and context.
- Mixnet PoC: Pave the path to increase anonymity property of Waku to a TOR-like (or above) level.

## 🚩 Non-Realised Item(s)

| Headline                                          | Reason for not being realised                                                                                                   | Carry(Yes/No)    |
|---------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|------------------|
| Local rate limit in Status Chat                   | No clear pathway to Status integration, new Chat SDK makes it irrelevant                                                        | No               |
| Formal specs for Status chat protocols            | New Chat SDK means new protocols, making proper documentation of existing protocols unnecessary                                 | No               |
| E2e reliability integration in Status Communities | Underestimation of effort to onboard developer to Nim, challenges to build FFI API (now solved), staffing issues                | Yes              |
| RLN audited and deployed on mainnet               | Gross underestimation of the work needed, should have instead focus on needs to proceed with next dogfooding iteration          | Yes with caveats |
| Incentivise running a Waku infrastructure         | Onboarding to Nim, staffing issue which led to re-prioritizing RLN work instead of this                                         | Yes              | 
| Global network metrics                            | Under-estimation + time to bootstrap collaboration with BI                                                                      | Yes              |  
| Improved browser boostrap                         | TWN old RLN contract (no deposit) being spammed, blocking progress on this item                                                 | Yes              | 
| Browser simulations                               | Does not fit Vac-DST initial framework, increasing effort                                                                       | Unclear          |
| Formalize Codex integration with Waku             | Unclear of benefit to progress beyond the current working integration in Qaku, refining needed, new FURPS to be proposed for H2 | Unclear          |
| Mixnet PoC and MVP Roadmap                        | Dependency on Vac to complete libp2p-mixnet library                                                                             | Yes              |
| Nwaku in Status Mobile and Light Mode MVP         | Underestimated work for desktop integration, reprioritized for H2 behind Chat SDK work                                          | Yes              |
| Debugging tools, log parser                       | Handed over to Vac-DST who already have similar log tool and just need to extend its functionality                              | No               |
| Messaging API                                     | Work was expected to only start in H1, which it did. Milestone was re-worked for H2 to better fit team resources                | Yes              |

## 🛠️ FURPS Execution Snapshot

| Headline 1                                          | FURPS Doneness                       | Link                                                                                                                |
|-----------------------------------------------------|--------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| Direct Message Reliability                          | F(8/9) U(4/4) R(2/3) P(0/2) S(1/2)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c8042b6d6d9fadb0ddcef |
| End-to-End Reliability Protocol                     | F(0/2) U(0/2) R(0/2) P(0/2) S(1/2)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c803ca2acf006cd9aa6bd |
| Scale Up Number of Communities                      | F(2/2) U(2/2) R(2/2) P(0/1) S(2/3)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c8017bf15c825908fca8d |
| RLN Mainnet                                         | F(4/5) U(4/4) R(2/3) P(1/4) S(1/3)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c80309c8dddc660273baa |
| Nwaku in Status Desktop (Relay mode)                | F(2/2) U(1/2) R(0/2) P(0/1) S(1/2)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c8012916fe63b1a244df1 |
| Incentivise running a Waku infrastructure node      | F(0/6) U(0/3) R(0/3) P(0/1) S(0/1)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1498f96fb65c805e9345f2c1e59da62f |
| Foundation for Communities Optimization             | F(1/4) U(1/3) R(1/1) P(2/3) S(0/1)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1858f96fb65c803cbc0ddb6cbde6282f |
| Hardening and scaling foundations for private chats | F(0) U(0) R() P(0) S(0)              | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1518f96fb65c801383e4c0a65b9ae5f5 |
| Global network metrics deliverable                  | F(0) U(0) R(0) P(0) S(0)             | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1518f96fb65c8014b396c39edf300af7 |
| Upgrade Waku for the Web                            | F(1/3) U(1/2) R(2/2) P(2/3) S(1/1)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1898f96fb65c80bf9614d520301a1e60 |
| Logos Web apps: Qaku                                | F(22/22) U(6/6) R(1/1) P(1/1) S(4/4) | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1828f96fb65c80db9d98d5f2f8aaef52 |
| Logos Web apps: Forum                               | F(9/11) U(6/9) R(1/2) P(0/0) S(1/1)  | https://www.notion.so/Community-Draft-Logos-Opchan-1c18f96fb65c8082921aedf43a040466                                 |
| Explore Peer Discovery Gap: Store Sync              | F(1/1) U(2/2) R(1/1) P(1/1) S(1/1)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1508f96fb65c80d88942cbd0bfb91ce5 |
| Explore Peer Discovery Gap: Mixnet                  | F(0/5) U(0/0) R(0/0) P(0/0) S(0/2)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1898f96fb65c8045bc67c5fa7d806bd9 |
| Nwaku in Status Mobile and Light Mode               | F(0) U(0) R(0) P(0) S(0)             | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1508f96fb65c808abb35d6242895d72e |
| Debugging Tools: log parser                         | F(0) U(0) R(0) P(0) S(0)             | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1508f96fb65c80a8abd6f5d37a273657 |
| Debugging Tools: local metrics                      | F(7/7) U(2/2) R(0/0) P(0/0) S(0/1)   | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1538f96fb65c8029b5b1fd0054c78bb4 |
| Messaging API                                       | F(0) U(0) R(0) P(0) S(0)             | https://www.notion.so/Waku-FURPS-1498f96fb65c803faedef2a591c22c00?source=copy_link#1578f96fb65c80c3afb3d6538a98139a |

## Funding and Resources

https://notes.status.im/E_bcw7cLR36QKI39k-PlMg#

## ⚠️ Keys Risks & Controls

| Risk                       | Control                                                                                                                                                    |
|----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| FFI for Nim libraries      | Drive collaboration, share knowledge and push more experience devs to jump in for assistance                                                               |
| Departure of RLN experts   | Close collaboration with Vac-ACZ, dedicated 3 engineers to the task to work collaboratively and unblock each others.                                       | 
| Status' undefined strategy | Focus on foundational work that has value no matter the direction, building in a modular manner to deliver re-usable components over specialized delivery. |
| RLN's challenging UX       | Focus on tight feedback loops, push for integration wherever possible (eg Status AND web apps),                                                            |
| Store centralization       | Reduce importance of store with e2e reliability, tweak API to avoid usage of store as CDN by developers, continue progressing on Codex integration.        | 

## ✅ Key Observations

- "RLN Mainnet" was too premature of a goal, the focus has shifted to focus on the next iteration of dogfooding (to be started soon). Next goals will be pushing on Status L2 Sepolia and continue iterating on UX, to provide accompanying library to Chat SDK.
- We aimed to be flexible with Status' dynamic strategy, by dropping items whose value became unclear, and focusing on modular, long-term, sustainable and re-usable work.
- It was too early to formalize integration with Codex. Nonetheless, Waku apps produced by app/chat team have Codex integration and dogfooding of Waku x Codex will continue.
- We attempted to put in place a process with Vac-QA and Vac-DST respectively "certify" `R`s and `P`s. While good on principle, the tracking processes are not there.
- It was a first round of planning with FURPS. Lessons have been learned and being applied for H2.
- The Waku internal hackathon was a great experiment to identify use-case but also improvements to the Waku dev ex. With a focus on building (developer) tribes, its strategic value has increased.
- Milestones that involved breaking changes were dragged across several Status release; need to review how this is planned to not postponed milestone completion dates by months.
- Some research items took time to wrap-up, sort bindings, etc. Will discuss with the team on how we can be better are getting research PoC ready for dogfooding.