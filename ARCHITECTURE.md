# Waku Architecture

An overview of the Waku architectures target, include the various layer and APIs.
This is an update of the [Reliablity and Waku API](https://blog.waku.org/2024-06-20-message-reliability/) article

```mermaid
block-beta
    columns 4
    sc["Secure Conversations (Chat SDK)"]:4

    e["Encryption"]:1
    rc["Reliable Channels"]:3
    space:1

    block:reliablechannels:3
        columns 1
        sg["Segmentation"]:1
        sds["Scalable Data Sync"]:1
        enc["Encrypt/Decrypt"]:1
        rlm["Rate Limit Manager"]:1
    end

    e --> enc

    P2PReliability["P2P Reliability (Waku API)"]:4
    block:wakuapi:4
        columns 7
        RLNRelay["RLN Relay"]:1
        Store["Store"]:1
        Lightpush["Lightpush"]:1
        Filter["Filter"]:1
        Discv5["Waku Discv5"]:1
        PeerExchange["Peer Exchange"]:1
        PeerManager["Peer Manager"]:1

    end

    block:libp2p:4
        P2PEncryption["Point-to-Point Encryption"]
        Multiplexer["Multiplexer"]
        Transport["Transport"]
    end

    block:base:4
        UDP["UDP"]
        TCP["TCP/IP"]
    end

    classDef borrowed fill:#e1f5ff,stroke:#0066cc,stroke-width:2px,stroke-dasharray: 5 5
    class enc borrowed
```