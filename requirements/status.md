# Waku's requirements on Status

## Minimal Test UI

Chat SDK needs an slimmed down version of Status to perform testing. 

Features such as Wallet, Communities, etc, can add complexity and noise to the testing process. 
To test the ChatSDK effectively a version of the Status application which only implements the required features for private chat are needed.

The application should include the least amount of complexity while also effectively mitigating integration risks.

### Functionality

1. Ability to create multiple Identities/Accounts
1. Ability to sign-in with single chosen Identity.
1. Ability to view received messages by conversation.
1. Newly created inbound conversations are displayed.
1. New Outbound conversations can be created.
1. Ability to send messages to an existing Conversation.
1. Ability to receive messages automatically in the background.
1. Notifications are posted when receiving new messages.
1. Encoding/encryption errors are logged and retrievable.
1. Missing messages in a conversation are visible to the user. 

### Usability

### Reliability

### Performance

### Supportability

1. App runs on Mobile
1. App runs on Desktop 

### + (Privacy, Anonymity, Censorship-Resistance, Deployments)

## Migration Preparation

To complete ChatSDK integration without issues, Status needs to prepare the existing code base. 
Focus is on creating abstractions and planning for breaking changes.

The ChatSDK takes a different approach to managing conversations, and is incompatible with the existing application. 
Preparing the code base in advance will reduce the integration time, and allow for faster feedback.

 To better offer support, it would be helpful for Waku to understand Status' approach to product decisions during this migration.
- Will Users be required to create new accounts? or Will the new Keytypes be bound to existing Identities?
- Will Conversations be migrated? Or will users be expected to create new conversations to use new features?
- What is the minimum amount of time users should be given to update before older versions are locked out?

### Functionality

1. Isolate chat internals from application so they can be replaced effectively. 
1. Stored user level conversations are isolated/independant from the transport used.
1. Add facade to isolate Waku dependency from existing codebase.

### Usability
1. Conversation encryption/encoding mechanism can be updated with a single line code change.

### Reliability

### Performance

### Supportability

1. Document strategy for managing existing conversations through the upgrade.
1. Document strategy for identity binding between new and old accounts.

**+ (Privacy, Anonymity, Censorship-Resistance, Deployments)**

## Status Fleets Ownership

[Placeholder - Cannot find an references to this Conversation]

### Functionality

### Usability

### Reliability

### Performance

### Supportability

**+ (Privacy, Anonymity, Censorship-Resistance, Deployments)**
