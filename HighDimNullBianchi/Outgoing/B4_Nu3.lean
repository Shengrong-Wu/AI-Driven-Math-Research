import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Outgoing.B3_Nu4

namespace NullFrame
namespace Outgoing

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

def b4RHS
    (F : FrameDerivData 𝕜)
    (τ : Tau 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor3 𝕜 F.n :=
  fun A B C =>
    -(F.nablaA A).onTensor2 (τ.toMatrix + σ.toMatrix) B C
    + (F.nablaA B).onTensor2 (τ.toMatrix + σ.toMatrix) A C
    - F.ηbar A * (τ.toMatrix B C + σ.toMatrix B C)
    + F.ηbar B * (τ.toMatrix A C + σ.toMatrix A C)
    + (2 : 𝕜) * F.ηbar C * σ.toMatrix A B
    + (2 : 𝕜) * F.ωbar * ν.toTensor A B C
    + (2 : 𝕜) * ∑ D, F.ηbar D * Riem A B C D
    + F.χ.toMatrix A C * uβ B
    - F.χ.toMatrix B C * uβ A
    + ∑ D, F.χbar.toMatrix A D * ν.toTensor B D C
    + ∑ D, F.χbar.toMatrix B D * ν.toTensor D A C
    + ∑ D, F.χ.toMatrix A D * uν.toTensor C D B
    - ∑ D, F.χ.toMatrix B D * uν.toTensor C D A

/-- ORACLE: xAct-verified equation (B4), the $\nabla_3 \nu$ law. -/
axiom b4_nu3
    (F : FrameDerivData 𝕜)
    (τ : Tau 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla3.onTensor3 ν.toTensor = b4RHS F τ σ uβ ν uν Riem

end Outgoing
end NullFrame
