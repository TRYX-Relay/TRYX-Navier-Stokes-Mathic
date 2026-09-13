import NS.UniformActionControl

namespace NavierStokesMathicV72

/-- Exact finite R2 identity for Theta = [Sigma]_+ / M when M is nonzero. -/
theorem theta_identity
    (Sigma M : ℝ)
    (hM : M ≠ 0) :
    (max Sigma 0 / M) * M = max Sigma 0 := by
  field_simp

/-- Exact finite factorization corresponding to Theta = chi * Lambda. -/
theorem theta_factorization
    (Sigma T M : ℝ)
    (hT : T ≠ 0)
    (hM : M ≠ 0) :
    (max Sigma 0 / T) * (T / M) = max Sigma 0 / M := by
  field_simp

/-- Conditional R2-to-UAC scalar bridge. -/
theorem r2_conditional_bridge
    (Sigma Theta E D ν a Cstar K : ℝ)
    (hNonnegE : 0 ≤ E)
    (hYoung :
      Sigma ≤ a * ν * D
        + (27 * Cstar^4 / (256 * (a * ν)^3)) * Theta^4 * E^3)
    (hDepletion : Theta^4 * E^2 ≤ K)
    (hCoeffNonneg : 0 ≤ 27 * Cstar^4 / (256 * (a * ν)^3)) :
    Sigma ≤ a * ν * D
      + (27 * Cstar^4 * K / (256 * (a * ν)^3)) * E := by
  have hmul : Theta^4 * E^3 ≤ K * E := by
    nlinarith
  have hscale :
      (27 * Cstar^4 / (256 * (a * ν)^3)) * Theta^4 * E^3
        ≤ (27 * Cstar^4 / (256 * (a * ν)^3)) * (K * E) := by
    calc
      (27 * Cstar^4 / (256 * (a * ν)^3)) * Theta^4 * E^3
          = (27 * Cstar^4 / (256 * (a * ν)^3)) * (Theta^4 * E^3) := by ring
      _ ≤ (27 * Cstar^4 / (256 * (a * ν)^3)) * (K * E) :=
        mul_le_mul_of_nonneg_left hmul hCoeffNonneg
  have hcombine :
      Sigma ≤ a * ν * D
        + (27 * Cstar^4 / (256 * (a * ν)^3)) * (K * E) := by
    linarith
  calc
    Sigma ≤ a * ν * D
        + (27 * Cstar^4 / (256 * (a * ν)^3)) * (K * E) := hcombine
    _ = a * ν * D
        + (27 * Cstar^4 * K / (256 * (a * ν)^3)) * E := by ring

end NavierStokesMathicV72
