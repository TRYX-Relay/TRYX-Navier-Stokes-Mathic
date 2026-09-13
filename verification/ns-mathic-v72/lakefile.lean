import Lake
open Lake DSL

package "NavierStokesMathicV72" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.19.0"

@[default_target]
lean_lib NavierStokesMathicV72 where
  roots := #[
    `NavierStokesMathicV72,
    `NS.Definitions,
    `NS.ProjectionNeutrality,
    `NS.SignedStretching,
    `NS.OneTension,
    `NS.R1Observable,
    `NS.UniformActionControl,
    `NS.R2Bridge,
    `NS.FixtureReplay,
    `NS.ClaimBoundary,
    `NS.ReviewTarget
  ]
