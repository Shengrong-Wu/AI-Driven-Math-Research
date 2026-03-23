import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Outgoing.B5_R4

namespace NullFrame
namespace Outgoing

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

def b6RHS
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    ∑ C, (F.nablaA C).onTensor3 ν.toTensor A B C
    + ∑ C, (F.ζ C + F.η C) * ν.toTensor A B C
    - traceChi F * σ.toMatrix A B
    + F.η B * β A
    - F.η A * β B
    + ∑ C, ((1 / 2 : 𝕜) * F.χ.toMatrix A C) * (τ.toMatrix B C + σ.toMatrix B C)
    - ∑ C, ((1 / 2 : 𝕜) * F.χ.toMatrix B C) * (τ.toMatrix A C + σ.toMatrix A C)
    + ∑ C, ((1 / 2 : 𝕜) * F.χbar.toMatrix A C) * α.toMatrix C B
    - ∑ C, ((1 / 2 : 𝕜) * F.χbar.toMatrix B C) * α.toMatrix C A

/-- ORACLE: xAct-verified equation (B6), the $\nabla_4 \sigma$ law. -/
axiom b6_sigma4
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n) :
    F.nabla4.onTensor2 σ.toMatrix = b6RHS F α β σ τ ν

end Outgoing
end NullFrame
