# Signal Network PoC FURPS

## Functionality

1. Establishes a direct connection between two peers using Waku as a signaling layer

## Usability

1. Developers have access to a simple API: single entry `connect` function and event-based inbound handling.

## Reliability

1. End-to-end reliability is implemented for the signaling conversation.
2. No provided reliability for established connections, left to the developer (e.g. keep alive).

## Supportability

1. Developers can use this protocol in web application, imported from npmjs.com.
2. Developers can use this protocol to initiate WebRTC connections.

## + (Privacy, Anonymity, Deployments)

1. Signaling payloads are end-to-end encrypted.
2. STUN and TURN servers may be required for WebRTC usage.