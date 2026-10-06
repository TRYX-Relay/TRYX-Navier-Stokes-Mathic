# NS MATHIC v7.3 — Section 4 verification successor (2026-09-20)

Lean 4.19.0 / Mathlib 4.19.0. The bundled lake-manifest.json pins the dependency revisions. This is a local verification successor to the original v7.3 source ZIP, not a newly locked release or GitHub publication. Namespace names remain V72/V73.

Verification: lake build EXIT 0; AxiomAudit.lean EXIT 0; required scalar theorems have no sorryAx. Standard dependencies propext, Classical.choice and Quot.sound remain. Inherited native_decide corridor proofs also depend on Lean.ofReduceBool. Python/SymPy 1.14.0 fixtures F0–F4: 45 checks PASS, exact tolerance zero. F5: BLOCKED_MISSING_INPUT.

Changes: focused Mathlib imports in NS/Definitions.lean; zero_force_reduction proof repaired with simp; explicit signed_action_split wrapper added; FORCED_ENSTROPHY_ANALYTIC_BRIDGE set to .open because it has not been formalized. No inherited theorem statement or fixture data changed. The original ZIP remains unchanged.

From this project directory, with the pinned Lean toolchain available:

```sh
lake exe cache get Mathlib.Data.Real.Basic Mathlib.Algebra.Order.BigOperators.Group.Finset Mathlib.Tactic.Linarith Mathlib.Tactic.NormNum Mathlib.Tactic.Ring Mathlib.Tactic.FieldSimp
lake build
lake env lean AxiomAudit.lean
cd ..
python3 -m pip install sympy==1.14.0
python3 verify_forced_fixtures.py
```

On environments whose tar cannot preserve archive ownership, set TAR_OPTIONS=--no-same-owner for the cache command. Dependency downloads require network access. Toolchain binaries and .lake caches are excluded from the evidence archive.

The formalized results are scalar algebra and conditional inequalities. They do not prove the forced PDE enstrophy identity, localization formula, spectral commutator estimates, external blowup construction or global 3D regularity/nonregularity. The fixture results are executable symbolic checks on specified smooth periodic fields, not kernel proofs of general PDE claims. The source enum labels are metadata, not evidence.
