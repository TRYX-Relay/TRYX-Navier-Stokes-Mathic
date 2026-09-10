import Mathlib

namespace TRYX.NS

theorem one_tension_accounting (g c d : ℝ) :
    g + max (-(g - c - d)) 0 = c + d + max (g - c - d) 0 := by
  rcases le_total 0 (g - c - d) with h | h
  · rw [max_eq_left h, max_eq_right (neg_nonpos.mpr h)]
    ring
  · rw [max_eq_right h, max_eq_left (neg_nonneg.mpr h)]
    ring

theorem v6_recorded_positive_remainder  :
    max ((82087564089412 : ℝ) / 100000000000 - 13487564089412 / 100000000000 - 588) 0 = 98 := by
  norm_num

theorem v6_atomic_remainder_not_exhausted  :
    max ((82087564089412 : ℝ) / 100000000000 - 13487564089412 / 100000000000 - 588) 0 ≠ 0 := by
  norm_num

end TRYX.NS

#print axioms TRYX.NS.one_tension_accounting
#print axioms TRYX.NS.v6_recorded_positive_remainder
#print axioms TRYX.NS.v6_atomic_remainder_not_exhausted
