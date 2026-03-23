import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Outgoing.B6_Sigma4

namespace NullFrame
namespace Incoming

open scoped BigOperators
open Outgoing

variable {𝕜 : Type _} [Field 𝕜]

def b7RHS
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor4 𝕜 F.n :=
  fun A B C D =>
    -(F.nablaA A).onTensor3 uν.toTensor C D B
    + (F.nablaA B).onTensor3 uν.toTensor C D A
    + (F.ζ A - F.ηbar A) * uν.toTensor C D B
    - (F.ζ B - F.ηbar B) * uν.toTensor C D A
    - F.ηbar C * uν.toTensor A B D
    + F.ηbar D * uν.toTensor A B C
    + ∑ E, F.χbar.toMatrix A E * Riem B E C D
    + ∑ E, F.χbar.toMatrix B E * Riem E A C D
    - ((1 / 2 : 𝕜) * F.χ.toMatrix A C) * uα.toMatrix B D
    + ((1 / 2 : 𝕜) * F.χ.toMatrix A D) * uα.toMatrix B C
    + ((1 / 2 : 𝕜) * F.χ.toMatrix B C) * uα.toMatrix A D
    - ((1 / 2 : 𝕜) * F.χ.toMatrix B D) * uα.toMatrix A C
    - ((1 / 2 : 𝕜) * F.χbar.toMatrix A C) * (τ.toMatrix B D + σ.toMatrix B D)
    + ((1 / 2 : 𝕜) * F.χbar.toMatrix A D) * (τ.toMatrix B C + σ.toMatrix B C)
    + ((1 / 2 : 𝕜) * F.χbar.toMatrix B C) * (τ.toMatrix A D + σ.toMatrix A D)
    - ((1 / 2 : 𝕜) * F.χbar.toMatrix B D) * (τ.toMatrix A C + σ.toMatrix A C)

/-- ORACLE: xAct-verified equation (B7), the $\nabla_3 R$ law. -/
axiom b7_r3
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla3.onTensor4 Riem = b7RHS F uα σ τ uν Riem

end Incoming
end NullFrame
