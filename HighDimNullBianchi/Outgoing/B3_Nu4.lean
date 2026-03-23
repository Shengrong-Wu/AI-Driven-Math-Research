import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Outgoing.B2_Beta4

namespace NullFrame
namespace Outgoing

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

def b3RHS
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (ν : Nu 𝕜 F.n) : Tensor3 𝕜 F.n :=
  fun A B C =>
    -((F.nablaA A).onTensor2 α.toMatrix B C - (F.nablaA B).onTensor2 α.toMatrix A C)
    - ((2 : 𝕜) * F.ζ A + F.η A) * α.toMatrix B C
    + ((2 : 𝕜) * F.ζ B + F.η B) * α.toMatrix A C
    + F.χ.toMatrix A C * β B
    - F.χ.toMatrix B C * β A
    + ∑ D, F.χ.toMatrix A D * (ν.toTensor B D C + ν.toTensor C D B)
    + ∑ D, F.χ.toMatrix B D * ν.toTensor D A C
    - ∑ D, F.χ.toMatrix B D * ν.toTensor C D A
    - (2 : 𝕜) * F.ω * ν.toTensor A B C

/-- ORACLE: xAct-verified equation (B3), the $\nabla_4 \nu$ law. -/
axiom b3_nu4
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (ν : Nu 𝕜 F.n) :
    F.nabla4.onTensor3 ν.toTensor = b3RHS F α β ν

end Outgoing
end NullFrame
