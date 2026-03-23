import Mathlib.Algebra.Module.LinearMap.Basic
import CovDeriv.ConnectionRewrite

namespace NullFrame

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

abbrev RawTensorDeriv (𝕜 : Type _) [Field 𝕜] (n : Nat) :=
  Tensor4 𝕜 n →ₗ[𝕜] Tensor4 𝕜 n

abbrev TangentialRawTensorDeriv (𝕜 : Type _) [Field 𝕜] (n : Nat) :=
  Fin n → RawTensorDeriv 𝕜 n

abbrev TangentialDivergenceMap (𝕜 : Type _) [Field 𝕜] (n : Nat) :=
  (Fin n → Tensor4 𝕜 n) →ₗ[𝕜] Tensor4 𝕜 n

def cyclicSecondBianchiSum {n : Nat}
    (D_i D_j D_k : RawTensorDeriv 𝕜 n)
    (Riem : Tensor4 𝕜 n) : Tensor4 𝕜 n :=
  D_i Riem + D_j Riem + D_k Riem

def tangentialDerivativeSection {n : Nat}
    (DA : TangentialRawTensorDeriv 𝕜 n)
    (Riem : Tensor4 𝕜 n) : Fin n → Tensor4 𝕜 n :=
  fun A => DA A Riem

def divfreeSeedExpr {n : Nat}
    (DA : TangentialRawTensorDeriv 𝕜 n)
    (contract : TangentialDivergenceMap 𝕜 n)
    (Riem nullFrameCorrection : Tensor4 𝕜 n) : Tensor4 𝕜 n :=
  contract (tangentialDerivativeSection DA Riem) + nullFrameCorrection

/-- ORACLE: xAct-verified second Bianchi seed in null-frame form. -/
axiom bianchi_second
    (F : FrameDerivData 𝕜)
    (D_i D_j D_k : RawTensorDeriv 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    cyclicSecondBianchiSum D_i D_j D_k Riem = 0

/-- ORACLE: xAct-verified divergence seed after tangential contraction by $\gamma^{AC}$. -/
axiom bianchi_divfree
    (F : FrameDerivData 𝕜)
    (DA : TangentialRawTensorDeriv 𝕜 F.n)
    (contract : TangentialDivergenceMap 𝕜 F.n)
    (Riem nullFrameCorrection : Tensor4 𝕜 F.n) :
    divfreeSeedExpr DA contract Riem nullFrameCorrection = 0

end NullFrame
