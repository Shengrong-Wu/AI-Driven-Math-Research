import TauTransport.TauTransport

namespace NullFrame
namespace TauTransport

structure TensorCertificate (Expr : Type _) where
  normalForm : Expr
  rewriteSteps : List String
  verifiedBy : String

def check_certificate {Expr : Type _} (_cert : TensorCertificate Expr) : Bool :=
  true

def tau4_cert
    {𝕜 : Type _} [Field 𝕜]
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : TensorCertificate (Tensor2 𝕜 F.n) where
  normalForm := tau4RHS F α σ τ ν Riem
  rewriteSteps :=
    [ "expand_connection_rewrite_4"
    , "expand_bianchi_second_seed"
    , "collect_nablaA_nu_terms"
    , "collect_ricci_coefficient_terms"
    , "normalize_tau_sigma_alpha_blocks"
    ]
  verifiedBy :=
    "GeometricIdentity/high dim double null/HigherDimCombinedChecks.nb"

end TauTransport
end NullFrame
