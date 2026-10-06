# Navier–Stokes: A Nonexplosive Alternative

**Virgil Lee Gattenby**  
TRYX / ENIAD / MATHIC

**[Public publication — paper, splash, HTML and README](publications/ns-anea/locked-1_1/README.md)** · **[Read the 24-page paper](publications/ns-anea/locked-1_1/NS_ANEA_LOCKED.pdf)**

[![Verify NS MATHIC v7.2 Lean](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-ns-mathic-v72.yml/badge.svg)](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-ns-mathic-v72.yml)

**[Download the clean Lean reviewer package](review/packages/261005/NS_ANEA_LEAN_REVIEW_261005.zip)** · **[Read the canonical MATHIC v7.2 score](review/Mathic/Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md)**

The review target is the finite/algebraic and conditional MATHIC v7.2 formalization. Its recorded Lean kernel check covers signed accounting, finite identities, fixtures and conditional bridges. Scale-uniform depletion, continuum passage, unconditional Uniform Action Control and global three-dimensional regularity remain open.

## Current review materials

| Material | Where to start |
|---|---|
| Lean reviewer archive | [Clean package, 5 October 2026](review/packages/261005/NS_ANEA_LEAN_REVIEW_261005.zip), including its README and SHA-256 manifest |
| Canonical mathematical score | [Locked MATHIC v7.2](review/Mathic/Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md); formula authority V4 |
| Formal source and build configuration | [Lean project](verification/ns-mathic-v72/) |
| Recorded verification | [Kernel receipt](review/TRYX.NS.MATHIC.V7_2.LEAN.KERNEL.RECEIPT.260913.md) and [dedicated workflow](.github/workflows/verify-ns-mathic-v72.yml) |
| Citation and source lineage | [Citation](CITATION.cff) and [provenance](PROVENANCE.md) |
| Historical release | [v7.2.0](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/releases/tag/v7.2.0) |

The clean archive contains 19 byte-verified source files plus its package README and checksum manifest, selected from commit `83d49fca13918bec9baf1a612ac43a114e0e60f1`. Local Lean imports were checked for completeness. This packaging change did not rerun Lean or alter the proof sources.

## Reproduce the Lean review

Extract the clean archive and enter its `NS_ANEA_LEAN_REVIEW_261005` folder, or clone this repository. With Lean/Elan installed, run:

```sh
cd verification/ns-mathic-v72
lake update
lake exe cache get
lake build
lake env lean NavierStokesMathicV72.lean
```

The project selects Lean 4.19.0 and Mathlib v4.19.0. The historical receipt records Mathlib revision `c44e0c8ee63ca166450922a373c7409c5d26b00b`. No `lake-manifest.json` is committed for this target; retain the generated dependency manifest and exact source commit when recording a new run. Dependency retrieval requires network access.

## Verification scope

The historical receipt records a successful build and aggregate kernel load, with zero project `sorry` occurrences and zero project axiom declarations. Covered components include:

- V4 finite scalar ledger and signed stretching decomposition.
- One-Tension exact accounting and projection neutrality under explicit hypotheses.
- R1 finite positive-observable domination.
- R2 finite identities, factorization and conditional R2-to-UAC bridge.
- Conditional UAC differential-inequality bridge.
- Atomic fixture and exact 35-row corridor replay.

The workflow badge links to current CI history. The preserved receipt describes its recorded run; it is not a fresh verification of the October 5 paper.

## Package boundary

The Lean reviewer archive excludes historical v6 papers and replay packages, unrelated general TRYX proofs and workflows, release-publishing machinery, broad release manifests, paper production files, artwork, posters and E6B instruments. Historical records remain in the repository and engineering archive.

The score, proof source, build route, receipt, citation and provenance needed for this Lean review are included. External Lean/Mathlib dependencies are fetched during the build.

## Public publication

[Locked edition 1.1](publications/ns-anea/locked-1_1/README.md) contains exactly four files: the [24-page paper](publications/ns-anea/locked-1_1/NS_ANEA_LOCKED.pdf), [splash graphic](publications/ns-anea/locked-1_1/NS_ANEA_SPLASH_LOCKED.png), [FE6B HTML controller](publications/ns-anea/locked-1_1/NS_FLOW_CONTROLLER.html) and README. Download the HTML and open it locally. Checksums are recorded in the publication README. Lean review materials remain separate.

## Historical records

The [v6 reproduction package](publications/navier-stokes-v6/), [original reviewer manifest](review/ANEA_REVIEW_PACKET_v1_0.MANIFEST.md), [fortress closeout](review/NS_ANEA_PUBLIC_FORTRESS_CLOSEOUT_v1_0.md) and [parked release record](review/NS_ANEA_REVIEW_RELEASE_v1_0.PARKED.md) remain available for provenance. Their broader inventories describe earlier release states.

## Review and provenance

For a reproducible finding, identify the source commit, theorem or file, toolchain and dependency revisions, command, input and observed output. Distinguish algebraic correctness, finite replay and conditional bridges from the remaining analytic obligations. Artifact locks preserve bytes; they do not expand mathematical claims.
