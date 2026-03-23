import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Incoming.B11_UNu4

namespace NullFrame
namespace Incoming

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

def b12RHS
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (uν : UNu 𝕜 F.n) : Tensor3 𝕜 F.n :=
  fun A B C =>
    -((F.nablaA A).onTensor2 uα.toMatrix B C - (F.nablaA B).onTensor2 uα.toMatrix A C)
    + ((2 : 𝕜) * F.ζ A - F.ηbar A) * uα.toMatrix B C
    - ((2 : 𝕜) * F.ζ B - F.ηbar B) * uα.toMatrix A C
    - (2 : 𝕜) * F.ωbar * uν.toTensor A B C
    - F.χbar.toMatrix A C * uβ B
    + F.χbar.toMatrix B C * uβ A
    + ∑ D, F.χbar.toMatrix A D * (uν.toTensor B D C + uν.toTensor C D B)
    + ∑ D, F.χbar.toMatrix B D * uν.toTensor D A C
    - ∑ D, F.χbar.toMatrix B D * uν.toTensor C D A

/-- ORACLE: xAct-verified equation (B12), the $\nabla_3 \underline{\nu}$ law. -/
axiom b12_unu3
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (uν : UNu 𝕜 F.n) :
    F.nabla3.onTensor3 uν.toTensor = b12RHS F uα uβ uν

end Incoming
end NullFrame
