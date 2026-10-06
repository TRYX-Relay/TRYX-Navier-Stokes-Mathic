import NS.OneTension

namespace NavierStokesMathicV72

/-- Conditional scalar form of Uniform Action Control. -/
theorem uniform_action_control_to_sigma
    (Apos AnegStretch nuD E ε C Sigma : ℝ)
    (hSigma : Sigma = Apos - AnegStretch)
    (hUAC : Apos ≤ AnegStretch + (1 - ε) * nuD + C * E) :
    Sigma ≤ (1 - ε) * nuD + C * E := by
  linarith

/-- Differential-inequality algebra under the enstrophy balance and UAC. -/
theorem uac_to_differential_inequality
    (dE nuD E ε C Sigma : ℝ)
    (hBalance : (1 / 2 : ℝ) * dE + nuD = Sigma)
    (hSigma : Sigma ≤ (1 - ε) * nuD + C * E) :
    dE + 2 * ε * nuD ≤ 2 * C * E := by
  linarith

end NavierStokesMathicV72
