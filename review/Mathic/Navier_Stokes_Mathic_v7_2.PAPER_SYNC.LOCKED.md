# Navier-Stokes MATHIC v7.2

## Canonical Review Target - V4 Formula Authority / ANEA Paper-Sync / Lean Execution Score

**Status:** `V7_2_CANONICAL_REVIEW_TARGET_LOCKED`  
**Date:** `2026-09-13`  
**Parent:** `Navier_Stokes_Mathic_v7.LOCKED.md`  
**Parent v7 SHA-256:** `18e16eaeebf65f5e118e378d3dd5c8c8fafbcf680c4553cf34b536a93c51ba00`  
**Formula authority:** `Navier_Stokes_Mathic_Chart_v0.4.xlsx`  
**V4 formula-authority SHA-256:** `34e9e4a3ae0708db1f0ea1e908e20e4a115d752b515aa41a63432430f4915714`  
**Formula mutation:** `NONE`  
**Corridor mutation:** `NONE`  
**Claim promotion:** `NONE`

## 0. Review Target Rule

The canonical object of Navier-Stokes review is this MATHIC score.

The accompanying ANEA paper, Addendum A1, Addendum A2, Fourier Coefficient E6B presentation, poster, and Reader's Guide are **functional ornamentals**: conventional human-facing presentations, interfaces, illustrations, and explanatory layers synchronized to the score. They may explain, organize, visualize, and cross-reference the mathematics. They may not silently change the formula authority, the execution order, the receipt trail, or the claim status.

```text
CANONICAL_REVIEW_TARGET = MATHIC_v7.2
FORMULA_AUTHORITY = V4
LEAN_TARGET = MATHIC_v7.2
AI_REVIEW_TARGET = MATHIC_v7.2
HUMAN_REVIEW_TARGET = MATHIC_v7.2
PAPERS_ROLE = FUNCTIONAL_ORNAMENTAL
PAPERS_MAY_EXPLAIN = YES
PAPERS_MAY_REFORMAT = YES
PAPERS_MAY_CHANGE_FORMULA_AUTHORITY = NO
PAPERS_MAY_CHANGE_CLAIM_STATUS = NO
```

The papers remain mathematically useful. They translate the score into conventional prose, citations, figures, and theorem-facing exposition. The hierarchy simply makes the executable/auditable score the object everyone traces back to.

## 1. Governing V4 Formula Spine

The V4 formulas are preserved exactly in role and meaning. v7.2 does not replace them with later notation.

For an unforced smooth incompressible flow,

\[
\partial_t u+(u\cdot\nabla)u=-\nabla p+\nu\Delta u,
\qquad \nabla\cdot u=0.
\]

Let

\[
\omega=\nabla\times u,
\qquad
S=\frac12\left(\nabla u+(\nabla u)^T\right).
\]

Then

\[
\partial_t\omega+(u\cdot\nabla)\omega
=(\omega\cdot\nabla)u+\nu\Delta\omega,
\]

and the smooth enstrophy identity is

\[
\frac12\frac{d}{dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=\int \omega^T S\omega\,dx.
\]

At an admitted address

\[
\alpha=(N,x,\mathrm{phase},\mathrm{orientation},\mathrm{scale}),
\]

define the signed Action channels

\[
A^+(\alpha)=\int(\omega^TS\omega)^+\,dx,
\]

\[
A^-_{\mathrm{stretch}}(\alpha)=\int(-\omega^TS\omega)^+\,dx,
\]

\[
\nu D(\alpha)=\nu\int|\nabla\omega|^2\,dx,
\]

and the signed Action residual

\[
\Delta A(\alpha)
=A^+(\alpha)-A^-_{\mathrm{stretch}}(\alpha)-\nu D(\alpha).
\]

Split

\[
\Delta A^+=\max(\Delta A,0),
\qquad
\Delta A^-=\max(-\Delta A,0).
\]

The V4 One-Tension identity is

\[
\boxed{
A^+ + \Delta A^-
=
A^-_{\mathrm{stretch}}+\nu D+\Delta A^+
}.
\]

This is an exact accounting identity at every address where the component quantities are defined. It is not, by itself, a uniform bound on positive stretching and it is not a proof of global three-dimensional regularity.

## 2. TRYX / ENIAD Execution Grammar

```text
TRYX = Trinary Runtime Index
ENIAD = 9-dimensional mathematical + 0 topology
```

ENIAD is the mathematical instrument. TRYX is the runtime index used to play mathematics on that instrument. MATHIC is the score.

The local score cadence is

\[
V\to P\to A\to V'.
\]

Value carries the state, Perception declares the comparison, Action commits the result, and the committed result becomes available to the successor state. The three roles remain typed. A residual classified as Action is not silently renamed Value or Perception.

### Lyric L01 - Instrument and score

> Set the instrument before the first note. ENIAD holds the topology; TRYX indexes the performance. Value carries, Perception compares, Action commits, and the score keeps the handoff audible.

## 3. Signed Action Activation

Positive stretching, compressive stretching, viscous action, and the signed residual remain separately addressed before classification.

### Lyric L02 - Signed field

> Hear the whole signed field before taking sides. Keep growth, compression, viscosity, and the surviving remainder in separate voices until the comparison is complete.

**Status:** `V4_SIGNED_ACTION_SPINE = RETAINED`

## 4. One-Tension Local Closure

One-Tension balances the local Action account without erasing a remainder.

### Lyric L03 - Chorus

> Put every remainder on its proper side. Equality closes the account, not the future. If positive Action remains, carry it forward and keep its address attached.

For the locked V4 calibration with \(A=7\) and \(\nu=1\):

```text
Positive Action A+                  = 820.87564089412
Compressive Action A-_stretch      = 134.87564089412
Viscous Action nu D                = 588
Positive residual Delta A+         = 98
Negative residual Delta A-         = 0
One-Tension equality residual      = 0
```

Thus

\[
820.87564089412
=
134.87564089412+588+98.
\]

The number 98 is retained Action, not initial exhaustion.

**Status:** `LOCAL_ONE_TENSION = CLOSED`

## 5. Address and Provenance Activation

The admitted symbolic field is

\[
\mathcal A_\infty
=
\{\alpha=(N,x,\mathrm{phase},\mathrm{orientation},\mathrm{scale})\}.
\]

Constituting the address family declares scope. It does not prove a uniform estimate over that family.

### Lyric L04 - Address

> Keep every note with its mode, phase, orientation, scale, source, and receipt. An address tells us where the account lives. It does not settle the account by itself.

**Status:** `ADDRESS_SCOPE = CONSTITUTED / UNIFORM_BOUND = OPEN`

## 6. Finite Corridor Replay

The locked V4/V6 fixture contains 35 recorded corridor rows and uses the successor rule

\[
E_{j+1}=\max(E_j+\Delta A_j,0).
\]

The recorded route starts from zero incoming carrier, rises to its recorded peak at ordinal 17, and returns to zero at ordinal 34.

### Lyric L05 - Finite return

> Carry the actual remainder through every measure. Let later negative passages repay earlier positive ones. Announce the return only where the recorded carrier reaches zero, and preserve the route that got it there.

```text
CORRIDOR_ROWS = 35
PEAK_ORDINAL = 17
FIRST_ZERO_RETURN = 34
FINITE_CORRIDOR_STATUS = REPLAY_CLOSED_FOR_RECORDED_FIXTURE
UNIFORM_RETURN_THEOREM = OPEN
```

The corridor is a finite reproducibility receipt. It is not a Navier-Stokes simulation and not a continuum theorem.

## 7. Fourier Coefficient E6B Activation - Addendum A1 Sync

The Fourier Coefficient E6B is a mathematical inspection instrument tied to the ANEA research branch. It exposes phase, coefficient relation, addressed geometry, selected trajectories, and finite readings without gaining independent theorem weight from its appearance.

Geometry and interface authority are carried by the locked E6B lineage, including the B1.35 display and the later coordinate-beta / C1.x instrument lineages.

### Lyric L06 - E6B

> Read the phase field without asking the picture to prove the theorem. The instrument can show where cancellation may live, where coefficients align, and what address is being inspected. Analysis still has to prove what survives refinement.

```text
E6B_ROLE = MATHEMATICAL_INSPECTION_INSTRUMENT
E6B_PROOF_WEIGHT = DIAGNOSTIC_ONLY
UAC_FROM_PICTURE_ALONE = FORBIDDEN
```

## 8. R1 Exact Finite Observable - Addendum A2 Sync

For a declared Fourier-Galerkin state at resolution \(N\), define

\[
\Sigma_N(t)=\int \omega_N^T S_N\omega_N\,dx.
\]

Under a declared Fourier normalization,

\[
\Sigma_N(t)=\sum_{\gamma\in\Gamma_N}\operatorname{Re}\tau_\gamma(t),
\qquad
\tau_\gamma=r_\gamma e^{i\phi_\gamma}.
\]

The R1 phase-weighted positive load is

\[
Q_N^{E6B}(t)
=
\sum_{\gamma\in\Gamma_N}r_\gamma[\cos\phi_\gamma]_+
=
\sum_{\gamma\in\Gamma_N}[\operatorname{Re}\tau_\gamma]_+.
\]

Therefore

\[
\Sigma_N(t)\le Q_N^{E6B}(t).
\]

### Lyric L07 - R1

> Positive projection gives a finite load you can inspect and audit. It tells us what stretching can cost at resolution N. It does not tell us what infinity will pay.

```text
R1_DEFINITION = CLOSED_AT_DECLARED_N
R1_DOMINATION = CLOSED
R1_UNIFORM_IN_N_BOUND = NOT_ESTABLISHED
```

## 9. R2 Net Phase Depletion - Addendum A2 Sync

Define

\[
E_N=\|\omega_N\|_2^2,
\qquad
D_N=\|\nabla\omega_N\|_2^2,
\]

\[
M_N=\int|\omega_N^T S_N\omega_N|\,dx.
\]

For \(M_N>0\), define

\[
\Theta_N=\frac{[\Sigma_N]_+}{M_N},
\qquad 0\le\Theta_N\le1,
\]

and \(\Theta_N=0\) when \(M_N=0\). Then

\[
[\Sigma_N]_+=\Theta_NM_N.
\]

The same finite state may be factored as

\[
\Theta_N=\chi_N\Lambda_N.
\]

On a fixed periodic domain, use the declared estimate

\[
M_N\le C_*E_N^{3/4}D_N^{3/4}.
\]

If the scale-uniform depletion hypothesis

\[
\Theta_N^4E_N^2\le K
\]

holds with \(K\) independent of \(N\), then Young's inequality yields

\[
\Sigma_N
\le
(1-\varepsilon)\nu D_N+CE_N,
\]

and equivalently

\[
A_N^+
\le
A^-_{N,\mathrm{stretch}}
+(1-\varepsilon)\nu D_N
+C\|\omega_N\|_2^2.
\]

This is the conditional Uniform Action Control bridge.

### Lyric L08 - R2 / UAC bridge

> Keep the cancellation the actual flow kept. Measure the surviving positive fraction as Theta. Separate phase depletion from amplitude geometry through Theta equals chi times Lambda. If the scale-uniform bound survives every resolution, the conditional bridge pays the positive-stretching bill.

```text
R2_FINITE_IDENTITY = CLOSED
THETA_FACTORING = CLOSED_AT_DECLARED_FINITE_STATE
R2_HYPOTHESIS_IMPLIES_UAC = CLOSED_CONDITIONAL_IMPLICATION
SCALE_UNIFORM_DEPLETION_LAW = OPEN
```

## 10. Uniform Action Control - Open Promotion Gate

The paper-sync target is no longer a generic request for something good to happen at large \(N\). The open theorem-sized obligation is explicit:

\[
\boxed{
\sup_{N,t}\Theta_N(t)^4E_N(t)^2<\infty
}
\]

or an independently justified alternative estimate strong enough to enter a recognized continuation criterion.

### Lyric L09 - Uniform obligation

> Bring every resolution into the same obligation. A million finite returns do not control an unexamined family. State one bound whose constant survives refinement, then carry it through the continuum without borrowing the conclusion from the future.

```text
UNIFORM_ACTION_CONTROL = OPEN_UNLESS_HYPOTHESIS_DISCHARGED
CONTINUUM_PASSAGE = OPEN
CLASSICAL_CONTINUATION_BRIDGE = OPEN
GLOBAL_3D_UNFORCED_REGULARITY = OPEN
```

## 11. Lean Execution Contract

Lean should execute the MATHIC, not a parallel mathematical story that merely resembles it.

```text
LEAN_INPUT = Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md
FORMULA_AUTHORITY = Navier_Stokes_Mathic_Chart_v0.4.xlsx
FORMULA_MUTATION = NONE
LYRICS_PROOF_WEIGHT = ZERO
```

### Lean shall formalize / prove

1. finite-resolution definitions under declared hypotheses;
2. projection neutrality under explicit self-adjointness and range hypotheses;
3. signed stretching decomposition;
4. V4 One-Tension identity;
5. R1 finite observable and finite domination;
6. R2 exact finite identities, including \([\Sigma_N]_+=\Theta_NM_N\);
7. finite factor relation \(\Theta_N=\chi_N\Lambda_N\) under its definitions;
8. the conditional implication from \(\Theta_N^4E_N^2\le K\) to Uniform Action Control;
9. the resulting differential inequality / Gronwall bridge under the stated hypothesis;
10. explicit claim-boundary markers preventing theorem promotion.

### Lean shall replay

1. the locked V4 atomic fixture;
2. One-Tension equality residual zero;
3. the 35-step successor corridor;
4. first recorded zero return at ordinal 34.

### Lean shall not import as proved

1. the scale-uniform R2 depletion law;
2. continuum passage;
3. a classical continuation criterion without its hypotheses;
4. global three-dimensional unforced regularity.

Any open statement may appear only as an explicit hypothesis inside a conditional theorem. It may not be smuggled in as an axiom wearing a theorem's hat.

## 12. Papers as Functional Ornamentals

The publication artifacts are synchronized views of this score:

```text
ANEA Version 2             = conventional mathematical exposition
Addendum A1                = E6B operating/research exposition
Addendum A2                = R1/R2 analytic reduction exposition
Fourier Coefficient E6B    = interactive mathematical instrument
Navier-Stokes Poster       = visual identity / entry point
Reader's Guide             = terminology, packet map, provenance, shared reference
```

They are functional because they communicate and expose the mathematics. They are ornamental because the review authority lives in the score, not in the typography, illustration, or prose arrangement.

If an ornamental presentation disagrees with the locked MATHIC formula authority or claim boundary, the discrepancy is a review defect to be repaired in a successor presentation. The score is not silently rewritten to match the ornament.

## 13. Reference-at-Activation Policy

v7's scholarly reference layer remains active. External references support classical foundations, known regularity mechanisms, and theorem boundaries. They do not directly verify TRYX, ENIAD, MATHIC, One-Tension naming, or the internal address system unless an external source proves the same mathematical statement under equivalent hypotheses.

The governing relationship classes remain:

```text
FOUNDATION
INDEPENDENT_SUPPORT
ANALOGOUS_CONTROL_RESULT
BOUNDARY_RESULT
DIRECT_VERIFICATION
```

`DIRECT_VERIFICATION` remains reserved for genuinely equivalent external proof.

## 14. Claim Firewall

```text
V4_FORMULA_AUTHORITY = LOCKED
LOCAL_ONE_TENSION_THEOREM = CLOSED
FINITE_CORRIDOR_RETURN = CLOSED_FOR_RECORDED_FIXTURE
E6B = DIAGNOSTIC_INSTRUMENT
R1_FINITE_RELATION = CLOSED
R2_FINITE_IDENTITIES = CLOSED
R2_TO_UAC = CONDITIONAL_CLOSED
SCALE_UNIFORM_R2_DEPLETION = OPEN
CONTINUUM_PASSAGE = OPEN
GLOBAL_3D_UNFORCED_REGULARITY = OPEN
CLAIM_PROMOTION = NONE
```

A score can expose the hole. It cannot charm the hole into disappearing.

## 15. Terminal Lyric

> Name the closure you actually performed. One-Tension balances the local account. The corridor returns only for the recorded fixture. E6B lets us inspect the phase field. R1 measures a finite positive load. R2 keeps the cancellation and sharpens the open target. The final movement begins only when one bound survives every admitted resolution and the continuum accepts the handoff.

## 16. Succession and Lock Rule

```text
Navier_Stokes_Mathic_Chart_v0.4.xlsx   V4 formula authority
        ↓
Navier_Stokes_Mathic_v0.5 lyrics line
        ↓
Navier_Stokes_Mathic_Beta_6.md
        ↓
Navier_Stokes_Mathic_v7.LOCKED.md
        ↓
Navier_Stokes_Mathic_v7_2.PAPER_SYNC.LOCKED.md
```

v7 remains immutable history. v7.2 is a paper-sync and review-authority successor. It preserves the V4 formulas and finite corridor while updating the performance lyrics, E6B/R1/R2 routing, Lean target, and review hierarchy.

Any future byte-level change requires a new successor artifact and lock receipt.

# Terminal Declaration

```text
CANONICAL_REVIEW_TARGET = MATHIC_v7.2
FORMULA_AUTHORITY = V4
FORMULA_MUTATION = NONE
CORRIDOR_MUTATION = NONE
PAPER_SYNC = ANEA_V2 + A1 + A2 + FOURIER_E6B
LEAN_EXECUTION_TARGET = MATHIC_v7.2
PAPERS_ROLE = FUNCTIONAL_ORNAMENTAL
LOCAL_ONE_TENSION = CLOSED
FINITE_CORRIDOR = REPLAY_CLOSED_FOR_RECORDED_FIXTURE
R2_TO_UAC = CONDITIONAL_CLOSED
UNIFORM_DEPLETION = OPEN
GLOBAL_3D_REGULARITY = OPEN
CLAIM_PROMOTION = NONE
LOCK_STATUS = LOCKED
```
