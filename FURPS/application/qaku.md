# Qaku FURPS

## Functionality

1. An owner can create public Q&As.
2. An owner can create a private Q&As where only selected participants can read the data, and participate.
3. Owner can close a Q&A, no more questions or answers are accepted.
4. Owner can schedule a Q&A to be opened in the future, allowing questions and answer only from then.
5. Owner can answer questions from a Q&A, an answer is attached to one and only one question; multiple answers per question are allowed.
6. Owner can moderate user questions by hiding them to users, such questions are still accessible as “moderated” to owner.
7. Owner can add a poll to an existing Q&A.
8. Users can answer polls, limited to one answer per poll per user.
9. Owners can close poll, stopping further answers to be accepted.
10. Owner can add and delete admins for a given Q&A.
11. Admins have same permissions as owners on Q&A, apart from adding and deleting admins.
12. All users are identified by an in-browser key pair generated upon first interaction.
13. Users can post questions on a Q&A they have access to.
14. Questions have a published timestamp, upvotes, related answers properties.
15. Users can upvote questions (1 upvote per user).
16. Users can export & import their in-browser identifying key pair (e.g. to multiple devices).
17. Owner have a list of Q&As they created.
18. Users have a list of Q&As they visited.
19. Owner can use ENS to prove they created a given Q&A.
20. Owner’s app backups data on Codex via local Codex node.
21. Data is automatically retrieved from Codex via local Codex node.
22. User can retrieve data from Codex network if missing from Waku (PoC).

## Usability

1. Users participating in a Q&A only need the Q&A ID and password (if encrypted).
2. Web3/wallet integration is optional for developers.
3. Developers do not need to understand or know about Waku to integrate Qaku.
4. Developers and Users do not need to understand Codex beyond local node setup to integrate Qaku.
5. Qaku Library API informs whether an outbound message (question, answer, poll, vote, etc) irremediably failed to send.
6. Qaku Library API informs whether an inbound message is missing from a Q&A.
7. The Qaku JS library contains all the functionality and exposes clean API.

## Reliability

1. The app connects within 30 seconds of starting.

## Performance

1. A user can load previously visited Q&A with a max of 100 questions+responses within 10 seconds.

## Supportability

1. The Qaku JS library works in both browser and NodeJS environments, desktop and mobile browser.
2. Codex local node related features are only supported on desktop.
3. Retrieval of data from Codex network from browser mobile and desktop (PoC).

## + (Privacy, Anonymity, Deployments)

1. Qaku's deployment uses The Waku Network