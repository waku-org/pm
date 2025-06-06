# Extend Chat SDK with Group Conversations

**Estimated date of completion**: 18 Nov 2025

**Resources Required for 2025H2**:
- 1 App/Chat Research 
- 1 App/Chat Engineer

Once done, apps like Status can build a chat experience which includes support for multiple device, and multiple
participants in a given group chat.

The features to said group chat will be limited, and extended with further milestones.

**Risks**:

- (Schedule)(Medium) - Task Dependency: This task is dependent on [ChatSDK - Developer Preview](create_chat_sdk_mvp.md).
  Delays there will translate into delays to this milestone.
- (Technical)(Medium) - Lack of Libraries: There currently does not exist the required libraries in Nim to build group
  chat. This will involve evaluating the potential of calling an existing library via FFI or implementing it from
  scratch. This can be mitigated by vetting existing library potential should occur early or finding security reviewers
  for nim implemented cryptography.
- (Technical)(Low) - Group chat is prone to bugs, even when using existing encryption protocols. Extra time has been
  allocated to testing and debugging in an effort to mitigate this, however it still remains a risk. 

**FURPS**: [Group Chat](/FURPS/application/group_chat.md)

**GitHub Milestone and deliverables**: <TODO>

## Add Group Chat

**Owner**: App/Chat Research

**Feature**: [Group Chat](/FURPS/application/group_chat.md)

**FURPS**:

- F1. Accounts can receive a message in multiple locations (e.g. devices) by registering new installations.
- F2. Accounts can view and remove installations as needed.
- F3. Accounts can create GroupChats between multiple accounts.
- F4. Participants can set a group name and description for all participants in the group. 
- F5. Account can view all provisioned installations.
- F6. Account can revoke other installations in case of a lost device.

- R1. Group Participants in a conversation can tell if a message is missing, and who sent it.

- P1. The number of network messages for a single outbound group message does not scale with the number of group members.

- +PRIV1. Non-participants cannot correlate a group conversation to any of its participants.
- +PRIV2. No identifying information is visible when registering an installation.

**Checklist**:

- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)


## Group Chat Bindings

**Owner**: App/Chat Dev

**Feature**: [Bindings](/FURPS/application/group_chat.md)

**FURPS**:

- S1. Developers can create group conversations from Go Applications; available on pkg.go.dev.
- S2. Developers can create group conversations from Rust Applications; available on crates.io.

**Checklist**:
- [ ] Specs: link to specs and/or API definition
- [ ] Code: link to GitHub issues/PRs/Epic
- [ ] Dogfood: link to dogfooding session/artefact
- [ ] Docs: links to README.md or docs.waku.org (TBD)
