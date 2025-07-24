# Waku's Requirements on Codex

## Message Archival

To be used for messages archival in Chat SDK, Qaku, opchan, etc.
It assumes that a special user (admin, referred to as "original uploader") regularly bundles messages and pushes them to an external system.
It then pushes the reference to the bundle over Waku.

New users retrieve and listen to new messages using Waku upon start up.
Then, they may retrieve bundles, likely because the know they are missing message via SDS.

The original uploader is the one to determine durability, aka, relevance of data over time.
It is application specific (eg until a Q&A is completed), and not related to users having downloaded the data. 

Which means it's a scenario where:

- Time from upload to retrieval is **not** critical (latest messages are available on Waku)
- Several users can seed and download the bundle.

This is very similar to BitTorrent integration in Status. I need to find specs to be more explicit about difference.
Some notes on BitTorrent integration in Status (AFAIK, asking @osmaczko for help):

1. Known issue is that the bundle is very large, and hence consumes a lot of bandwidth. I don't know if the bundle is "updated" or overridden.
   On Waku app side, we need to be open to have one large bundle vs a series of manageable bundle. The latter offers more flexibility such as attaching bloom filters,
   for selective download.
2. The bundle download is indiscriminate, meaning every user will download it at some point, with SDS, we can do something smarter

Also note (more of a personal opinion), usage of BitTorrent/webtorrent could be an acceptable starting point.

### Functionality

1. Ability to transfer a bundle of 1MB or more between two or more nodes.
2. Reference to bundle is 50kB or less.

### Usability

1. Developer can implement feature with 10 lines of code or less.

### Reliability

1. Download operation can be resumed.
2. Upload operation can be resumed.
3. As long as original developer is online, bundle should be retrievable.
4. As long as N out of M users are online, bundle should be retrievable.

### Performance

1. Time between bundle uploaded, and retrieved by users can be in the span of minutes and hours (we assumes messages are available in Waku store for several hours).
2. The burden of re-upload is shared by users.

### Supportability

1. Library for Browser applications.
2. Library for Nim desktop applications.
3. Library for Nim mobile applications.
4. Most users may be behind NAT routers and other domestic network setup.

### + (Privacy, Anonymity, Censorship-Resistance, Deployments)

1. The unavailability of a static host (IP, DNS) does not prevent a user to upload or download (censorship-resistance).
2. A participant cannot determine original uploader's PII (anonymity).

## Large File Transfer

To be used when 2 users or more, are transferring a large payload. This may be a large image or video in a private chat.
Or it could be a llm prompt that returns a large image or video.

Due to the broadcast nature of Waku, it would hog too much bandwidth if every large file sent between users where sent over Waku.

In terms of durability, it can be assumed that once all participants have downloaded the payload, it does not need to be retrievable anymore.
It should also be assumed that the users may not be online at the same time (mobile).
There is more expectation on timeliness of retrievability, as one would want to be able to download seconds after the upload happened.

### Functionality

1. Ability to transfer a payload of 1MB or more between two or more peers.
2. Reference to payload is less than 50kB.

### Usability

1. Developer can implement feature with 10 lines of code or less.

### Reliability

1. Download operation can be resumed.
2. Upload operation can be resumed.
3. Payload should be retrievable even if original uploader goes offline.
4. Once all recipients have downloaded the payload, there is no more durability expectations.

### Performance

1. Payload download should start within seconds of the upload start.

### Supportability

1. Library for Browser applications.
2. Library for Nim desktop applications.
3. Library for Nim mobile applications.
4. Most users may be behind NAT routers and other domestic network setup.

### + (Privacy, Anonymity, Censorship-Resistance, Deployments)

1. The unavailability of a static host (IP, DNS) does not prevent a user to upload or download (censorship-resistance).
2. An external observer cannot tie the PIIs of the uploader and downloaders of one payload;
   it is assumed that the reference to the payload (eg, CID) is not leaked outside the participants. 
