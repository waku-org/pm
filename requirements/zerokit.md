# Waku’s Requirements on Zerokit

## Context

Zerokit is the recommended library for cryptographic operations including Poseidon hashing, RLN identity generation, and proof verification. 
Waku relies on Zerokit, primarily for two implementaions:
- js-waku (rln-wasm): credentials  
- nwaku: credentials + proof generation & verification 

Current JS integration faces two main challenges:
- **WASM cold start/load latency:** The WASM blob load time improved from ~15 seconds (v0.1.0) to ~5 seconds (v0.2.0). Notably, the current `rln-wasm` build includes proof generation and verification, which js-waku does not require. This suggests a smaller, credential-only WASM library could further reduce load times for js-waku.
- **Endianness mismatch:** js-waku uses big-endian (BE) throughout, as required by contracts, while Zerokit expects little-endian (LE). This necessitates conversion when interfacing between the two, though this is less critical than load latency.

Additional minor challenges:
- Insufficient documentation and upgrade notes.
- Unclear purpose and usage of `InitOutput` and root exports.
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
- **F1.3:** Support Big-Endian (BE), instead of Little-Endian (LE)

### Usability

- **U1.1:** WASM load time should be <5s in cold start on most browsers.
- **U1.3:** _Optional:_ Provide a reduced WASM build or a dedicated `@zerokit/credentials` package that only supports credentials (no proof logic).

### Reliability

- **R1.1:** Deterministic outputs — BE/LE encoding should not affect hash reproducibility (if possible).
- **R1.2:** Cross-language consistency between js-waku and nwaku.
- **R1.3:** Exposed APIs should be stable and well-documented.

### Performance

- **P1.1:** Cold start under 5s for full WASM blob; ideally under 1s for reduced credential-only blob.

### Supportability

- **S1.1:** Available for: JavaScript/TypeScript (browsers), nim
---

## Use Case 2: Proof Generation and Verification
