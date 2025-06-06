# Create MVP ChatSDK

**Estimated date of completion**: 19 Aug 2025

**Resources Required for 2025H2**:
- 1 App/Chat Researcher 
- 2 App/Chat Engineers

The SDK is intentionally minimal—focused solely on proving the usability of the core approach. It supports 1:1 chat with
out-of-band contact discovery and includes supporting implementations to help developers get up and running quickly.

The primary goal is to deliver a usable library that developers can build with today, while laying a flexible foundation
for future extensions such as group chats and identity. Releasing early as possible maximizes feedback time and
interaction speed.

Motivations for development of a new chat protocol are described [here](https://forum.vac.dev/t/chatsdk-motivations/501).

**Risks**:

- (Schedule)(High) - Lack of Nim experience: Nim is a new language to many who will be performing this work, and will
  require skill-up to be effective. Delays and high bug counts are possible due to underestimating effort required to
   become proficient. Leveraging existing Nim knowledge in the team will help mitigate this risk.
- (Organizational)(Medium) - Direction Alignment: Currently the chat use case does not have a Security Model and Privacy
  Model defined from which to drive development. These will need to be drafted while work begins. Given these documents
  will have wider impact in the org and community there is a risk that consensus will take longer than anticipated,
  stalling development. Mitigation involves documenting the targeted approach and socializing it as early as possible.
  Following the Protocol Design Framework outlined for chat use cases will help decompose work areas making partial consensus easier to reach.
- (Schedule)(Medium) - Cryptographic Primitives: There is an assumption that the cryptographic libraries needed for the
  success of this project are available and in a usable state. To mitigate, early tasks will involve spikes to find
  appropriate libraries and de-risk their usage their state. Extra time spent preparing crypto libraries / porting will
  result in delays.
- (Technical)(Low) - Uncertain Performance: Performance targets for bandwidth are hard to quantify at this stage. They
  are listed as `P1` in the FURPS. While these targets appear reasonable (125 bytes per second per user) that remains to
  be seen. This is hard to mitigate as the SDK cannot be profiled until late in the development cycle, making
  adjustments difficult.

This milestone is complete when a development preview of the Chat SDK is published and made available to the community.

**FURPS**: [ChatSDK](/FURPS/application/chat_sdk.md)

**GitHub Milestone and deliverables**: <TODO>

## ChatSDK Developer Preview

**Owner**: App/Chat Research

**Feature**: [Chat SDK](/FURPS/application/chat_sdk.md)

**FURPS**:
- F1. Accounts can be created in a permissionless way, to communicate on the network.
- F2. Accounts can send messages to conversations with one other participant.
- F3. All conversations benefit from forward secrecy and post-compromise security.
- F4. Sender gets confirmation of message reception by recipient device.
- F5. Developers can create their own payload types or use supplied basic types.
- F6. Sdk contains a default message database for developers.
- F7. Sdk contains a default secrets database for developers.

- U1. Secure session setups are non-interactive, allowing messages to be sent without waiting for the recipient's device to come online.
- U2. Conversations are initiated by sharing invite links out-of-band.
- U3. Minimal example of the ChatSDK is no more than 25 lines of code.

- R1. Participants in a conversation can eventually determine whether they missed messages.

- P1. 10K active SDK users on a single shard add no more than an average of 10Mbps to the total bandwidth; based on clients generating 100 character chat messages, 4 times per minute.

- S1. Messaging integrates RLN-like rate limit, limiting outbound messages per epoch.
- S2. Payload definitions are versioned to support future protocol updates.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)


## [ChatSDK - Bindings ](https://github.com/waku-org/pm/issues/<TODO>)

**Owner**: App/Chat Dev

**Feature**: [Chat SDK](/FURPS/application/chat_sdk.md)

**Dependencies**: [ChatSDK - Developer Preview ]

**FURPS**:

For library ChatSDK:
- U3. Minimal example of the ChatSDK is no more than 25 lines of code.
- S3. library can be used in Go applications. 
- S4. library can be used in Rust applications

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Create Segmentation Library

**Owner**: App/Chat Dev

**Feature**: [Segmentation](/FURPS/application/segmentation.md)

**FURPS**:
- F1. Outbound messages larger than the maximum Waku message size are partitioned in several messages to fit in Waku messages.
- F2. Inbound partitioned messages are reconstructed in a whole message.
- F3. A capping limit is applied to pre-segmented messages (e.g. 100MB).
- F4. Messages under the maximum message size are not modified. 

- U1. Only takes a maximum message size as a parameter.

- R1. Reconstruction can be performed even when parts are received out or order.
- R2. Reconstruction can be performed as long as 87.5% of the segments is received.
- R3. If too many parts missing to reconstruct an informative error should be logged.

- P1. The payload overhead does not exceed 12.5% overall, and 100 bytes per segment.

- S1. Nim
- S2. Golang
- S3. Rust

- +1. Segmentation metadata should not reveal information about the original message content
- +2. Relevant for all Waku nodes

**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)

## Create Rate Limit Manager

**Owner**: App/Chat Dev

**Feature**: [Rate Limit Manager](/FURPS/application/rate_limit_manager.md)

**FURPS**:
- F1. Rate limit the number of messages passed to the delivery service.
- F2. The rate limit is set in a form of number of messages per epoch; same format as RLN Relay.
- F3. Tracks current quota and usage.
- F4. Messages can be flagged with three priorities level: critical, normal, optional.
- F5. When remaining message quota is low, critical messages are sent, normal messages are queued and optional messages are dropped.
- F6. When message quote is exhausted, critical messages are queued on top, normal messages are queued, optional messages are dropped.

- U1. Developer can mark messages with relevant priority.
- U2. Developer can pass messages by batch; with an all-or-none sending strategy.
- U3. Developer can access total quota and remaining quota values.
- U4. Message status is available to the developer (queued, dropped, passed to delivery service).

- R1. Errors and status from the underlying delivery service are available to the developer.
- R2. Queued messages are persisted across restart.
- R3. Quota status is persisted across restart.


**Checklist**:
- [ ] Specs: link to specs
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)