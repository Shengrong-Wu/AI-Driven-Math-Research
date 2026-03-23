import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Outgoing.B4_Nu3

namespace NullFrame
namespace Outgoing

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

def b5RHS
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor4 𝕜 F.n :=
  fun A B C D =>
    -(F.nablaA A).onTensor3 ν.toTensor C D B
    + (F.nablaA B).onTensor3 ν.toTensor C D A
    - ((2 : 𝕜) * F.ζ A + F.η A) * ν.toTensor C D B
    + ((2 : 𝕜) * F.ζ B + F.η B) * ν.toTensor C D A
    - F.η C * ν.toTensor A B D
    + F.η D * ν.toTensor A B C
    + ∑ E, F.χ.toMatrix A E * Riem B E C D
    + ∑ E, F.χ.toMatrix B E * Riem E A C D
    - ((1 / 2 : 𝕜) * F.χ.toMatrix A C) * (τ.toMatrix D B + σ.toMatrix D B)
    + ((1 / 2 : 𝕜) * F.χ.toMatrix A D) * (τ.toMatrix C B + σ.toMatrix C B)
    + ((1 / 2 : 𝕜) * F.χ.toMatrix B C) * (τ.toMatrix D A + σ.toMatrix D A)
    - ((1 / 2 : 𝕜) * F.χ.toMatrix B D) * (τ.toMatrix C A + σ.toMatrix C A)
    - ((1 / 2 : 𝕜) * F.χbar.toMatrix A C) * α.toMatrix B D
    + ((1 / 2 : 𝕜) * F.χbar.toMatrix A D) * α.toMatrix B C
    + ((1 / 2 : 𝕜) * F.χbar.toMatrix B C) * α.toMatrix A D
    - ((1 / 2 : 𝕜) * F.χbar.toMatrix B D) * α.toMatrix A C

/-- ORACLE: xAct-verified equation (B5), the $\nabla_4 R$ law. -/
axiom b5_r4
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla4.onTensor4 Riem = b5RHS F α σ τ ν Riem

end Outgoing
end NullFrame
