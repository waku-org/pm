# Waku’s Requirements on Zerokit

## Context

Zerokit is the recommended library for cryptographic operations including Poseidon hashing, RLN identity generation, and proof verification. 
Waku relies on Zerokit, primarily for two implementaions:
- js-waku (rln-wasm): credentials registrations, proof generation and verification (planned 2025H2)
- nwaku: proof generation & verification (now), credentials (2025H2)

Current JS integration faces two main challenges:
- **WASM cold start/load latency:** The WASM blob load time improved from ~15 seconds (v0.1.0) to ~5 seconds (v0.2.0). 
  - The split of the 5 seconds is as follows: 
    - ~1.2 seconds for the WASM files download + decoding/compilation (~1MB)
    - ~3.6 seconds for the zkey download (~3MB)
Notably, the current `rln-wasm` build includes proof generation and verification, which not all web apps built with Waku require. And even if one web app requires both credentials and proof verification/generation, it is likely done in different areas from a UX and functional PoV. This suggests a smaller, credential-only and proof-handling-only WASM libraries could further reduce load times for js-waku.

- **Endianness mismatch:** js-waku uses big-endian (BE) throughout, as required by contracts, while Zerokit expects little-endian (LE). This necessitates conversion when interfacing between the two, though this is less critical than load latency.

Additional minor challenges:
- Lack of documentation regarding `InitOutput` and root exports.
- Ambiguity around the sequence and role of initialization functions such as `init()`, `initPanicHook()`, etc.

We aim to align expectations and optimize collaboration between the Waku and Vac ACZ teams by clearly expressing our functional and non-functional requirements.

---

## Use Case 1: Credential Generation and Management

**Used during:**
- RLN registration
- Identity derivation and key export
- Interoperability between js-waku and nwaku

### Functionality

- **F1.1:** Generate deterministic identity commitment (`idCommitment`) from entropy/seed.
- **F1.2:** Generate full identity object (`commitment`, `secret`, `nullifier`, `trapdoor`).

### Usability

- **U1.1:** API accepts and return Big-Endian (BE), so data can be passed to Web3 RPC API without manipulation.
- **U1.2:** Documentation is provided to use APIs to generate and load credentials.

### Reliability

- **R1.1:** Inter-operability between Zerokit FFI (x86_64, ARM, binaries) and WASI (browser WASM) APIs.
- **R2.2:** Zerokit must be fully interoperable the RLN EVM smart contract.

### Performance

- **P1.1:** Cold start under 5s for full WASM blob, including the zkey; ideally under 1s for reduced credential-only blob.

### Supportability

- **S1.1:** Available for: JavaScript/TypeScript (browsers)
- **S1.2:** Available for Nim


