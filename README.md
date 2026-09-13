# Navier–Stokes ANEA review release — MATHIC v7.2

[![Verify NS MATHIC v7.2 Lean](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-ns-mathic-v72.yml/badge.svg)](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-ns-mathic-v72.yml)

**Virgil Lee Gattenby**  
TRYX / ENIAD / MATHIC

## Start here

The **canonical review target is MATHIC v7.2**. The papers are conventional mathematical presentations around that score. The Fourier Coefficient E6B is an optional working-beta reviewer instrument.

- [MATHIC v7.2 — canonical review target](review/Mathic/Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md)
- [Lean kernel verification receipt](review/TRYX.NS.MATHIC.V7_2.LEAN.KERNEL.RECEIPT.260913.md)
- [Public v7.2 Lean source](verification/ns-mathic-v72/)
- [Reviewer packet manifest](review/ANEA_REVIEW_PACKET_v1_0.MANIFEST.md)
- [Review release / parked state](review/NS_ANEA_REVIEW_RELEASE_v1_0.PARKED.md)
- [Historical v6 reproduction package](publications/navier-stokes-v6/)
- [Citation metadata](CITATION.cff)
- [Provenance](PROVENANCE.md)

## Review hierarchy

```text
CANONICAL_REVIEW_TARGET = MATHIC_v7.2
FORMULA_AUTHORITY = V4
LEAN_KERNEL_CHECK = PASS
PAPERS_ROLE = FUNCTIONAL_ORNAMENTAL
E6B_ROLE = WORKING_BETA_REVIEWER_INSTRUMENT / OPTIONAL_EXTRA_CREDIT
```

The score is the object to trace, replay, formally check, and audit. ANEA Version 2 and Addenda A1/A2 provide conventional exposition. The E6B gives reviewers an interactive inspection surface rather than another static figure.

## Machine verification

The v7.2 formalization was built and kernel-loaded in **Lean 4.19.0** with the recorded Mathlib revision. The project source audit reported **0 `sorry`** and **0 project axiom declarations**.

Kernel-checked components include:

- V4 finite scalar ledger definitions
- signed stretching decomposition
- One-Tension exact local accounting identity
- projection neutrality under explicit hypotheses
- R1 finite positive-observable domination
- R2 finite identities and `Theta = chi * Lambda` factorization
- conditional R2-to-Uniform-Action-Control bridge
- conditional UAC differential-inequality bridge
- locked V4 atomic fixture
- exact 35-row corridor replay and recorded return at ordinal 34

The exact receipt is published under [`review/`](review/TRYX.NS.MATHIC.V7_2.LEAN.KERNEL.RECEIPT.260913.md), and the buildable public source is under [`verification/ns-mathic-v72/`](verification/ns-mathic-v72/).

## What remains open

```text
SCALE_UNIFORM_R2_DEPLETION = OPEN
CONTINUUM_PASSAGE = OPEN
UNCONDITIONAL_UNIFORM_ACTION_CONTROL = OPEN
GLOBAL_3D_UNFORCED_REGULARITY = OPEN
CLAIM_PROMOTION = NONE
```

A passing Lean build establishes the formalized finite/algebraic and conditional score. It does **not** turn the open scale-uniform or continuum obligations into a proof of global three-dimensional regularity.

## Historical reproducibility package

The earlier v6 package remains available as reproducibility history and still contains the recorded local-closure benchmark, replay scripts, and earlier formal verification surfaces.

```sh
git clone https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic.git
cd TRYX-Navier-Stokes-Mathic
python3 publications/navier-stokes-v6/check_package.py
```

Recorded historical fixture: atomic equality residual 0; positive remainder 98; 35 corridor rows; first zero return at ordinal 34; maximum replay discrepancy approximately `2e-16`.

## Research storefronts

| Research | Current public review focus |
| --- | --- |
| **Navier–Stokes / ANEA** | MATHIC v7.2 canonical review target; Lean-checked finite/algebraic and conditional spine |
| [Problem No Problem / P vs NP](https://github.com/TRYX-Relay/TRYX-PNP-MATHIC) | Existential Boolean folding semantics and finite benchmarks |
| [Snowman / Collatz conjecture](https://github.com/TRYX-Relay/TRYX-Collatz-Mathic) | Address reconstruction, fold identities, and local continuity checks |

## Independent review

Please review the MATHIC first, then use the Lean receipt, papers, and optional E6B instrument as supporting surfaces. When reporting findings, distinguish:

- score/formula correctness,
- machine verification,
- finite replay behavior,
- conditional analytic bridges,
- and open theorem obligations.

Repository issues are welcome for reproducible findings.
