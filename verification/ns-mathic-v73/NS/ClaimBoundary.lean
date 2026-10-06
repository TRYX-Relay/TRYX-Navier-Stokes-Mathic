import NS.FixtureReplay

namespace NavierStokesMathicV72

inductive ClaimStatus
  | proved
  | replayOnly
  | provedUnderHypotheses
  | diagnostic
  | open
  deriving Repr, DecidableEq

def V4_FORMULA_AUTHORITY : ClaimStatus := .proved
def ONE_TENSION_LOCAL : ClaimStatus := .proved
def FINITE_FIXTURE : ClaimStatus := .replayOnly
def CORRIDOR_35_ROW_REPLAY : ClaimStatus := .replayOnly
def PROJECTION_NEUTRALITY : ClaimStatus := .provedUnderHypotheses
def R1_FINITE_DOMINATION : ClaimStatus := .proved
def R2_FINITE_IDENTITIES : ClaimStatus := .proved
def R2_TO_UAC : ClaimStatus := .provedUnderHypotheses
def E6B_REVIEW_INSTRUMENT : ClaimStatus := .diagnostic

def SCALE_UNIFORM_R2_DEPLETION : ClaimStatus := .open
def UNIFORM_ACTION_CONTROL_UNCONDITIONAL : ClaimStatus := .open
def CONTINUUM_PASSAGE : ClaimStatus := .open
def GLOBAL_3D_UNFORCED_REGULARITY : ClaimStatus := .open

end NavierStokesMathicV72
