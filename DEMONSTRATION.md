# Demonstration walkthrough: Navier-Stokes MATHIC v7.2 review release

Author: Virgil Lee Gattenby

This is a recording guide and reproducible walkthrough. It is not a prerecorded video.

1. Open the [MATHIC v7.2 score](review/Mathic/Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md). State that it is the canonical review target and that the V4 formulas are the formula authority.
2. Open the [Lean kernel receipt](review/TRYX.NS.MATHIC.V7_2.LEAN.KERNEL.RECEIPT.260913.md). Show the exact verified head, merged commit, Lean version, successful workflow run, and the `0 sorry / 0 project axiom declarations` audit.
3. Point out the kernel-checked score components: One-Tension, signed stretching, projection neutrality under explicit hypotheses, R1, R2 finite identities, the conditional R2-to-UAC bridge, and the 35-row corridor replay.
4. Open the [reviewer manifest](review/ANEA_REVIEW_PACKET_v1_0.MANIFEST.md). Show the claim firewall: scale-uniform depletion, continuum passage, unconditional UAC, and global 3-D regularity remain open.
5. For historical reproducibility, run:

```sh
python3 publications/navier-stokes-v6/check_package.py
```

6. If demonstrating the Fourier Coefficient E6B, introduce it as an optional **working BETA reviewer instrument**. It is useful for inspection but carries no independent theorem weight.
7. Close with the review question: does the formalized score say exactly what the packet claims it says, and does the machine receipt support those finite/algebraic and conditional statements without promoting the open analytic gates?

For a short recording, spend about 20 seconds on the MATHIC, 20 seconds on the Lean receipt, 15 seconds on the claim boundary, and the remaining time on the optional E6B or historical replay.

The strongest public statement supported by this release is the kernel-checked finite/algebraic and conditional MATHIC spine. Global three-dimensional Navier-Stokes regularity is not claimed as proved.
