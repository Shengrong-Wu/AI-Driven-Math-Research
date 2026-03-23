import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Incoming.B13_UBeta3

namespace NullFrame
namespace Incoming

open scoped BigOperators
open Outgoing

variable {𝕜 : Type _} [Field 𝕜]

def b14Core
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    -(∑ C, (F.nablaA C).onTensor3 uν.toTensor C A B)
    + ∑ C, F.ζ C * uν.toTensor C A B
    - ((1 / 2 : 𝕜) * traceChi F) * uα.toMatrix A B
    - ((1 / 2 : 𝕜) * traceChiBar F) * τ.toMatrix A B
    + ∑ C, ((1 / 2 : 𝕜) * F.χ.toMatrix A C) * uα.toMatrix C B
    + ∑ C, ((1 / 2 : 𝕜) * F.χbar.toMatrix A C) * (τ.toMatrix B C + σ.toMatrix B C)
    - ∑ C, ∑ D, F.χbar.toMatrix C D * Riem C A D B
    - ∑ C, F.χbar.toMatrix B C * σ.toMatrix C A

def b14RHS
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    4 * F.ω * uα.toMatrix A B
    - 2 * (∑ C, F.η C * (uν.toTensor C A B + uν.toTensor C B A))
    - (F.η A * uβ B + F.η B * uβ A)
    - F.nabla3.onTensor2 τ.toMatrix A B
    + 2 * symmTensor (b14Core F uα σ τ uν Riem) A B

/-- ORACLE: xAct-verified equation (B14), the $\nabla_4 \underline{\alpha}$ law. -/
axiom b14_ualpha4
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla4.onTensor2 uα.toMatrix = b14RHS F uα uβ σ τ uν Riem

end Incoming
end NullFrame
