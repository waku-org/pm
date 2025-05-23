# Store

## Functionality

1. Provides historical message retrieval from the Waku network, enabling nodes to query for messages they missed while offline.
2. Supports multiple query types: time-based, content-topic filtered, and message hash lookups.
3. Enables message presence verification without retrieving full message content.
4. Supports pagination for efficient retrieval of large message sets, and resuming retrieval after disconnection.
5. Supports comprehensive error codes for various failure scenarios.
6. Industry practices are applied to PostgreSQL setup to reach appropriate performance

## Usability

1. Implements simple async request/response pattern.
2. Uses standard Waku Message format.
3. Only requires an established libp2p connection.
4. Provides descriptive error messages in responses.
5. Supports query filtering to retrieve only relevant messages by content topic.

## Reliability

1. Implements DoS protection through request rate limitation.
2. (limitation) No guarantees in terms of message presence or retention duration.
3. Store node always provide a response; thanks to DoS protection.

## Performance

1. Only one network round trip is required for operation; including both configuration and message retrieval.
2. Implements pagination to manage resource usage on both client and server.
3. Allows presence queries to verify message existence without transferring full content.
4. Targets query response times under 2 seconds for typical requests.
5. Hash query of less than 10 hashes are served under 400ms; for a database less than 250 GB size and average message size under 500KiB **(Vac-DST)**.
6. Time range queries of less than 24 hours, with less than 10 content topics, are served under 400 ms; for a database less than 250 GB size and average message size under 500KiB **(Vac-DST)**.

## Supportability

1. Linux amd64 CLI as service node
2. PostgreSQL as database engine.
3. Browser support as client.