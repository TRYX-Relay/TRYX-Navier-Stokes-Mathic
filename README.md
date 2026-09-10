# Navier–Stokes Mathic v6

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
