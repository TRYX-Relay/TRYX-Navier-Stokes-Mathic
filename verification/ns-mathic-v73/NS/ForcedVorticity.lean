import NS.OneTension

namespace NavierStokesMathicV73

/-- Global forced-vorticity ledger.  `FomegaPlus` and `FomegaMinus`
retain the sign-separated curl-force pairing. -/
structure ForcedLedger where
  Apos : ℝ
  AnegStretch : ℝ
  nuD : ℝ
  FomegaPlus : ℝ
  FomegaMinus : ℝ

/-- Signed forced Action. -/
def ForcedLedger.delta (L : ForcedLedger) : ℝ :=
  L.Apos - L.AnegStretch - L.nuD + L.FomegaPlus - L.FomegaMinus

/-- Addressed successor ledger.  `transfer` retains physical localization,
spectral transfer, or projection-commutator residue instead of erasing it. -/
structure AddressedForcedLedger extends ForcedLedger where
  transfer : ℝ

def AddressedForcedLedger.delta (L : AddressedForcedLedger) : ℝ :=
  L.toForcedLedger.delta + L.transfer

def forcePos (x : ℝ) : ℝ := max x 0
def forceNeg (x : ℝ) : ℝ := max (-x) 0

/-- Exact positive/negative split for a signed force-vorticity channel. -/
theorem force_channel_split (x : ℝ) :
    x = forcePos x - forceNeg x := by
  unfold forcePos forceNeg
  have h := NavierStokesMathicV72.residual_split x
  linarith

/-- Forced One-Tension accounting identity. -/
theorem forced_one_tension
    (Apos AnegStretch nuD FomegaPlus FomegaMinus delta : ℝ)
    (hdelta :
      delta = Apos - AnegStretch - nuD + FomegaPlus - FomegaMinus) :
    Apos + FomegaPlus + max (-delta) 0 =
      AnegStretch + nuD + FomegaMinus + max delta 0 := by
  have hsplit := NavierStokesMathicV72.residual_split delta
  linarith

theorem forced_one_tension_ledger (L : ForcedLedger) :
    L.Apos + L.FomegaPlus + max (-L.delta) 0 =
      L.AnegStretch + L.nuD + L.FomegaMinus + max L.delta 0 := by
  apply forced_one_tension
  rfl

/-- The forced successor reduces exactly to the v7.2 unforced ledger when
both force channels vanish. -/
theorem zero_force_reduction
    (Apos AnegStretch nuD : ℝ) :
    (ForcedLedger.mk Apos AnegStretch nuD 0 0).delta =
      (NavierStokesMathicV72.Ledger.mk Apos AnegStretch nuD).delta := by
  simp [ForcedLedger.delta, NavierStokesMathicV72.Ledger.delta]

/-- A nonzero net force channel cannot be silently treated as the unforced
ledger without changing the signed Action. -/
theorem force_noop_rejected
    (Apos AnegStretch nuD FomegaPlus FomegaMinus : ℝ)
    (hforce : FomegaPlus - FomegaMinus ≠ 0) :
    Apos - AnegStretch - nuD + FomegaPlus - FomegaMinus ≠
      Apos - AnegStretch - nuD := by
  intro h
  apply hforce
  linarith

/-- Address transfer is an explicit additive channel. -/
theorem addressed_transfer_retained (L : AddressedForcedLedger) :
    L.delta = L.toForcedLedger.delta + L.transfer := by
  rfl

/-- A neutral localization/projection residue recovers the global forced ledger. -/
theorem neutral_transfer_reduction
    (L : AddressedForcedLedger) (htransfer : L.transfer = 0) :
    L.delta = L.toForcedLedger.delta := by
  simp [AddressedForcedLedger.delta, htransfer]

/-- Named signed Action decomposition, using the inherited residual split. -/
theorem signed_action_split (x : ℝ) :
    x = NavierStokesMathicV72.deltaPos x - NavierStokesMathicV72.deltaNeg x := by
  unfold NavierStokesMathicV72.deltaPos NavierStokesMathicV72.deltaNeg
  have h := NavierStokesMathicV72.residual_split x
  linarith

end NavierStokesMathicV73
