# Navier-Stokes MATHIC v7.2 Lean target

This public mirror formalizes the executable algebraic spine of the locked MATHIC v7.2 review target.

Formula authority: `Navier_Stokes_Mathic_Chart_v0.4.xlsx`.

Theorems cover projection neutrality under explicit hypotheses, signed stretching, V4 One-Tension, R1 finite domination, R2 finite identities and factorization, the conditional R2-to-UAC bridge, conditional UAC differential inequality, the locked atomic fixture, and exact 35-row corridor replay.

Open statements remain metadata markers and are not imported as axioms: scale-uniform R2 depletion, unconditional UAC, continuum passage, and global 3-D unforced regularity.

Build:

```sh
cd verification/ns-mathic-v72
lake update
lake exe cache get
lake build
lake env lean NavierStokesMathicV72.lean
```

The authoritative recorded kernel receipt is mirrored at [`../../review/TRYX.NS.MATHIC.V7_2.LEAN.KERNEL.RECEIPT.260913.md`](../../review/TRYX.NS.MATHIC.V7_2.LEAN.KERNEL.RECEIPT.260913.md).
