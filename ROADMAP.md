# Waku Roadmap

This live document acts as a high overview of the work likely to be tackled for Waku.

This is not a commitment or planning document, it is aimed to be used as a discussion starter to prioritized and plan
work.
Actual planning and execution is done through GitHub issues and [milestones](https://github.com/waku-org/pm/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3Amilestone).

Definition and scoping strategies for a milestone are TBD.

## Research Milestones

WIP

## Engineering Milestones

### Node Bandwidth Management Mechanism

Finish https://github.com/waku-org/pm/issues/66.

### User Pays Own RLN Membership

Provide a developer-ready API for a user to generate their own credentials and insert them.

Ref: (A) https://github.com/waku-org/pm/issues/102

### Project Pays RLN Memberships for Users

Provide a developer-ready API and software to enable developers to fund membership for users.
Some concession regarding the privacy of the developer/project infra may be acceptable (e.g. project hosts a REST API to
exchange private commitment).

Ref: (B) https://github.com/waku-org/pm/issues/102

### Special User Pays RLN Memberships for Other Users

This is a continuation of [Project Pays RLN Memberships for Users](#project-pays-rln-memberships-for-users).
However, requirements are stricter to preserve the privacy of the special user.

Ref: (C) https://github.com/waku-org/pm/issues/102

### RLN Credentials Security and Multiple Devices

Define how users should handle their credentials and provide the tooling for it.
Define whether RLN credentials should be shared between application or devices.
May also scope the work to enable sharing credentials between devices, or done as separate milestone.

### Composing Waku Protocols to Improve Reliability

Provide recommendation in a form of a library to compose the Waku protocols to minimize message loss at a protocol level.
This is both for relay and non-relay node.
The aim is to provide an opinionated library that use Waku in a generalized manner.
The library may not fit all use-case and can always be bypassed or forked.
Finally, the expectation is not 100% reliability but simply increased reliability for common scenarios.
Application level solution for more certitued are covered as part of [Minimum Viable Data Synchronization](#minimum-viable-data-synchronization).

### Fault-Tolerant Usage of Web3 Providers

Review the usage of Web3 Providers and provide a fault-tolerant strategy to ensure that The Waku Network cannot be DOS'd by Web3 Provider outage.
Strategies such as the software ability to fallback to alternative providers or usage of Ethereum Light Client and Portal network should be considered.

### Waku Relay and Discv5 in a Hostile, Restricted or Subpar Online Network

Proceed with a multi-client analysis of Waku Relay's performance in a somewhat online hostile or subpar network and the ability for a relay node to remain connected when said network:
- Hackathon with poor internet connectivity
- prevent incoming connections
- Usage of proxy or VPN to access Internet
- Mix of WAN/LAN configuration.
- Usage of IPV6

Note: Bluetooth, network mesh and internet outage are not in the scope of this milestone. 

### TLS-less Browser Connections

Enable node operators to serve js-waku browser clients without acquiring a domain name.

### Relay in The Browser

Understand and progress on the viability of using Waku Relay in the browser.

### NodeJS Library

Provide a NodeJS package to enable user to run a relay node with Node.

### Waku React Native

Provide a functioning React Native library on both Android and iOS.
Likely using js-waku to enable multi-platform development (browser, iOS, Android).

### JSON RPC Deprecation

Deprecate nwaku and go-waku JSON RPC API and replace its usage with REST API across the repos (tests).

### General Status Support

Prioritize Status requirements, bugs or issues.

### Developer Experience Feedback

Expected to receive and action feedback from the usage of Waku libraries.
Feedback may be consolidated in a milestone.

### Operator Feature Requests

Not a milestone per se.
Review and potentially implement operator request feature requests.
Requests may come from Status Community operators.

## Chat SDK Milestones

### Static Sharding Integration in Status

Complete static sharding integration in Status app and provide support for any issue encountered.

### Status Community Scaling

See https://github.com/vacp2p/research/issues/177

### Chat SDK PoC 1

TODO: decide on the scope of a first JS SDK for Chat.
This is likely to include accommodating the selected protocols to use the Waku Network Gen 0.

### Minimum Viable Data Synchronization

Provide a Minimum Viable Data Synchronization protocol that developer can use to ensure the delivery of messages in their protocol.
Note the [protocol](https://rfc.vac.dev/spec/2/) and a [Golang library](https://github.com/vacp2p/mvds) already exist.
The aim is to review and improve the protocol and library using Status feedback, implement the protocol for the browser and provide documentation.

### Ethereum Address to Secure Channel

Working MVP of https://rfc.vac.dev/spec/70/.
