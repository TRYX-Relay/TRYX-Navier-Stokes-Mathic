# Public review-release provenance

Author: Virgil Lee Gattenby. Storefront refreshed 2026-09-13.

This standalone public repository began as the exported Navier-Stokes v6 reproducibility package. The current public storefront now points reviewers to the later **MATHIC v7.2** review target while retaining the v6 package as historical reproducibility evidence.

## Current canonical review target

`Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md`

Formula authority:
`Navier_Stokes_Mathic_Chart_v0.4.xlsx`

Locked MATHIC v7.2 SHA-256:
`cb7ee05f4f23302b7b9192912e4fa0d032689a93b407c7a5afbf4d40adc2274d`

The v7.2 score was developed and locked in the private engineering repository `TRYX-Relay/TRYX-MATHIC`, then mirrored here for public review.

## Lean verification provenance

Source engineering repository:
`TRYX-Relay/TRYX-MATHIC`

Verification pull request:
`#34 - Run NS MATHIC v7.2 Lean verification`

Final verified head:
`f69446aba6801b6c05d71fd242d10c356d45f9aa`

Merged verification commit:
`991bf1aba9546d63b60ec6c60710b9a585fad888`

Successful workflow run:
`34784359709`

Lean:
`4.19.0`

Mathlib revision resolved by Lake:
`c44e0c8ee63ca166450922a373c7409c5d26b00b`

Project audit:
`0 sorry / 0 project axiom declarations`

The public receipt is under `review/TRYX.NS.MATHIC.V7_2.LEAN.KERNEL.RECEIPT.260913.md`.

## Historical v6 package

The earlier v6 publication package remains preserved under `publications/navier-stokes-v6/` with its original replay and verification history. It is retained as historical reproducibility evidence and is not the current canonical review target.

## Claim boundary

Repository presence, publication, a passing CI job, or a successful Lean build does not independently establish global three-dimensional Navier-Stokes regularity.

The current review release records:

```text
LOCAL_ONE_TENSION = CLOSED
FINITE_CORRIDOR = REPLAY
R1_FINITE_RELATION = CLOSED
R2_FINITE_IDENTITIES = CLOSED
R2_TO_UAC = KERNEL_CHECKED_CONDITIONAL
SCALE_UNIFORM_DEPLETION = OPEN
CONTINUUM_PASSAGE = OPEN
GLOBAL_3D_UNFORCED_REGULARITY = OPEN
CLAIM_PROMOTION = NONE
```

No private Git history, unpublished archive, or competitor material is exported by this storefront refresh.
