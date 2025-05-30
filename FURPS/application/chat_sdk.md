# Chat SDK

## Functionality

1. Developers can create an account in a permissionless way, to communicate on the network.
2. Accounts can send messages to conversations with one other participant.
3. All conversations benefit from forward secrecy and post-compromise security.
4. Sender gets confirmation of message reception by recipient device.
5. Developers can create their own payload types or use supplied basic types.
6. Sdk contains a default message database for developers.
7. Sdk contains a default secrets database for developers.

## Usability

1. Senders can use account level addresses to send messages.
2. Developers can create secure sessions asynchronously without needing remote accounts to come online.
4. Conversations are initiated by sharing invite links out-of-band.
3. Minimal example of the ChatSDK is no more than 25 lines of code.

## Reliability

1. Participants in a conversation can determine if a message is missing.

## Performance

1. Group chats can support 100 Installations.

## Supportability

1. Messaging integrates Waku RLN, supporting configuration, and limited outbound message per epoch.
2. Payload definitions are versioned to support future protocol updates.

## +Privacy

1. The network cannot correlate individual messages to a sender.
2. The network cannot correlate conversation to participants.
3. An AccountHolders activity is not visible to the network.