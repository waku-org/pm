# Waku API FURPS

(proposing to move away from "messaging api" to avoid confusion)

## Functionality

1. Setup, start and stop a Waku node.
2. Support edge node operation mode.
3. Support relay node operation mode.
4. Does automatic peer discovery based on the node platform and operation mode.
5. Returns health and connectivity information using proven heuristics.

## Usability

1. When setting up a Waku node, no need to specify what protocols to mount, only an operational mode (edge or relay).
2. Disconnection detection and recovery, and other peer management matters are automatically handled.
3. Developers do not need to specify the protocols used to send and receive messages; it is deduced from the mode of operation.
4. Developers pass and receive data to the API in types native to the wrapping language.
5. By default, auto-sharding is applied, meaning developers do not need to be concerned by sharding; pubsub topics are never exposed.

## Reliability

1. Sends a message using peer-to-peer reliability (service node redundancy for edge, optional store confirmation)
2. Receives messages using peer-to-peer reliability (service node redundancy for edge, periodic store query, periodic filter ping)

## Performance

## Supportability

1. Nim library
2. Golang library
3. Browser

## + (Privacy, Anonymity, Deployments)

1. ...