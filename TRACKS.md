# Tracks

The Waku ecosystem relies on the concept of _tracks_ to categorize its work.
These categories provide clarity about Waku's domain and help identify the open problems it seeks to address.

By defining these tracks, it also becomes easier to prioritize milestones and understand work capacity, as projects within the same track typically require the same individuals to work on them and should therefore be undertaken sequentially. 

Milestones should ideally be categorized in one main track.
It is likely that some work could be argued to belong to multiple tracks.
For example, service incentivization and operator experience are likely to overlap: service incentivization's goal is to bring more node operator on board.

Only milestones need to be categorized in a track, to help with planning.
Once a milestones is define, the subsequent epics and tasks do not need to have a track label.

Finally, this is a tool to be used to help with planning and tracking.

## Research Tracks

### Restricted Run

This covers research enabling resource restricted nodes, e.g. mobile or browser nodes, to benefit from the Waku network.

### Secure Scaling

This covers research on how to scale Waku without compromising on security and network reliability. All protocols and Waku network elements are considered within three main focus areas:

1. *Sharding*: horizontally scaling the network with sharding, including manual and automatic shard mapping strategies.
2. *Routing*: vertically scaling each gossipsub mesh/shard by improving usage of the gossipsub protocol.
  This includes fine-tuning fanouts, outbound degrees, publishing strategies and other gossipsub parameters. \
  Innovations in the routing protocol itself, such as backpressure during message propagation, advances in episub, etc. all fall under this focus area.
3. *Discovery*: Efficient and resilient discovery is an essential building block for all decentralized systems. The integrated discovery strategy needs to take into consideration:
    1. Network scale
    2. Sharding strategies
    3. Capability matrix of each node in a growing heterogeneous network

### Rate Limiting

This track covers rate limiting and spam protection techniques, which are crucial for a successful permissionless messaging system.
All Waku protocols are considered so that neither individual nodes nor the network can be DoSed by an attacker.
For now, RLN is the focus to protect the routing layer, while other mechanisms may be pursued to prevent DoSing of individual nodes.

### Protocol Incentivization

<!-- do we need a track around project sustainability? -->

The protocol incentivization track covers research on incentives for nodes to offer specific services and/or resources.
The goal is to take intrinsic incentivization as far as possible, and fall back to monetary incentivization where necessary.
Advancements in incentivization are essential for scaling Waku, making the network decentralized and performant.

### Security

While Waku offers good security properties, there are still some open problems.
These generally resort in three focus areas:

- anonymity protection (e.g. Waku TorPush)
- censorship resistance
- attack vectors and mitigation

### Message Reliability

The message reliability track covers research of secure and efficient ways to improve message reliability guarantees in the Waku messaging layer.
The first focus area is developing an asynchronous data synchronization protocol between nodes.
The immediate goal here is improving Waku Store to allow synchronizing store nodes.
This may build into an integrated reliable routing strategy to provide better delivery guarantees via Waku Relay or Waku Filter.

This does not include reliability than can only be done with application context knowledge.
Recommendations on how to reliably use Waku and examples of data integrity protocols would fit under [Developer Experience](#developer-experience).

### Simulations and Verification

This track covers small-scale simulations of Waku protocols.
This includes both the development of tools and models to run the simulations and the theoretical analyses of the results.
The main aim is to validate the functionality and performance of Waku Protocols, test new protocols and simulate attack models.

## Engineering Tracks

### Developer Experience

Waku is an infrastructure public good that enables anyone to develop applications with censorship-resistant communication.
Waku protocols can be _ideal_ but will not be used if they cannot be easily integrated in applications.

Every milestone should include documentation and examples as part of their output. 

Under this track, we ensure that it is easy to develop with Waku,
by the means of specific documentation, SDKs, bindings, examples and overall API changes that are purely done to improve the developer experience and outreach.

### Operator Experience

The Waku network cannot exist without operators running nodes.
Work to improve the onboarding experience of operators, provide the tools and documentation necessary to run their fleet and leverage incentivization, spam protection and other Waku protocols is tracked under _operator experience_.

### Performance and Optimization

<!-- What about "productionization" ? It seemed that such work can usually be classified either as operator experience, developer experience, QA or performance optimization. Keen to get feedback on this -->

The performance of Waku Software can positively or negatively impact the user experience of any application using Waku.
Here is tracked the work to benchmark, analysis software performance and improve it.
This tracks differentiate itself from [Research: Simulation and Verification](#simulations-and-verification) as it focuses purely on the software performance, whereas the later focuses on protocol performance and behaviour.

### Quality Assurance

Work to ensure the quality of of the software, with the focus on interoperability and end-to-end integration test is tracked with _quality insurance_.

Do note that most of the work under this track is owned by the Vac/DST team.

### Chat SDK

The Chat SDK track mirrors the work of the Waku Chat SDK team.
Under this track, work to improve Status Communities and other Status Chat protocols are identified.
This includes the efficient usage of Waku.

## Ecosystem Development Tracks

### Outreach

<!-- unlikely to use this track as I expecte such work to be tracked in a different manner than technical milestones -->

Track the work done grow the Waku ecosystem.

