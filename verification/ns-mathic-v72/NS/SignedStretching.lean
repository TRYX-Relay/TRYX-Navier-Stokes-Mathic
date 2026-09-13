import NS.Definitions

namespace NavierStokesMathicV72

theorem signed_stretching_delta
    (Apos AnegStretch nuD delta : ℝ)
    (hdelta : delta = Apos - AnegStretch - nuD) :
    Apos - AnegStretch - nuD = delta := by
  linarith

theorem signed_stretching_sigma
    (Apos AnegStretch Sigma : ℝ)
    (hSigma : Sigma = Apos - AnegStretch) :
    Apos = AnegStretch + Sigma := by
  linarith

end NavierStokesMathicV72
