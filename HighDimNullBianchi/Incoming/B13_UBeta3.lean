import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Incoming.B12_UNu3

namespace NullFrame
namespace Incoming

open scoped BigOperators
open Outgoing

variable {𝕜 : Type _} [Field 𝕜]

def b13RHS
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (uν : UNu 𝕜 F.n) : Tensor1 𝕜 F.n :=
  fun A =>
    -(∑ B, (F.nablaA B).onTensor2 uα.toMatrix B A)
    + ∑ B, ((2 : 𝕜) * F.ζ B - F.ηbar B) * uα.toMatrix B A
    + ∑ B, ∑ C, chiBarHatMat F B C * uν.toTensor A B C
    - ∑ B, chiBarHatMat F A B * uβ B
    - traceChiBar F * uβ A
    - (2 : 𝕜) * F.ωbar * uβ A

/-- ORACLE: xAct-verified equation (B13), the $\nabla_3 \underline{\beta}$ law. -/
axiom b13_ubeta3
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (uν : UNu 𝕜 F.n) :
    F.nabla3.onTensor1 uβ = b13RHS F uα uβ uν

end Incoming
end NullFrame
