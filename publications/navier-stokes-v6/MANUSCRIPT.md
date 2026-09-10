# Navier–Stokes Mathic v6: signed Action accounting and a reproducible finite closure benchmark

Author: **Virgil Lee Gattenby** — TRYX / ENAID / MATHIC project.


Project: https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic

Research manuscript draft — 2026-09-10. Computational packaging and the submitted Lean translations were prepared with AI assistance; the precise translations remain available for human review.

## Abstract

Navier–Stokes Mathic v6 organizes positive vortex stretching, compressive stretching, and viscous dissipation into an addressed Action ledger. We present an exact algebraic balance, its recorded numerical specialization, and a replay of a 35-step finite corridor. The recorded atomic balance has equality residual zero and positive remainder 98. Starting the separate corridor carrier at zero, the recorded folds first return to zero at ordinal 34, with maximum discrepancy from the stored carrier of 2 × 10⁻¹⁶. Three accounting statements have passed Lean and independent nanoda verification. These results establish the specified identities and recorded-data consistency. Resolution-uniform control and continuum regularity remain open obligations in the source itself.

## Construction and interpretation

The governing construction order is TRYX → ENAID → Laws → MATHIC. The source distinguishes Value, Perception, and Action, with excess assigned to Action. The Mathic score retains atomic, micro, macro, and squadron roles. Its address family is declared as α = (N, x, phase, orientation, scale). Declaring this family indexes the proposed comparisons; execution here processes the finite recorded projection.

The complete source consists of seven retrieved v0.4 sheet bodies, the corridor data, nine lyric passages, and Python replay code. These are parsed spreadsheet contents, without the original XLSX formatting or native formula objects. The lyrics document interpretation and ordering; the replay executes explicit arithmetic. Independent execution derived solely from lyrical interpretation has not been demonstrated.

## Exact theorem and hypotheses

Here, **accounting closure** means equality of the signed ledger. **Atomic exhaustion** means that its positive remainder vanishes at the selected address. **Recorded corridor closure** means the successive carrier returns to zero within the supplied finite sequence. These terms identify different checks: v6 has accounting closure with a nonzero atomic remainder, followed by a separately recorded corridor return. A return at the final recorded row makes no claim about later rows.

Let g, c, d be arbitrary real numbers, write δ = g − c − d, and define δ⁺ = max(δ, 0), δ⁻ = max(−δ, 0). Then

\[
g+\delta^- = c+d+\delta^+.
\]

This is the submitted `TRYX.NS.one_tension_accounting` theorem. Its proof separates δ ≥ 0 from δ ≤ 0 and uses real arithmetic. It does not require a velocity field or a sign hypothesis on g, c, d. For the physical interpretation, the source assigns

\[
g=\int(\omega^T S\omega)^+,\qquad
c=\int(-\omega^T S\omega)^+,\qquad
d=\nu\int|\nabla\omega|^2,
\]

with vorticity ω, symmetric velocity-gradient tensor S, and fixed positive viscosity ν. These assignments require well-defined finite integrals. The Lean theorem accepts real channel values; it does not formalize these integrals, the PDE, or the relationship between a fluid solution and the channels.

For the recorded atomic inputs g = 820.87564089412, c = 134.87564089412, and d = 588, the positive remainder is exactly 98 when the decimals are interpreted as rationals embedded in the reals. Both this evaluation and its nonzero consequence have Lean proofs. Equality of the two ledger sides and exhaustion of positive Action are distinct properties: this atomic example satisfies the first and fails the second.

### Short proof and exhaustion criterion

If δ ≥ 0, then δ⁻ = 0 and δ⁺ = δ, so c + d + δ⁺ = g. If δ ≤ 0, then δ⁺ = 0 and δ⁻ = −δ, so g + δ⁻ = c + d. Both cases give the stated equality, including δ = 0.

Atomic exhaustion holds exactly when g ≤ c + d. With the recorded coefficient difference c⁺ − c⁻ = 2, the fixture family has

\[
\delta=2A^3-12\nu A^2=2A^2(A-6\nu).
\]

For A > 0 and ν > 0, its atomic positive remainder vanishes exactly when A ≤ 6ν; A = 0 also gives zero remainder. At A = 7 and ν = 1, δ = 98. This deduction describes the recorded algebraic fixture family. A change of ν changes this classification; the universal accounting identity still holds. It supplies no evolving fluid state or compensating control law. The factorization and criterion are elementary manuscript deductions, beyond the three currently submitted Lean statements.

## Executable method

The atomic fixture records A = 7 and ν = 1, with c⁺ = 2.39322344284 and c⁻ = 0.39322344284. The replay evaluates g = c⁺A³, c = c⁻A³, and d = 12νA² using Python Decimal arithmetic. The source attributes the coefficients to normalized-torus quadrature; this package treats them as recorded inputs and does not independently reproduce that quadrature.

For the separate corridor, let e₀ = 0. At row j, with recorded compressed growth Gⱼ and exhaustive Action Hⱼ, execute

\[
e_{j+1}=\max(e_j+G_j-H_j,0),\quad j=0,\ldots,34.
\]

The source's ordinal j labels that row's successor carrier. Consequently, return at ordinal 34 denotes e₃₅ = 0. The starting corridor carrier is zero, not the atomic remainder 98. Each fold retains the positive part before the next row; one final clipped sum would be a different computation.

The replay extracts the Atomic and Macro sheets, checks the atomic specialization, computes the 35 folds, and compares them to the stored successor values with tolerance 10⁻¹². The original program is distributed unchanged. Its default Decimal precision is 28 digits. This is a numerical replay of recorded inputs, not a formal proof of the corridor or a fresh PDE simulation.

## Demonstrated results

| Check | Result | Scope |
|---|---|---|
| General One-Tension identity | Lean and nanoda accepted | All real channel triples |
| Recorded positive remainder | Exactly 98; Lean and nanoda accepted | Specified decimal inputs |
| Recorded remainder nonzero | Lean and nanoda accepted | Same atomic fixture |
| Atomic equality residual | 0 | Decimal replay |
| Corridor | 35 rows; first zero at ordinal 34 | Stored finite trajectory |
| Peak carrier | 0.8976247572772990 at ordinal 17 | Stored finite trajectory |
| Maximum replay discrepancy | 2 × 10⁻¹⁶ | Against recorded carrier values |
| Nine incremental lyrics | Historical receipt reports all passed | Preservation of recorded score and scope |
| Deliberate input corruption | Amplitude, growth, and return-ordinal mutations detected in fresh checks | Selected negative controls |

The Lean source and pinned dependency manifest accompany the manuscript. The successful run at proof commit `05bf7ef31c80dab2e580a72ce4608435efd00e8a` checked three named NS statements. Comparator matched reference statements and permitted axioms; nanoda independently checked the exported proof. The reported Lean axiom set is propext, Classical.choice, and Quot.sound. Reference challenge placeholders are isolated from the solution, whose import is Mathlib. Checker acceptance establishes the encoded statements; correspondence of the encoding to the intended scientific claim remains reviewable.

## Remaining proof obligations

The source explicitly leaves S4 positive-Action tail control, S5 signed Galerkin/filter commutator control, and S6 an N-independent Action bound unresolved. Its S7 continuum regularity gate remains open. The accounting identity alone supplies no bound on growth, duration, or spatial derivatives. Finite return at one retained resolution supplies no uniform return law across all admissible data and resolutions.

Temperature feedback, variable-viscosity compensation, and a complete atomic PNP fluid runtime are outside the implemented v6 replay. Later beta experiments are separate development work and are not promoted by this package. The mathematical result presented here does not establish universal three-dimensional Navier–Stokes regularity or a breakdown construction.

## Provenance and reproducibility

### Claim-to-source map

| Manuscript claim | Source location | Executable evidence |
|---|---|---|
| Signed channel definitions | v6 Infinity Address and Contract sheets | Inputs interpreted as real channels in `one_tension_accounting` |
| Atomic 98 remainder | v6 Atomic Score and Infinity Address sheets | `v6_recorded_positive_remainder`; `v6_atomic_remainder_not_exhausted`; Decimal replay |
| Finite return | v6 Macro Score, rows with ordinals 0–34 | `replay.py`, distributed unchanged |
| Nine lyrics preserve the score | v6 Sequential test receipt | Historical staged test record; current replay checks the final score |
| Unresolved uniform gates | v6 Squadron Score S4–S7 | Open obligations, no proof supplied |

The full [locked score](../../charts/navier-stokes/Navier_Stokes_Mathic_Beta_6.md), [Lean statements and proofs](../../verification/tryx-lean/TryxProof.lean), [replay](replay.py), and [verification evidence](verification-evidence.json) allow each claim to be checked at its own level. The general balance is an elementary positive/negative-part identity. The contribution presented for review is the Mathic's organization of the signed channels and its preserved, reproducible benchmark; this manuscript does not establish novelty of the underlying identity.

The locked source SHA-256 is `4752631cf5705669d51fae99ee0b3f025f8bdb70e9f7113926f3d389d65f562d`. The original lock and subsequent v6 release designation are included unchanged. Source-body preservation, fresh replay, and proof-checking evidence are separate records linked in the package index.

The accounting derivation comes from the TRYX Mathic source. The formal verification infrastructure uses the same pinned checking toolchain adopted during review of the archived competitor work; use of that toolchain does not imply shared mathematical constructions or establish priority. This manuscript makes no priority claim against the competitor and no claim to a Millennium Prize solution.
