import NS.SignedStretching

namespace NavierStokesMathicV72

/-- Positive/negative residual split used by the V4 One-Tension identity. -/
theorem residual_split (x : ℝ) :
    x + max (-x) 0 = max x 0 := by
  rcases le_total 0 x with hx | hx
  · rw [max_eq_right (neg_nonpos.mpr hx), max_eq_left hx]
    ring
  · rw [max_eq_left (neg_nonneg.mpr hx), max_eq_right hx]
    ring

/-- V4 One-Tension action-accounting identity. -/
theorem one_tension
    (Apos AnegStretch nuD delta : ℝ)
    (hdelta : delta = Apos - AnegStretch - nuD) :
    Apos + max (-delta) 0 =
      AnegStretch + nuD + max delta 0 := by
  have hsplit := residual_split delta
  linarith

end NavierStokesMathicV72
