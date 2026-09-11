# Navier–Stokes Mathic v6 — local closure and Lean 4 verification

[![Package replay](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-ns-v6-package.yml/badge.svg)](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-ns-v6-package.yml)
[![Lean and independent checker workflow](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-tryx-formulas.yml/badge.svg)](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/workflows/verify-tryx-formulas.yml)

Badges show workflow status for the statements in this repository. The scope of each result is described below.


**Author: Virgil Lee Gattenby**  

Locked Mathic score, reproducible recorded local-closure benchmark, and machine-checked accounting identities.

- [Research manuscript](publications/navier-stokes-v6/MANUSCRIPT.md)
- [Complete score and nine lyrics](charts/navier-stokes/Navier_Stokes_Mathic_Beta_6.md)
- [Reproduction and verification evidence](publications/navier-stokes-v6/README.md)
- [Lean proof source](verification/tryx-lean/TryxProof.lean)
- [Citation metadata](CITATION.cff)
- [Export provenance](PROVENANCE.md)

```sh
python3 publications/navier-stokes-v6/check_package.py
```

Recorded benchmark: atomic equality residual 0; atomic positive remainder 98; 35 corridor rows; first zero return at ordinal 34; maximum replay discrepancy 2e-16. The three accounting statements passed Lean and independent nanoda checking in the source repository. Public-hosted checks are separately recorded under Actions.

This package establishes the stated accounting identities and recorded-data consistency. Universal three-dimensional Navier–Stokes regularity remains unproved by this work.

## Reproduce and inspect

Requires Git and Python 3. From a terminal:

```sh
git clone https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic.git
cd TRYX-Navier-Stokes-Mathic
python3 publications/navier-stokes-v6/check_package.py
```

The Python command checks the archived package and replay. To build the formal statements, follow the [pinned Lean project instructions](verification/tryx-lean/README.md).

[Short demonstration walkthrough](DEMONSTRATION.md) · [Citation metadata](CITATION.cff)

## Research triad

These three research packages share the TRYX → ENAID → Laws → MATHIC construction order. Sheet Mathics presents the work through scores and lyrics, with accompanying executable checks and formal statements.

| Research | Demonstrated scope |
| --- | --- |
| [Navier–Stokes Mathic v6](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic) | Signed Action accounting identities and recorded corridor replay |
| [Problem No Problem / P vs NP](https://github.com/TRYX-Relay/TRYX-PNP-MATHIC) | Existential Boolean folding semantics and finite benchmarks |
| [Snowman / Collatz conjecture](https://github.com/TRYX-Relay/TRYX-Collatz-Mathic) | Address reconstruction, fold identities, and local continuity checks |

## Independent review

Does the replay reproduce all 35 corridor rows, return at ordinal 34, and detect each deliberate corruption? Report the commit, command, input, and observed output in a [repository issue](https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/issues). Please distinguish package integrity, replay results, and the exact Lean theorem statement when reporting findings.
