# Mixnet FURPS

## Functionality

1. Relay nodes can mount mixnet protocol, acting as sender, intermediary or exit nodes.
2. Nodes can discover other nodes that support mix using available peer discovery mechanisms
3. Client nodes can send light push requests over the mixnet before delivery to a service node.
4. Client nodes can receive a response to a light push request over the mixnet.

## Usability

## Reliability

## Performance

- P1. Payload (store query, light push message) are limited to 4kB

## Supportability

1. `wakunode2` for intermediary and exit nodes.
2. nwaku CLI for sender nodes.
3. Browser based apps built using js-waku should support acting as entry nodes.

## + (Privacy, Anonymity, Deployments)
