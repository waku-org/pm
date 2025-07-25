# Waku's requirements on Status

## Minimal Test UI

Chat SDK needs an slimmed down version of Status to perform testing. 

Features such as Wallet, Communities, etc, can add complexity and noise to the testing process. 
To test the ChatSDK effectively a version of the Status application which only implements the required features for private chat are needed.

### Functionality

1. Ability to create Identity
1. Create new conversations from introduction
1. View Conversations

1. Ability to send messages 
1. Ability to receive messages automatically in the background
1. Notifications are posted when receiving new messages.

### Usability

### Reliability

### Performance

### Supportability

**+ (Privacy, Anonymity, Censorship-Resistance, Deployments)**

## Migration Preparation

To complete ChatSDK integration without issues, Status needs to prepare the existing code base. 
Focus is on creating abstractions and planning for breaking changes.

The ChatSDK takes a different approach to managaging conversations, and is incompatible with the existing application. To smooth the integration process starting on these adaptations now, provides the fastest integration possible.

### Functionality

1. Isolate chat internals from application so they can be replaced effectively. 
1. Stored user level conversations are isolated/inpedendant from the transport used.
1. Add facade to isolate dependency on Waku.

### Usability

### Reliability

### Performance

### Supportability

1. Document strategy for managing conversations through the upgrade.
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
