# Waku's Requirements on Codex

## Publish Large Messages - Uploader is online

To be used for messages archival in Chat SDK, Qaku, opchan, etc.
It assumes that a special user (admin) regularly bundles messages and pushes them to an external system.
It then pushes the CID (or any other reference to retrieve the bundle) over Waku.

New users retrieve and listen to new messages using Waku.
Thanks to SDS, they learn whether they miss messages, and if so, can proceed with retrieval from the latest bundle.

(clearly, spec is needed).

### Functionality

1. Ability to transfer a message of 1MB or more between two or more nodes.
2. Message's CID is less than 100kB.


### Usability

1. Developer can implement upload feature with 10 lines of code or less.
2. No configuration is necessary.

### Reliability

1. Download operation can be resumed.
2. Upload operation can be resumed.
3. Uploader can be expected to be online when user are downloading.

### Performance

None

### Supportability

1. Library for Browser applications.
2. Library for Nim desktop applications.
3. Library for Nim mobile applications.

**+ (Privacy, Anonymity, Censorship-Resistance, Deployments)**

1. The unavailability of a static host (IP, DNS) does not prevent a user to upload or download (censorship-resistance).
2. TODO (privacy)

## Publish Large Messages - Uploader is offline

To be used for

- large messages transfers (such as images, videos, audio) in Chat SDK, Opchan, etc.
- Enhancement of message archival (uploader does not need to be online for messages to be retrieved).

Builds on [Publish Large Messages - Uploader is online](#publish-large-messages---uploader-is-online)

### Functionality

1. Message is cached to enable retrieval without sender being online (once uploaded).
2. Best effort in terms of message retention; expectations on restrictions are documented.

### Usability

1. Receiver can download the large message, even if sender is offline, as long as they get the CID out-of-band.

### Reliability

1. Uploader may be offline when receiver is retrieving the large message.

### Performance

None

### Supportability

1. Library for Browser applications.
2. Library for Nim applications.

### + (Privacy, Anonymity, Censorship-Resistance, Deployments)**

TODO (privacy)

## Publish Large Messages - Retention is guaranteed

In this scenario, the uploader wants to ensure the data is persisted and is willing to pay for it.
This may be a Qaku Q&A admin, a opchan cell owner or Status Communities owner.

Builds on previous requirements.

### Functionality

1. Uploader may pay for large message storage to have guaranteed retention.

### Usability

1. Receiver can download the large message, even if sender is offline, as long as they get the CID out-of-band.
2. Receiver does not need to pay to retrieve the large message.

### Reliability

1. Uploader may be offline when receiver is retrieving the large message.
2. Uploader is guaranteed a period of retention for a given price.

### Performance

See previous requirements.

### Supportability

See previous requirements.

### + (Privacy, Anonymity, Censorship-Resistance, Deployments)**

See previous requirements.