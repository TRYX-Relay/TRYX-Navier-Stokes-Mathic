import NS.Definitions

namespace NavierStokesMathicV72

open scoped BigOperators

/-- Finite R1 domination: sum of contributions is bounded by sum of positive parts. -/
theorem r1_finite_domination
    {ι : Type*} [Fintype ι]
    (f : ι → ℝ) :
    (∑ i, f i) ≤ ∑ i, max (f i) 0 := by
  exact Finset.sum_le_sum fun i _ => le_max_left (f i) 0

/-- R1 positive-load observable. -/
def r1PositiveLoad
    {ι : Type*} [Fintype ι]
    (f : ι → ℝ) : ℝ :=
  ∑ i, max (f i) 0

theorem r1_sum_le_positiveLoad
    {ι : Type*} [Fintype ι]
    (f : ι → ℝ) :
    (∑ i, f i) ≤ r1PositiveLoad f := by
  simpa [r1PositiveLoad] using r1_finite_domination f

end NavierStokesMathicV72
