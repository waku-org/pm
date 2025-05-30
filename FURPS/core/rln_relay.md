# RLN Relay FURPS

## Functionality

1. Light push service node can attach RLN proof for clients.

## Usability

1. Light push clients do not need RLN logic.

## Reliability

1. Relay node can fallback to alternative RPC endpoints
   if the primary Web3 RPC provider becomes unavailable.

## Performance

1. In a network of 10k RLN Relay nodes with each node sending one 1-100KB message every 10-30s,
   messages are propagated within 500ms, with 99.9% success **(Vac-DST)**.
2. In a network of 10k RLN Relay nodes,
   a spamming node will be disconnected from its peers in under 1 min. **(Vac-DST)**

## Supportability

1. Service node proof generation for light push clients is available in `wakunode2` for browser clients.

## + (Privacy, Anonymity, Deployments)

1. Service node proof generation for light push clients is deployed on TWN.
2. Service node proof generation for light push clients is enabled by default in nwaku-compose.

