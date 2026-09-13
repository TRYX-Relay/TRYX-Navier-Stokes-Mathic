import Mathlib

namespace NavierStokesMathicV72

/-- Finite-N scalar ledger for the V4 / MATHIC v7.2 action accounting. -/
structure Ledger where
  Apos : ℝ
  AnegStretch : ℝ
  nuD : ℝ

/-- Signed action residual. -/
def Ledger.delta (L : Ledger) : ℝ :=
  L.Apos - L.AnegStretch - L.nuD

def deltaPos (x : ℝ) : ℝ := max x 0
def deltaNeg (x : ℝ) : ℝ := max (-x) 0
def posPart (x : ℝ) : ℝ := max x 0

end NavierStokesMathicV72
