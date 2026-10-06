import NS.ForcedVorticity
import NS.ClaimBoundary

namespace NavierStokesMathicV73

abbrev ClaimStatus := NavierStokesMathicV72.ClaimStatus

def FORCED_CHANNEL_ALGEBRA : ClaimStatus := .proved
def ZERO_FORCE_REDUCTION : ClaimStatus := .proved
def FORCED_ONE_TENSION_LOCAL : ClaimStatus := .proved
def ADDRESS_TRANSFER_RETENTION : ClaimStatus := .proved
def FORCE_NOOP_REJECTION : ClaimStatus := .proved

-- The smooth-field calculus bridge has not been formalized in this project.
def FORCED_ENSTROPHY_ANALYTIC_BRIDGE : ClaimStatus := .open
def ADDRESS_LOCALIZATION_PDE_IDENTITY : ClaimStatus := .open
def SPECTRAL_COMMUTATOR_ESTIMATES : ClaimStatus := .open
def EXTERNAL_BLOWUP_REPLAY : ClaimStatus := .open
def INDEPENDENT_BLOWUP_PROOF : ClaimStatus := .open

end NavierStokesMathicV73
