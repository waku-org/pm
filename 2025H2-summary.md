# Milestones Presentation (Half-Year to Dec-2025): Waku

TODO what's up with eco dev grwoth

## 🧭 Key Outcome(s) of Vision you are supporting

- Create Chat SDK MVP - one-to-one (Nim, Rust, Golang), support Status' technical roadmap, supports Logos Movement and Logos Core by enabling secure conversations over Waku
- Simplify a reliable Waku API and SDK (Browser, Nim, Rust, Golang), supports Chat SDK, Logos Movement and Logos Core, make it is easy to integrate
- Improve Waku Developer Experience by stabilizing The Waku Network and reviewing Docs: Support Logos Movement, make it is easy to integrate
- Deploy metrics to measure Waku and any Waku app's level of adoption: Support measuring success of Logos Movement
- Introduce mixnet for message sending: Support Logos Vision of a private technology stack
- Formalize and Expand Waku Web Apps: Support Logos Movement on teaching them how to hunt
- Integrate RLN with Waku API: Supports Chat SDK, and Logos Movement to make it easy it to integrate Waku RLN.
- Streamline DevEx: Mobile, and Web dev, supporting Status to have nwaku and chat sdk on mobile, provide tooling to make it easy to integrate js-waku
- Extend Chat SDK with Group conversations: ditto create chat sdk
- Nim Usage Improvement: Dedicate time to improve nim usage (nimble usage, iterate on ffi api, study `nimsuggest` behaviour): to improve nwaku contributor experience, enable all goals above and make it easy to contribute
- Continue Waku Incentivisation: Finish Light push PoC and define next step, to make Waku infrastructure decentralized and sustainable, as per Logos Vision

Strategy changes:

- New Chat protocol over adapting existing code and protocol ([justification](https://forum.vac.dev/t/chatsdk-motivations/501))
- Prioritized simplifying Waku API/SDK, to enable Chat SDK but also "make it easy to integrate"
- Prioritized RLN API/SDK, to use with Chat SDK and have early RLN integration in the Chat stack (this time)
- De-prioritized nwaku on mobile in favour of Waku API and RLN API
- Increased commitment to build applications over Waku (Web and Logos Core), to "teach them how to hunt"
- Introduced Developer Experience items: to support Chat SDK, and "make it easy to integrate"
- Nim Usage Improvement: increased priority to support new chat sdk, and "make it easy to contribute"
- De-scoped any Communities or existing Status chat protocol work, apart from e2e reliability as it is a re-usable block for Chat SDK.
- RLN Mainnet is a long term goal, focus instead of smaller, achievable items that enable integration and dogfooding of RLN.

## 🚩 Proposed Milestones(s)

| Milestone Headline                                                                                    | Strategic Objective                                     | Capacity | Business Val (0/10) | FURPS |
|-------------------------------------------------------------------------------------------------------|---------------------------------------------------------|----------|---------------------|-------|
| [Define Incentivisation for RLNaaS](draft-roadmap/define_incentivisation_for_rlnaas.md)               | Logos Vision: Core Values Alignment                     | 0.25     | 7                   | TODO  |
| [Improve DevEx: API, TWN, Metrics, Docs](draft-roadmap/improve_devex_api_twn_metrics_docs.md)         | Logos Movement Community Enabling via Dev-X + Telemetry | 1.5      | 10                  | FU__+ |
| [Introduce mixnet for message sending](draft-roadmap/introduce_mixnet_for_message_sending.md)         | Logos Vision: Core Values Alignment                     | 0.33     | 4                   |       |             
| [Formalize and Expand Waku Web Apps](draft-roadmap/formalize_and_expand_waku_web_apps.md)             | Logos Movement Community Enabling                       | 0.25     | 7                   |       |
| [Create Chat SDK MVP](draft-roadmap/create_chat_sdk_mvp.md)                                           | Logos Movement Module Build Out                         | 1.5      | 8                   |       | 
| [Integrate RLN with Waku API](draft-roadmap/integrate_rln_with_waku_api.md)                           | Logos Movement Module Build Out                         | 0.83     | 9                   |       |
| [Streamline DevEx: Mobile, Rust and Web dev](draft-roadmap/streamline_dev_ex_local_dev_rust.md)       | Logos Movement Community Enabling via Dev-X             | 0.5      | 7                   |       |             
| [Extend Chat SDK with Group Conversations](draft-roadmap/extend_chat_sdk_with_group_conversations.md) | Logos Movement Module Build Out                         | 1        | 8                   |       | 
| Incentivisation follow-up (write outline)                                                             | Logos Vision: Core Values Alignment                     | TBD      | 7                   |       |             
| [Nim Usage Improvements](draft-roadmap/nim_usage_improvements.md)                                     | Logos Movement Community Enabling: Dev Journey          | 0.33     | 5                   | TBD   |             
| Acquire first 10 customers                                                                            | Logos Movement Community Enabling: Growth               | 1.5      | 6                   | N/A   |

## 🧩 Strategic Benefits Realisable from coming Half-Year (Top 5)

- **Logos Vision - Core Values Alignment**: Progress on making Waku sustainably scalable, resilient, private and censorship-resistant. Increase anonymity properties.
- **Logos Movement Community Enabling**: Simplify APIs to reduce cost of onboarding and deliver them in demanded languages, build application as examples and demonstrations of the technology, provide telemetry to track success and improve Dev-X for contributors.
- **Logos Movement Module Build Out**: Deliver a Chat SDK that can scale over Waku, supporting secure one-to-one and group chats, with early integration of DoS protection.

## 🚩 Key Cross Project Alignments (Top-5)

| Project / Community | Specific                                                        | Confirmed with Project(Yes/No) | 
|---------------------|-----------------------------------------------------------------|--------------------------------|
| Status Application  | Create Chat SDK MVP, Extend Chat SDK, Integrate RLN w/ Waku API | Yes                            |
| Logos Core          | Formalize and Expand Waku Web Apps: Logos core app              | Yes                            |
| Logos Movement      | Formalize and Expand Waku Web Apps: Forum                       | Yes                            | 
| Status Application  | Streamline DevEx: Mobile                                        | Yes                            |
| Codex               | Formalize and Expand Waku Web Apps: More Codex Integrations     | Pending                        |
| Status L2           | Integrate RLN With the Waku API: Deploy SC on Sepolia           | Yes                            | 


## 🚩 Key Cross Project/Shared Service Dependency (Top-5)

| Project        | Specific                                                                                | Confirmed with Project(Yes/No) |
|----------------|-----------------------------------------------------------------------------------------|--------------------------------|
| Vac-DST        | Proceed with status-backend benchmarks for nwaku and new chat sdk migration             | Yes                            |
| Vac-QA         | Proceed with status-backend non-regression testing for nwaku and new chat sdk migration | Yes                            |
| Status Network | Support usage of Sepolia                                                                | Yes                            |
| Vac-ACZ        | Assist with using zerokit in the Browser                                                | Yes                            |
| Vac-ACZ        | Assist in determining best libraries to use for cryptography in new Chat SDK            | Yes                            |
| Vac-ACZ        | mix protocol development                                                                | Yes                            |
| Infra          | Maintain Waku fleet, apply config changes requests, deploy new nodes for metrics        | TODO                           |
| Vac-SC         | Support of functional extension of RLN Smart Contract                                   | Yes                            |

## Funding and Resources (By Strategic Objective)

### Rolled-Up By Strategic Objective

https://notes.status.im/E_bcw7cLR36QKI39k-PlMg#

| Strategic Objective                  | People | 
|--------------------------------------|--------|
| Logos Vision - Core Values Alignment |        |
| Logos Movement Community Enabling    |        |
| Logos Movement Module Build Out      |        |

### Budget Consultation

| Headline Activity       | Status                            |
|-------------------------|-----------------------------------|
| Financial Review Status | [new,renew,review,approved]       | 
| Finance Comments        | please add comment rows as needed |                                         |

### By Resource

| Resource Headline Item  | People | Comment                                      |
|-------------------------|--------|----------------------------------------------|
| Present Resource        | 20     |                                              |
| Additional Resource Ask | 1      | backfill - Logos Movement Community Enabling |
| PeopleOps Informed      | Yes    |                                              |

### PeopleOps Consultation

| Review Status | [new,renew,review,approved]|    
| Review Comments | [new,renew,review,approved]|

## ⚠️ Keys Risks Identified & Controls

| Risk                                            | (Accept, Own, Mitigation)                                                                                                                      |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Cryptographic primitives in Nim                 | Expect to nim-wrap existing Rust/C libraries - will consult with Vac to lean towards libraries already used in Nim/IFT ecosystem.              |
| Timeline uncertainties for research items       | Focus on iterative delivery of usable deliverables, to get early feedback and direction and lower cost of failure.                             |
| Nim ecosystem and tooling maturity              | New initiative to foster Nim community within IFT, work closely with Vac/Nim re tooling, block time to migrate to Nimble.                      |
| RLN UX                                          | Integrate in web apps, continue dogfooding and iteration, close collaboration with Status.                                                     |
| Readiness of status-go for Chat SDK integration | Weekly sync up on chat sdk and status-go refactoring topics between Waku and Status teams, collaborative planning done to align goals and API. |

## ✅ Key Observations

- Exciting 6 months ahead with clear path on how to deliver value to both Status and the Logos Community with the same effort.
- Improving work tracking with Vac-DST/Vac-QA, discussion is ongoing to better integrate Waku FURPS in Vac planning.
- We know have a breaking change strategy for Status items.
- Aiming more of a team rally behind milestones, dev milestones are now larger and contain more items that can be done in parallel, so that most of the team work on same milestone together.
- Focus on more frequent milestone delivery, by avoiding intra-dependency of items in milestone.
- Increasing collaboration between research and engineering teams, to ensure early unblocking and neat wrap-up of items. 
- The "Waku (Messaging) API" was initially a tidy up task, as Waku was already integrated in Status. With a focus towards Chat SDK and growing a developer community, it became an urgent-important item.
- Intent to continue internal hackathon initiative with 2 more occurrences in 2025 (tentatively July and October).
