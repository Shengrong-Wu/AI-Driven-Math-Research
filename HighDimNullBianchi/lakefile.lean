import Lake
open Lake DSL

package «NullFrame» where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`autoImplicit, false⟩,
    ⟨`relaxedAutoImplicit, false⟩,
    ⟨`weak.linter.mathlibStandardSet, true⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.28.0"

lean_lib «NullFrame» where
  globs := #[
    .one `NullFrame,
    .submodules `CovDeriv,
    .submodules `BianchiSeeds,
    .submodules `TauTransport,
    .submodules `Outgoing,
    .submodules `Incoming,
    .submodules `Certificates,
    .submodules `Main
  ]
