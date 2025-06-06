# [Hardening and Scaling Foundations for Private Chats](https://github.com/waku-org/pm/milestone/40)

**Estimated date of completion**: TODO (only Private chat rate limit PoC remaining)

**Resources Required for 2025H2**: TODO
- {roles and % application to it}
- {external services consumed (Vac/IFT)}
- {infrastructure}

With this milestone, we establish a foundation for scaling one-to-one and private group chats to support a larger
number of users. Additionally, we will harden the underlying protocols by studying and refining the current
specifications, as well as isolating user traffic from other features.

Our approach to RLN integration will involve two initial steps. First, we will implement a low rate limit and
collaborate with the Status team to address the user experience challenges that arise. By combining this with clear
specifications, we will be able to better understand scalability for one-to-one chats, including the relationships
between user count, usage, and bandwidth/resource utilization.

Furthermore, the enhanced specifications will enable the Vac-QA team to expand test coverage, increasing confidence in
reliability and facilitating any future refactoring efforts.

To achieve this milestone successfully, it is essential that one-to-one chats are isolated from other features using
Waku, such as Communities, user settings backup, and device pairing/synchronization. Ideally, these features should be
either removed or disabled by default to ensure accurate testing and evaluation.

**Private chats refers to both one-to-one and private group chats.*

**FURPS**:

- [Status Private Chats](/FURPS/application/status_private_chats.md): all

**Milestone and deliverables**: https://github.com/waku-org/pm/milestone/40

## Scope Changes

1. **Specify Private Chat Protocol**: We stop the exercise here, meaning that we don't formally update/add to Status specs/RFC.
   A justification to write a new protocol stack has been [published](https://forum.vac.dev/t/chatsdk-motivations/501). 
2. **Private chat rate limit PoC**: Work to be completed to help with reliability. No further RLN integration planned.
3. **Global Network Metrics**: Moved to a new milestone - [Improve DevEx: API, TWN, Metrics, Docs](improve_devex_api_twn_metrics_docs.md). 
4. **Baseline benchmarks**: Handing over to Vac/DST
5. **status-cli**: Handing over to Vac/QA