import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Outgoing.B1_Alpha3

namespace NullFrame
namespace Outgoing

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

def b2RHS
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (ν : Nu 𝕜 F.n) : Tensor1 𝕜 F.n :=
  fun A =>
    ∑ B, (F.nablaA B).onTensor2 α.toMatrix B A
    + ∑ B, ((2 : 𝕜) * F.ζ B + F.η B) * α.toMatrix B A
    - ∑ B, chiHatMat F A B * β B
    - ∑ B, ∑ C, chiHatMat F B C * ν.toTensor A B C
    - coeffOnePlusTwoOverN F * traceChi F * β A
    - (2 : 𝕜) * F.ω * β A

/-- ORACLE: xAct-verified equation (B2), the $\nabla_4 \beta$ law. -/
axiom b2_beta4
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (ν : Nu 𝕜 F.n) :
    F.nabla4.onTensor1 β = b2RHS F α β ν

end Outgoing
end NullFrame
