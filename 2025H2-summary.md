# Milestones Presentation (Half-Year to Dec-2025): Waku

## 🧭 Key Outcome(s) of Vision you are supporting

- Create Chat SDK MVP - one-to-one (Browser, Nim, Rust, Golang), support Status' technical roadmap, supports Logos Movement and Logos Core by enabling secure conversations over Waku
- Simplify a reliable Waku API and SDK (Browser, Nim, Rust, Golang), supports Chat SDK, Logos Movement and Logos Core, make it is easy to integrate
- Improve Waku Developer Experience by stabilizing The Waku Network and reviewing Docs: Support Logos Movement, make it is easy to integrate
- Deploy metrics to measure Waku and any Waku app's level of adoption: Support measuring success of Logos Movement
- Introduce mixnet for message sending: Support Logos Vision of a private technology stack
- Formalize and Expand Waku Web Apps: Support Logos Movement on teaching them how to hunt
- Integrate RLN with Waku API: Supports Chat SDK, and Logos Movement to make it easy it to integrate Waku RLN.
- Streamline DevEx: Mobile, and Web dev, supporting Status to have nwaku and chat sdk on mobile, provide tooling to make it easy to integrate js-waku
- Extend Chat SDK with Group conversations: ditto create chat sdk
- Nim Usage Improvement: Dedicate time to improve nim usage (nimble usage, iterate on ffi api, study nimsuggest behaviour): to improve nwaku contributor experience, enable all goals above and make it easy to contribute
- Continue Waku Incentivization: Finish Light push PoC and define next step, to make Waku infrastructure decentralized and sustainable, as per Logos Vision

Strategy changes:

- New Chat protocol over adapting existing code and protocol ([justification](https://forum.vac.dev/t/chatsdk-motivations/501))
- Prioritized simplifying Waku API/SDK, to enable Chat SDK but also "make it easy to integrate"
- Prioritized RLN API/SDK, to use with Chat SDK and have early RLN integration in the Chat stack (this time)
- De-prioritized nwaku on mobile in favour of Waku API and RLN API
- Increased commitment to build applications over Waku (Web and Logos Core), to "teach them how to hunt"
- Introduced Developer Experience items: to support Chat SDK, and "make it easy to integrate"
- Nim Usage Improvement: increased priority to support new chat sdk, and "make it easy to contribute"
- De-scoped any Communities or existing Status chat protocol work, apart from e2e reliability as it is a re-usable block for Chat SDK.
- RLN Mainnet is a long term goal, focused instead of smaller, achievable items that enable integration and dogfooding of RLN.

## 🚩 Proposed Milestones(s)

| Milestone Headline                                                                                    | Strategic Objective (Short form) ** | Capacity* | Business Val (0/10) | FURPS |
|-------------------------------------------------------------------------------------------------------|-------------------------------------|-----------|---------------------|-------|
| [Define Incentivisation for RLNaaS](draft-roadmap/define_incentivisation_for_rlnaas.md)               | Logos Vision                        | 1.5       | 7                   | TODO  |
| [Improve DevEx: API, TWN, Metrics, Docs](draft-roadmap/improve_devex_api_twn_metrics_docs.md)         | Logos Vision, Status (via Chat SDK) | TODO      | 8                   |       |
| [Introduce mixnet for message sending](draft-roadmap/introduce_mixnet_for_message_sending.md)         | Logos Vision                        | 1         | 6                   |       |             
| [Formalize and Expand Waku Web Apps](draft-roadmap/formalize_and_expand_waku_web_apps.md)             | Logos Movement                      | 1.5       | 7                   |       |
| [Create Chat SDK MVP](draft-roadmap/create_chat_sdk_mvp.md)                                           | Logos Movement, Status              | 3         | 9                   |       | 
| [Integrate RLN with Waku API](draft-roadmap/integrate_rln_with_waku_api.md)                           | Logos Movement, Status              | 0.5       | 9                   |       |
| [Streamline DevEx: Mobile, Rust and Web dev](draft-roadmap/streamline_dev_ex_local_dev_rust.md)       | Logos Movement, Status              | TBD       | 9                   |       |             
| [Extend Chat SDK with Group Conversations](draft-roadmap/extend_chat_sdk_with_group_conversations.md) | Logos Movement, Status              |           | 9                   |       | 
| Incentivisation follow-up                                                                             | TBD                                 | TBD       | 7                   |       |             
| [Nim Usage Improvements](draft-roadmap/nim_usage_improvements.md)                                     | TBD                                 |           | 5                   | TBD   |             

## 🧩 Strategic Benefits Realisable from coming Half-Year (Top 5)

- Deliver better APIs and SDKs: Broadens utility of Waku protocol, including RLN, enable building desktop, browser and mobile app using a unified, simple, Waku and RLN API.
- Sustainable, scalable, secure and usable Chat protocol: Enables anyone to build private native chat application, and set sustainable foundations for Status application.
- Waku web apps: demonstrate how to build on Waku, and iterate on dev ex and UX of Waku APIs and protocols, including RLN.
- Roadmap to incentivisation: Explore how the Waku network can be sustainably scalable, resilient, private and censorship-resistant.
- Introduce mixnet: Deliver on our promise of network level anonymity, starting with sender anonymity.
- Improve Nim usage: improve the efficiency of Waku nim developers, to better delivery our commitments and "make it easy to contribute".

##### Optional link to Full Strategic Benefits - href

N/A

## 🚩 Key Cross Project Alignments (Top-5)

| Project / Community | Specific                                                        | Confirmed with Project(Yes/No) | 
|---------------------|-----------------------------------------------------------------|--------------------------------|
| Status Application  | Create Chat SDK MVP, Extend Chat SDK, Integrate RLN w/ Waku API | Yes                            |
| Logos Core          | Formalize and Expand Waku Web Apps: Logos core app              | Pending                        |
| Logos Movement      | Formalize and Expand Waku Web Apps: Forum                       | Yes                            | 
| Status Application  | Streamline DevEx: Mobile                                        | Yes                            |
| Codex               | Formalize and Expand Waku Web Apps: More Codex Integrations     | Pending                        |
| Status L2           | Integrate RLN With the Waku API: Deploy SC on Sepolia           | Yes                            | 

##### Optional link to Full Cross Alignments - href

N/A

## 🚩 Key Cross Project/Shared Service Dependency (Top-5)

| Project            | Specific                                                                                | Confirmed with Project(Yes/No) |
|--------------------|-----------------------------------------------------------------------------------------|--------------------------------|
| Vac-DST            | Proceed with status-backend benchmarks for nwaku and new chat sdk migration             | Yes                            |
| Vac-QA             | Proceed with status-backend non-regression testing for nwaku and new chat sdk migration | Yes                            |
| Status Network     | Support usage of Sepolia                                                                | Yes                            |
| Vac-ACZ            | Assist with using zerokit in the Browser                                                | Yes                            |
| Vac-ACZ Think Tank | Assist in determining best libraries to use for cryptography in new Chat SDK            | Pending                        |

##### Optional link to Full Dependency - href

N/A

## Funding and Resources (By Strategic Objective)

### Rolled-Up By Strategic Objective

TODO

| Strategic Objective               | People Costs | Infra Costs | Other Costs | 
|-----------------------------------|--------------|-------------|-------------| 
| Protocol Enhancement on Waku Chat | 300k         | 50k         |             |
| Enable Logos Vision Chat Protocol | 400k         | 10k         |             |

### Budget Consultation

TODO

| Headline Activity       | Status                            |
|-------------------------|-----------------------------------|
| Financial Review Status | [new,renew,review,approved]       | 
| Finance Comments        | please add comment rows as needed |                                         |

### By Resource

| Resource Headline Item  | People  | Comment   |
|-------------------------|---------|-----------|
| Present Resource        |   20    |           |
| Additional Resource Ask |    2    | backfills |
| PeopleOps Informed      |  Yes    |           |

### PeopleOps Consultation
TODO

| Review Status | [new,renew,review,approved]|    
| Review Comments | [new,renew,review,approved]|

## ⚠️ Keys Risks Identified & Controls

| Risk               | (Accept, Own, Mitigation)                           |
|--------------------|-----------------------------------------------------|
| [Risk]             | [Mitigation strategy]                               |
| [Risk]             | [Mitigation strategy]                               |
| [Risk]             | [Mitigation strategy]                               |

## ✅ Key Observations
**[Specific observations from this last execution window]**

TO CLARIFY

#Appendix As Needed

## 🛠️ FURPS Reference by Proposed Milestone

TO CLARIFY

| Headline 1                    | FURPS Defined              | Link          |
|-------------------------------|----------------------------|---------------|
| Waku Store database narrative | F2(3) U(1) R (1) P(2) S(0) | link to FURPS |
| RLN standard module 1         | F2(3) U(1) R (1) P(1) S(0) | link to FURPS |
| Chat SDK version 1            | F2(3) U(1) R (0) P(0) S(0) | link to FURPS |

# Appendix A (Optional)

See links in [Proposed Milestones(s)](#-proposed-milestoness)

## FURPS

See links in [Proposed Milestones(s)](#-proposed-milestoness). Each milestone has FURPS

## Risks Identified

TO CLARIFY: is this per milestone?

TO CLARIFY: What does "(Accept, Own, Mitigation)" mean?

| Risk                                            | (Accept, Own, Mitigation)                                                                                                                     |
|-------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| Readiness of status-go for Chat SDK integration | Weekly sync up on chat sdk and status-go refactoring topic between Waku and Status teams, collaborative planning done to align goals and API. |
| [Risk]                                          | [how to we address this risk]                                                                                                                 |
| [Risk]                                          | [how to we address this risk]                                                                                                                 |



