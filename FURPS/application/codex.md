# Codex Archiving PoC

## Functionality

1. Any admin in a Qaku Q&A can publish a backup snapshot of the entire thread to Codex once it's reached 20 responses.
2. The admin can publish the corresponding Codex CID with metadata over Waku to a dedicated snapshot content topic
3. Participants can query the Waku snapshot topic for the latest CID
4. Participants can retrieve the archived Q&A from Codex
5. Participants can perform a Store Query for more recent messages following the snapshot timestamp

## Usability

1. Workflow should be conceptually identical, whether the Codex interaction is via a local node or Codex gateway
2. Publishing or retrieving via Codex should be optional

## Reliability


## Performance


## Supportability

1. Web app

## + (Privacy, Anonymity, Deployments)
