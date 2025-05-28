# ChatSDK Extension: MultiInstallations + Groups

## Functionality

1. Accounts can receive a message in multiple locations by registering new installations.
2. Accounts can view and remove installations as needed.
3. Accounts can create GroupChats between multiple accounts.
6. SDK provides default MessageStore for developers.
7. Participants can set a group name and description for all participants in the group. 
8. Account can view all installations provisioned for themselves account.
9. Account can manage and revoke other installations incase of a lost device.

## Usability

1. Senders can use account level addresses to send messages.
2. Developers can create secure groupchats asynchronously without needing remote accounts to come online

## Reliability

1. Group Participants in a conversation can tell if a message is missing, and who sent it.

## Performance

1. The number of payloads for a group message does not scale with the number of group members.

## Supportability

1. TBD

## +Privacy

1. The network cannot correlate a group conversation to any of its participants.
2. No identifying information is visible when registering an installation