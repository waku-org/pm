# Light Push FURPS

## Functionality

1. Enables light nodes to push messages to service nodes for relay to the network.
2. Requests service nodes to publish messages to WAKU2-RELAY shards.
3. Provides confirmation that a message has been received by at least one node.
4. Supports comprehensive error codes for various failure scenarios.

## Usability

1. Implements simple async request/response pattern.
2. Uses standard Waku Message format.
3. Only requires an established libp2p connection.
4. Provides descriptive error messages in responses.

## Reliability

1. Implements DoS protection through request rate limitation.
2. Status codes indicate the best recovery method (retry, discard service node or irrecoverable failure).
3. 80% message transmission success rate on live Status network (service node from both Status Desktop and fleet Waku instances)

## Performance

1. Only one network round trip is required per operation; including both configuration and message transmission.
2. Minimizes protocol overhead for efficient resource usage.

## Supportability

1. Linux amd64 CLI as service node
2. Browser as client