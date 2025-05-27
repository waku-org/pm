# RLN FURPS

## Smart Contract

### Functionality

1. RLN rate limit can be defined in terms of multiple messages per epoch.
2. RLN rate limit is set at membership insertion
3. RLN initialization only requires Web3 RPC `call`s, no blockchain events are needed.
4. An ERC-20 token deposit is needed to insert a membership

### Usability

1. Application developers can set RLN rate limit at insertion.
2. User do not need to wait for merkle tree synchronization and building to start relaying
   or sending messages.
3. 

### Reliability

1. ...

### Performance

1. ...

### Supportability

1. ...

### + (Privacy, Anonymity, Deployments)

1. Smart Contracts are deployed on Status Network Testnet.
2. TWN uses smart contracts deployed on Status Network Testnet.
3. Smart Contracts have been audited.

## RLN Relay

### Functionality

1. Light push service node can attach RLN proof for clients.

### Usability

1. Light push clients do not need RLN logic.

### Reliability

1. Relay node can fallback to alternative RPC endpoints
   if the primary Web3 RPC provider becomes unavailable.

### Performance

1. New relay node setup with an RLN membership can be ready to verify RLN rpoof within 5s,
   no matter the size of the tree **(Vac-DST)**.
2. In a network of 10k RLN Relay nodes with each node sending one 1-100KB message every 10-30s,
   messages are propagated within 500ms, with 99.9% success **(Vac-DST)**.
3. In a network of 10k RLN Relay nodes,
   a spamming node will be disconnected from its peers in under 1 min. **(Vac-DST)**

### Supportability

1. Service node proof generation for light push clients is available in `wakunode2` for browser clients. 

### + (Privacy, Anonymity, Deployments)

1. Service node proof generation for light push clients is deployed on TWN.
2. Service node proof generation for light push clients is enabled by default in nwaku-compose.

## RLN Membership Management App

### Functionality

1. User can generate and insert an RLN membership.
2. User can extend an RLN membership.
3. User can withdraw an RLN membership deposit.
4. The generated credentials can be exported and then imported into `wakunode2`.

### Usability

1. User can see the state of their RLN membership.
2. User can manage their membership (register, extend, withdraw).

### Reliability

1. ...

### Performance

1. ...

### Supportability

1. Browser application, using web3 wallet browser extensions.

### + (Privacy, Anonymity, Deployments)

1. Deployed on https://rln.waku.org
2. Available for Status Network Testnet contracts.
3. Proof generation and validation is out of scope.