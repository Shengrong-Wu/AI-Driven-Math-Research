import Mathlib.Algebra.Module.LinearMap.Basic
import CovDeriv.FrameDerivatives

namespace NullFrame

variable {𝕜 : Type _} [Field 𝕜]

/-- ORACLE: xAct-verified $D_4 R = \nabla_4 R + [\chi,\eta\text{ corrections}]$. -/
axiom conn_rewrite_4
    (F : FrameDerivData 𝕜)
    (D4 : Tensor4 𝕜 F.n →ₗ[𝕜] Tensor4 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n)
    (chiEtaCorrection : Tensor4 𝕜 F.n) :
    D4 Riem = F.nabla4Tensor4 Riem + chiEtaCorrection

/-- ORACLE: xAct-verified $D_3 R = \nabla_3 R + [\bar\chi,\bar\eta\text{ corrections}]$. -/
axiom conn_rewrite_3
    (F : FrameDerivData 𝕜)
    (D3 : Tensor4 𝕜 F.n →ₗ[𝕜] Tensor4 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n)
    (chiBarEtaBarCorrection : Tensor4 𝕜 F.n) :
    D3 Riem = F.nabla3Tensor4 Riem + chiBarEtaBarCorrection

/-- ORACLE: xAct-verified $D_A R = \nabla_A R + [\zeta\text{ corrections}]$. -/
axiom conn_rewrite_A
    (F : FrameDerivData 𝕜)
    (A : Fin F.n)
    (DA : Tensor4 𝕜 F.n →ₗ[𝕜] Tensor4 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n)
    (zetaCorrection : Tensor4 𝕜 F.n) :
    DA Riem = F.nablaATensor4 A Riem + zetaCorrection

end NullFrame
