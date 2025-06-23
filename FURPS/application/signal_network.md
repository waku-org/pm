# Signal Network PoC FURPS

TODO: Update in deliverable

## Functionality

1. Advertise intent to join a given session.
2. Discover remote peers willing to join a given session.
3. Establish direct connection to remote peer with same intent to join a given session.

## Usability

1. Developers sets arbitrary session identifier.
2. Developers selects discovered to connect to. 

## Reliability

1. End-to-end reliability is implemented for the signaling conversation.
2. No provided reliability for established connections, left to the developer (e.g. keep alive).

## Supportability

1. Developers can use this protocol in web application, imported from npmjs.com.
2. Developers can use this protocol to initiate WebRTC connections.

## + (Privacy, Anonymity, Deployments)

1. Network observers cannot retrieve node connection details without knowing session identifier.
2. STUN and TURN servers may be required for WebRTC usage.