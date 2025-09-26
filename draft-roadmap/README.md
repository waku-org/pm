# Waku Draft Roadmap

**Most of the below is being moved to [2025H2 Summary](../2025H2-SUMMARY.md)**, which is now the master document.

Finalised roadmap and milestones can be found on the [Logos roadmap](https://roadmap.logos.co/waku/).

Period in planning: 2025 H2

## Proposed Priorities

### Whole Team

1. **Support Status application**: continue integration of nwaku and provide new chat protocol stack. 
2. **Support Logos Core**: ensure that any library and API we push to developers can be consumed in Logos Core; review and prioritize any requirements coming from Logos Core project contributors and developers.
3. **Developer and Contributor Experience:** Review and improve dev assets (docs) and set quality expectation across the team (docs provided with deliverables, etc); Review and take action to improve developer and contributor experience (nimble usage, vscode plugin, etc).

### Core Team

1. **Complete integration of nwaku in Status Desktop** (H1)
2. **Simplify a reliable Waku API:** aka Messaging API, make it easier to consume Waku library; critical to enable easy development of Chat SDK.
3. **Upgrade Waku for the Web**: Ensure web applications built on The Waku Network are reliable.
4. **RLN mainnet and API:** Continue RLN migration to onchain tree + L2 testnet, and necessary steps to get RLN on mainnet; provide simple API for Chat SDK.
5. **[Nwaku in Status Mobile and Light Mode MVP](https://github.com/waku-org/pm/milestone/39)**: de-prioritised in favour of cleaning up Waku and RLN APIs for Chat SDK first.
6. **nwaku performance improvement**: Performance on mobile is critical, hence we will review benchmarks and potentially dedicate effort to this topic
(note there is some ongoing effort from Status fleet behaviour).

#### Research Items

1. RLN (as above)
2. **Incentivisation:** Deliver incentivisation PoC for reliability, scalability, risk (running own fleet) and sustainability.
3. **Decentralisation and privacy**: continue research work to further decentralised Waku protocols, specifically store, and increase anonymity properties with libp2p-mixnet

### Chat/App Team

1. **Chat SDK:** Build a chat SDK (new protocol), learning from Status’ experience. Focus for an iterative delivery of the foundational blocks. Targeting private chats and early RLN integration.
   1. Note that building blocks such as identity mgmt are being built for demos app like Qaku - alignment to define and provide common protocols is expected as we are not limited by existing Status chat protocol.
   2. Work in close partnership with the status-backend developers, to ensure that post-refactoring the SDK can be integrated with the least effort possible. Aim for early and iterative integration.
   3. Note that early Status backend design position chat SDK as backend for Communities too; early iteration may not provide the scale in terms of members per communities; but Status' requirement is noted. 
   4. Minimum deliverable will be usability of Chat SDK in Logos Core; need to review the architecture expectation in terms of Logos Core plugin interaction chat sdk <> nwaku.
2. **Build demos and PoC apps**: Continue building PoC apps to teach how to hunt, dogfood and battle test libraries; as well as throwing ideas in the wild, experimenting and seeing what sticks; promising apps will have lib and specs implemented (e.g. Qaku and Logos Forum).
   1. Potentially expand the relevant platforms: from Web to Logos core, Nim/seaqt, Rust, etc.
   2. Integration with Codex still planned under this umbrella
   3. Review Logos Forum (Opchan) requirements; the 2025 Logos Movement Strategy is the new customer.

### Business and Ecosystem Development Team (BD + Solution Eng)

1. **Measure Success:** Develop and deploy tools to measure Waku success in terms of users, developers and contributors across all known Waku networks (Status, RAILGUN, TWN, etc)
    1. In partnership with BI.
2. **Waku Chat MVP:** Proceed with the same exercise done for [Waku MVP](https://www.notion.so/Waku-MVP-1838f96fb65c8039acabf8a6a1e689e7?pvs=21).
   Consult with current and new leads on their *ideal* Chat SDK.
   Understand how confident we are they would onboard on Waku if it is delivered and feedback to Chat/App team to take in account for prioritization.
3. **Support integrations**: support projects that want to build with Waku SDK and Chat SDK. 
4. **Foster and join Nim ecosystem (nwaku):** Foster and participate in the Nim developer community inside and outside IFT.
5. **Join FOSS ecosystem:** Be an active part of the FOSS developer community.
6. **Continue planned Rust SDK work**: Messaging API and stable nwaku integration in Status Desktop and pre-requisites to a quality Rust SDK.

### Status Priorities Review

**Existing milestones**:

- [Hardening and Scaling Foundations for Private Chats](https://roadmap.logos.co/waku/milestones/open/2025-hardening-and-scaling-foundations-for-private-chats): finishing off the work and descoping items that have been identified as unneeded.
- [Nwaku in Status Desktop (Relay only)](https://roadmap.logos.co/waku/milestones/open/2024-nwaku-in-status-desktop): work continues, close to completion. 
- [Nwaku in Status Mobile](https://roadmap.logos.co/waku/milestones/open/2025-nwaku-in-status-mobile): deprioritized in favour of improving API for new Chat SDK
- [e2e reliability protocol](https://roadmap.logos.co/waku/milestones/open/2024-e2e-reliability-protocol): work continues, close to completion.
- [Foundation for Communities Optimization](https://github.com/waku-org/pm/milestone/31): this includes finishing a migration, and move community traffic away from 1:1 chat so we complete the work.

**New work and priorities**:

1. New Chat SDK (nim) and protocol stack

## Draft Milestones

Testing out new format, once approved:

- Milestones are copied to Logos roadmap
- Deliverables are copied to GitHub issues
- Waku FURPS remains in [FURPS](/FURPS/README.md)

In order of priority.

### To finish in H1

| Milestone                                                                                                  | End Date       | core res | js-waku | nwaku | app-chat |
|------------------------------------------------------------------------------------------------------------|----------------|----------|---------|-------|----------|
| [Introduce E2E Reliability in Status Communities](introduce_e2e_reliability_in_status.md)                  | 31 Aug         |          |         |       | 1        | 
| [Foundation for Communities Optimisation](foundation_for_communities_optimisation.md)                      | 31 Oct         |          |         |       | 1        | 
| [Hardening and Scaling Foundations for Private Chat](hardening_and_scaling_foundation_for_private_chat.md) | Completed/Drop |          |         |       |          | 
| [Integrate nwaku in Status Desktop, relay mode only](integrate_nwaku_in_status_desktop_relay_mode_only.md) | 30 Jun         |          |         | 2     |          |
| [Deploy RLN Onchain Tree on L2 Testnet](deploy_rln_onchain_tree_on_l2_testnet.md)                          | 30 Jun         |          |         |       |          |

### H2 Milestones

Total people-month available `16.5 p(eople) * 6 m(onths) = 99 p-m`.
(Franck, Aaron full time mgmt/leadership/eco dev/comms, Hanno half-time, Tanya as test engineer)
✧ One core research CC AWOL.

|              | core res p/p-m | js-waku p/p-m | nwaku p/p-m | app-chat p/p-m | BD p/p-m |
|--------------|----------------|---------------|-------------|----------------|----------|
| Available    | 3.5/21✧        | 2/12          | 4/24        | 5/30           | 1/6      |
| Work planned | 3.2/19         | 1.5/9         | 2.25/13.5   | 4.7/28         | 1/6      |

Note: low allocation on nwaku due to
- high risk on nim activities
- general support to research and now chat team.
- performance uncertainty, especially for mobile (benchmarks in status are wip)

| Priority | Milestone                                                                               | End Date | core res | js-waku | nwaku  | app-chat | BD   | Capacity✱ |
|----------|-----------------------------------------------------------------------------------------|----------|----------|---------|--------|----------|------|-----------|
| 1        | [Define Incentivisation for RLNaaS](define_incentivisation_for_rlnaas.md)               | 31 Jul   | 1.5*1m   |         |        |          |      | 0.4       |
| 2        | [Improve DevEx: API, TWN, Metrics, Docs](improve_devex_api_twn_metrics_docs.md)         | 31 Aug   | 1*1m     | 2*2m    | 1.5*2m | 1*1m     |      | 2.1       |
| 3        | [Introduce mixnet for message sending](introduce_mixnet_for_message_sending.md)         | 30 Sep   | 1*3m     |         |        |          |      | 0.7       |
| 4        | [Formalize and Expand Waku Web Apps](formalize_and_expand_waku_web_apps.md)             | 19 Dec   |          |         |        | 1.5*6m   |      | 2.1       |
| 5        | [Create Chat SDK MVP](create_chat_sdk_mvp.md)                                           | 30 Sep   |          |         |        | 3*3m     |      | 2.1       |
| 6        | [Harden RLN Testnet Deployment](harden_rln_testnet.md)                                  | 30 Sep   | 1*1.5m   | 1*1m    |        |          | TODO | 
| 7        | [Integrate RLN with Waku API](integrate_rln_with_waku_api.md)                           | 30 Sep   | 1*1m     | 1*2m    | 2*2m   |          |      | 1.7       |
| 8        | [Streamline DevEx: Mobile, Rust and Web dev](streamline_dev_ex_local_dev_rust.md)       | 30 Nov   |          | 2*6w    | 3*6w   |          |      | 1.2       |
| 9        | [Extend Chat SDK with Group Conversations](extend_chat_sdk_with_group_conversations.md) | 19 Dec   |          |         |        | 2*3m     |      | 1.4       |
| 10       | [Incentivisation and Marketplace Follow-up Outline](incentivisation_follow_up.md)       | TBD      | 2.5*5m   |         |        |          |      | 3         |
| 11       | [Nim Usage Improvements](nim_usage_improvements.md)                                     | 19 Dec   |          |         | 1*2m   |          |      | 0.5       |
| 12       | [BD - Acquire 10 Customers](acquire_first_10_customers.md)                              | 19 Dec   |          |         |        | 0.5*6m   | 1*6m | 2.1       |

✱ Capacity: How may people assigned in a 6 months window. Adjusted to 70% allocation for support.

Pushed to 2026H1/Next on the list
- WebTransport: depending on nim-libp2p (delivery Q4)
- Implementing Waku API in REST: Useful for DST/QA, but let's focus on Status, Chat SDK, and Rust first
- Delivering NodeJS SDK.
- nwaku performance on mobile: depending on benchmark results
- New entry points for RLN, in addition to deposit (e.g. Karma holder or SNT staker)
- Message caching/database within Waku SDK
- Migration strategy and compliance layer for Status protocol vs Chat SDK
- ?Reinforced integration of discv5 protocols (mDNS, discv5 feeding from peer-exchange)
- new discovery protocol

## Gantt

```mermaid
gantt
    title Waku 2025H2
    dateFormat YYYY-MM-DD
    axisFormat %b
    section core research (6)
        Define Incentivisation for RLNaaS: 2025-07-01, 2025-08-01
        Improve DevEx: 2025-08-01, 2025-08-31
        Harden RLN Testnet Deployment: 2025-08-01, 2025-09-30
        Integrate RLN with Waku API: 2025-09-01, 2025-09-30
        Mixnet: 2025-07-01, 2025-09-30
        Incentivisation and Marketplace Follow-up: 2025-08-01, 2025-12-31
    section js-waku
      Improve DevEx (API): 2025-07-01, 2025-08-31
      Improve DevEx (TWN): 2025-07-01, 2025-08-31
      RLN Library: 2025-08-01, 2025-09-30
      Streamline DevEx: 2025-10-01, 2025-11-30        
    section nwaku
        Improve DevEx (API): 2025-07-01, 2025-08-31
        Improve DevEx (TWN): 2025-07-01, 2025-08-31
        RLN Library: 2025-08-01, 2025-09-30
        Streamline DevEx (Mobile, Rust): 2025-10-01, 2025-11-30
        Nim Usage Improvements: 2025-11-01, 2025-12-31
    section app-chat
        E2E Reliability: 2025-07-01, 2025-08-01
        Communities Opt: 2025-07-01, 2025-08-01
        Improve DevEx (metrics): 2025-08-01, 2025-09-01
        Create Chat SDK: 2025-07-01, 2025-09-30
        Extend Chat SDK: 2025-10-01, 2025-12-31
        Formalize and Expand Waku Web Apps: 2025-07-01, 2025-12-31
```