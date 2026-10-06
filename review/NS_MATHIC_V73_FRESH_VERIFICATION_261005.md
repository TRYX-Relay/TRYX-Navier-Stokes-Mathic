# NS MATHIC v7.3 — fresh Lean verification receipt

Verified commit: ac22be39d8de7e5a997594f62a3a28c330687fad
Run: https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/runs/37426187736
Job: 112146263821
Completed: 2026-10-06 06:53 UTC (5 October in Alaska)
Result: PASS

Lean: 4.19.0
Mathlib: c44e0c8ee63ca166450922a373c7409c5d26b00b
The committed lake-manifest.json was unchanged after dependency retrieval.

Passed: static project no-sorry/no-axiom-declaration scan; lake build; aggregate NavierStokesMathicV73 kernel load; AxiomAudit.lean execution; absence of sorryAx in the printed audit.

The eight audited v7.3 scalar declarations depend on propext, Classical.choice and Quot.sound. The inherited corridor_returns_zero and corridor_has_35_rows additionally use Lean.ofReduceBool (native reduction trust); this is recorded explicitly, not described as axiom-free. The axiom report covers the declarations selected by AxiomAudit.lean, not every declaration in Mathlib.

Scope: signed force-channel splitting, forced One-Tension accounting, exact zero-force reduction, rejection of a nonzero force no-op, explicit transfer retention and neutral-transfer reduction, plus inherited v7.2 modules. No PDE localization derivation, continuum passage, uniform analytic estimate or global regularity theorem was added or established.

The original recovered sources were used unchanged. The four-file public publication was not modified. This run did not execute R3 symbolic tests or create a new release tag.

Logs: https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic/actions/runs/37426187736/artifacts/11394727696
Artifact SHA-256: 7e3d6886a616b6c8b962ea79a450406013354a5134a5120dff268f862e25ba60
