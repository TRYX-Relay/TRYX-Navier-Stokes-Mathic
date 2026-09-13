import NS.Definitions

namespace NavierStokesMathicV72

/--
Abstract projection-neutrality lemma under explicit self-adjointness and
range hypotheses. No global Galerkin claim is inferred without them.
-/
theorem projection_neutrality
    {V : Type*}
    (pair : V → V → ℝ)
    (P : V → V)
    (F ω : V)
    (hSelf : ∀ x y, pair (P x) y = pair x (P y))
    (hRange : P ω = ω) :
    pair (P F) ω = pair F ω := by
  rw [hSelf, hRange]

end NavierStokesMathicV72
