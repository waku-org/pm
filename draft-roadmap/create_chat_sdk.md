# Create MVP ChatSDK

**Estimated date of completion**: 2025/08/19

**Resources Required for 2025H2**:
- 1 Chat Research 
- 1 Engineer

**Risks**
- (Schedule)(High) - Lack of Nim experience: Nim is a new language to many who will be performing this work, and will require skillup to be effective. Delays and high bug counts are possible due to underestimating effort required to become proficient. Leveraging existing nim knowledge on the team will help mitigate this risk.

- (Organizational)(Medium) - Direction Alignment: Currently the chat usecase does not have a  Security Model and Privacy Model defined from which to drive development. These will need to be drafted while work begins. Given these documents will have wider impact in the org and community there is a risk that consensus will take longer than anticipated, stalling development. Mitigation involves documenting the targeted approach and socializing it as early as possible. Following the Protocol Design Framework outlined for chat usecases will help decompose work areas making partial consensus easier to reach. 

- (Schedule)(Medium) - Cryptographic Primitives: There is an assumption that the cryptographic libraries needed for the success of this project are available and in a usuable state. To mitigate, early tasks will involve spikes to find appropriate libraries and derisk their usage their state. Extra time spent preparing crypto libraries / porting will result in delays. 

- (Technical)(Low) - Uncertain Performance: Performance targets for bandwidth are hard to quantify at this stage. They are listed as `P1` in the FURPS. While these targets appear reasonable (125 bytes per second per user) that remains to be seen. This is hard to mitigate as the SDK cannot be profiled until late in the developement cycle, making adjustments difficult.

This milestone is complete when a development preview of the Chat SDK is published and made available to the community.

The SDK is intentionally minimal—focused solely on proving the usability of the core approach. It supports 1:1 chat with out-of-band contact discovery and includes supporting implementations to help developers get up and running quickly.

The primary goal is to deliver a usable library that developers can build with today, while laying a flexible foundation for future extensions such as group chats and identity. Releasing early as possible maximizes feedback time and interation speed.

Motivations for the work are described [here](https://forum.vac.dev/t/chatsdk-motivations/501).


**FURPS**: [ChatSDK](/FURPS/application/chat_sdk.md)

**GitHub Milestone and deliverables**: <TODO>

## [ChatSDK - Developer Preview ](https://github.com/waku-org/pm/issues/<TODO>)

**Owner**: Chat Research

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

- P1. 10K active SDK users on a single shard add no more than an average of 10Mbps to the total bandwidth; based on clients generating 100 Character ChatMessages, 4 times per minute.

- S1. Messaging integrates Waku RLN, supporting configuration, and limited outbound message per epoch.
- S2. Payload definitions are versioned to support future protocol updates.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)


## [ChatSDK - Bindings ](https://github.com/waku-org/pm/issues/<TODO>)

**Owner**: Chat Eng

**Feature**: [Bindings](/FURPS/application/chat_sdk.md)

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
