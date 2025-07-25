# Milestones Presentation (Half-Year to Dec-2025): Waku

## 🧭 Key Outcome(s) of Vision you are supporting

- Developers can use a Chat SDK to enable secure conversations, for one-to-one chat and private groups, that scales over Waku, including RLN.
- Onboarding on Waku is improved by simplifying the API of the Waku SDK, including RLN, as well as other developer experience improvements.
- Several applications PoC are built over Waku to demonstrate how to use Waku to developers.
- Progress on privacy and sustainability tracks with research on mixnet and incentivisation.
- Deliver nwaku in mobile as the last step to deprecating go-waku.

Strategy changes:

- New Chat protocol over adapting existing code and protocol ([justification](https://forum.vac.dev/t/chatsdk-motivations/501))
- Prioritized simplifying Waku API, to enable Chat SDK but also "make it easy to integrate"
- Prioritized RLN SDK, to use with Chat SDK and have early RLN integration in the Chat stack (this time)
- De-prioritized nwaku on mobile in favour of Waku SDK and RLN SDK
- Increased commitment to build applications over Waku (Web and Logos Core), to "teach them how to hunt"
- Introduced Developer Experience items: to support Chat SDK, and "make it easy to integrate"
- Nim Usage Improvement: increased priority to support new chat sdk, and "make it easy to contribute"
- De-scoped any Communities or existing Status chat protocol work, apart from e2e reliability as it is a re-usable block for Chat SDK.
- RLN Mainnet is a long term goal, focus instead of smaller, achievable items that enable integration and dogfooding of RLN.

## 🚩 Proposed Milestones(s)

| Milestone Headline                                                                                    | Strategic Objective                                     | Capacity✱ | Business Val (0/10) | FURPS  |
|-------------------------------------------------------------------------------------------------------|---------------------------------------------------------|-----------|---------------------|--------|
| [Define Incentivisation for RLNaaS](draft-roadmap/define_incentivisation_for_rlnaas.md)               | Logos Vision: Core Values Alignment                     | 0.4       | 7                   | FURPS_ |
| [Improve DevEx: API, TWN, Metrics, Docs](draft-roadmap/improve_devex_api_twn_metrics_docs.md)         | Logos Movement Community Enabling via Dev-X + Telemetry | 2.1       | 10                  | FURPS_ |
| [Introduce mixnet for message sending](draft-roadmap/introduce_mixnet_for_message_sending.md)         | Logos Vision: Core Values Alignment                     | 0.7       | 4                   | F___S_ |             
| [Formalize and Expand Waku Web Apps](draft-roadmap/formalize_and_expand_waku_web_apps.md)             | Logos Movement Community Enabling                       | 2.1       | 7                   | FURPS_ |
| [Create Chat SDK MVP](draft-roadmap/create_chat_sdk_mvp.md)                                           | Logos Movement Module Build Out                         | 2.1       | 8                   | FURPS+ | 
| [Integrate RLN with Waku API](draft-roadmap/integrate_rln_with_waku_api.md)                           | Logos Movement Module Build Out                         | 1.7       | 9                   | FUR_S+ |
| [Streamline DevEx: Mobile, Rust and Web dev](draft-roadmap/streamline_dev_ex_local_dev_rust.md)       | Logos Movement Community Enabling via Dev-X             | 1.2       | 7                   | FU__S+ |             
| [Extend Chat SDK with Group Conversations](draft-roadmap/extend_chat_sdk_with_group_conversations.md) | Logos Movement Module Build Out                         | 1.4       | 8                   | F_RPS+ | 
| [Incentivisation Follow-up Outline](draft-roadmap/incentivisation_follow_up.md)                       | Logos Vision: Core Values Alignment                     | 3         | 7                   | TBD    |             
| [Nim Usage Improvements](draft-roadmap/nim_usage_improvements.md)                                     | Logos Movement Community Enabling: Dev Journey          | 0.5       | 5                   | FU____ |             
| [BD - Acquire first 10 customers](draft-roadmap/acquire_first_10_customers.md)                        | Logos Movement Community Enabling: Growth               | 2.1       | 7                   | N/A    |

✱ Capacity: How many people assigned in a 6 months window.
- 3.5 are applied across all milestones (Franck, Aaron, 1/2 Hanno, Tanya), 1 core research cc was awol for 5 weeks.

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
| Codex               | Formalize and Expand Waku Web Apps: More Codex Integrations     | Yes                            |
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
| Infra          | Maintain Waku fleet, apply config changes requests, deploy new nodes for metrics        | Yes                            |
| Vac-SC         | Support of functional extension of RLN Smart Contract                                   | Yes                            |

## Funding and Resources (By Strategic Objective)

### Rolled-Up By Strategic Objective

https://notes.status.im/E_bcw7cLR36QKI39k-PlMg#

3.5 are applied across all milestones (Franck, Aaron, 1/2 Hanno, Tanya), 1 core research cc is awol.
Not full 6 months planned, see above for contingency.

| Strategic Objective                  | People† | 
|--------------------------------------|---------|
| Logos Vision - Core Values Alignment | 4       |
| Logos Movement Community Enabling    | 8       |
| Logos Movement Module Build Out      | 5       |

† Rounded to express relative allocation to the different objectives.

### Budget Consultation

| Headline Activity       | Status                            |
|-------------------------|-----------------------------------|
| Financial Review Status | [new,renew,review,approved]       | 
| Finance Comments        | please add comment rows as needed |                                         |

### By Resource

| Resource Headline Item  | People | Comment                                       |
|-------------------------|--------|-----------------------------------------------|
| Present Resource        | 20     |                                               |
| Additional Resource Ask | 1      | backfill - Logos Movement Community Enabling‡ |
| PeopleOps Informed      | Yes    |                                               |

‡ This would enable tackling following deliverables earlier:

- Porting new chat protocols to the browser
- NodeJS SDK, second most demanded SDK - and stabilizing usage of JS in desktop and mobile
- Dev Ex improvement on Web API (e.g. local first message caching)

### PeopleOps Consultation

| Review Status | [new,renew,review,approved]|    
| Review Comments | [new,renew,review,approved]|

## ⚠️ Keys Risks Identified & Controls

| Risk                                            | (Accept, Own, Mitigation)                                                                                                                                  |
|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Cryptographic primitives in Nim                 | Expect to nim-wrap existing Rust/C libraries - will consult with Vac to lean towards libraries already used in Nim/IFT ecosystem.                          |
| Timeline uncertainties for research items       | Focus on iterative delivery of usable deliverables, to get early feedback and direction and lower cost of failure.                                         |
| Nim ecosystem and tooling maturity              | New initiative to foster Nim community within IFT, work closely with Vac/Nim re tooling, block time to migrate to Nimble.                                  |
| RLN UX                                          | Integrate in web apps, continue dogfooding and iteration, close collaboration with Status.                                                                 |
| Readiness of status-go for Chat SDK integration | Weekly sync up on chat sdk and status-go refactoring topics between Waku and Status teams, collaborative planning done to align goals and API.             |
| nwaku performance in Status/Chat context        | benchmarks are still wip, we are prepared for potential performance improvement needs in mobile context, as it is a critical point for Status application. |

## ✅ Key Observations

- Exciting 6 months ahead with clear path on how to deliver value to both Status and the Logos Community with the same effort.
- Improving work tracking with Vac-DST/Vac-QA, discussion is ongoing to better integrate Waku FURPS in Vac planning.
- We now have a breaking change strategy for Status items.
- Aiming more of a team rally behind milestones, dev milestones are now larger and contain more items that can be done in parallel, so that most of the team work on same milestone together.
- Focus on more frequent milestone delivery, by avoiding intra-dependency of items in milestone.
- Increasing collaboration between research and engineering teams, to ensure early unblocking and neat wrap-up of items. 
- The "Waku (Messaging) API" was initially a tidy up task, as Waku was already integrated in Status. With a focus towards Chat SDK and growing a developer community, it became an urgent-important item.
- Intent to continue internal hackathon initiative with 2 more occurrences in 2025 (tentatively July and October).
- Will attempt to secure one grant with minimum extra commitments (foreseeable commitments are wrapper for a specific language or writing RLN smart contract in non-EVM language).
- Moving one js-waku developer to chat/app team to develop Forum/OpChan app and library for H2.