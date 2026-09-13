# TRYX NS MATHIC v7.2 - Lean Kernel Verification Receipt

Date: 2026-09-13

Status: `LEAN_KERNEL_CHECK = PASS`

Canonical review target:
`Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md`

Formula authority:
`Navier_Stokes_Mathic_Chart_v0.4.xlsx`

Formula mutation:
`NONE`

## GitHub execution

Source repository:
`TRYX-Relay/TRYX-MATHIC`

Pull request:
`#34 - Run NS MATHIC v7.2 Lean verification`

Final verified head:
`f69446aba6801b6c05d71fd242d10c356d45f9aa`

Merged into main:
`991bf1aba9546d63b60ec6c60710b9a585fad888`

Workflow:
`Verify NS MATHIC v7.2 Lean`

Successful workflow run:
`34784359709`

Successful job:
`103797018589`

## Toolchain

Lean: `4.19.0`

Lean build commit: `6caaee842e94`

Mathlib revision resolved by Lake:
`c44e0c8ee63ca166450922a373c7409c5d26b00b`

Runner: `ubuntu-24.04`

## Verification stages

```text
Checkout                              PASS
Lean 4.19.0 installation              PASS
Mathlib dependency/cache retrieval    PASS
Project no-sorry/no-axiom audit       PASS
lake build                            PASS
aggregate kernel load                 PASS
```

The no-sorry/no-axiom audit was scoped to the project source tree. Dependency source trees are not counted as project proof obligations.

## Kernel-checked score components

- V4 finite scalar ledger definitions.
- Signed stretching decomposition.
- One-Tension exact local accounting identity.
- Projection-neutrality theorem under explicit hypotheses.
- R1 finite positive-observable domination.
- R2 finite identity.
- finite factorization `Theta = chi * Lambda`.
- conditional R2-to-Uniform-Action-Control bridge.
- Uniform Action Control differential inequality bridge under explicit hypotheses.
- locked V4 atomic fixture.
- exact 35-row reflected corridor replay and return-to-zero check.
- claim-boundary declarations preventing promotion of open statements.

## Open obligations preserved

The kernel check does **not** prove:

```text
scale-uniform R2 depletion law
continuum passage
unconditional Uniform Action Control
global 3-D unforced Navier-Stokes regularity
```

Those remain open unless separately proved.

## Terminal state

```text
CANONICAL_REVIEW_TARGET = MATHIC_v7.2
FORMULA_AUTHORITY = V4
FORMULA_MUTATION = NONE
LEAN_KERNEL_CHECK = PASS
PROJECT_SORRY = 0
PROJECT_AXIOM_DECLARATIONS = 0
FINITE_ALGEBRAIC_SCORE = KERNEL_CHECKED
R2_TO_UAC = KERNEL_CHECKED_CONDITIONAL
GLOBAL_3D_REGULARITY = OPEN
CLAIM_PROMOTION = NONE
```

Receipt SHA-256 from the locked archive copy:
`3b1654a70ccb48de001c0c5b19e860b7d184af1c1c0b861daa6a9c9bd67ef287`
