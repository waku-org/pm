# Segmentation FURPS

## Functionality

1. Outbound messages larger than the maximum Waku message size are partitioned in several messages to fit in Waku messages.
2. Inbound partitioned messages are reconstructed in a whole message.
3. A capping limit is applied to pre-segmented messages (e.g. 100MB).
4. Messages under the maximum message size are not modified.

## Usability

1. Only takes a maximum message size as a parameter.

## Reliability

1. Reconstruction can be performed even when parts are received out or order.
2. Reconstruction can be performed as long as 87.5% of the segments is received.
3. If too many parts missing to reconstruct an informative error should be logged.

## Performance

1. The payload overhead does not exceed 12.5% + 100 bytes.

## Supportability

1. Nim
2. Golang
3. Rust

## + (Privacy, Anonymity, Deployments)

1. Segmentation metadata should not reveal information about the original message content
2. Relevant for all Waku nodes
