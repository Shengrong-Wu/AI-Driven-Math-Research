import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Incoming.B9_Rho3

namespace NullFrame
namespace Incoming

open scoped BigOperators
open Outgoing

variable {𝕜 : Type _} [Field 𝕜]

def b10RHS
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    -(∑ C, (F.nablaA C).onTensor3 uν.toTensor A B C)
    + ∑ C, (F.ζ C - F.ηbar C) * uν.toTensor A B C
    - traceChiBar F * σ.toMatrix A B
    - F.ηbar A * uβ B
    + F.ηbar B * uβ A
    - ∑ C, ((1 / 2 : 𝕜) * F.χ.toMatrix A C) * uα.toMatrix C B
    + ∑ C, ((1 / 2 : 𝕜) * F.χ.toMatrix B C) * uα.toMatrix C A
    - ∑ C, ((1 / 2 : 𝕜) * F.χbar.toMatrix A C) * (τ.toMatrix C B + σ.toMatrix C B)
    + ∑ C, ((1 / 2 : 𝕜) * F.χbar.toMatrix B C) * (τ.toMatrix C A + σ.toMatrix C A)

/-- ORACLE: xAct-verified equation (B10), the $\nabla_3 \sigma$ law. -/
axiom b10_sigma3
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (uβ : UBeta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n) :
    F.nabla3.onTensor2 σ.toMatrix = b10RHS F uα uβ σ τ uν

end Incoming
end NullFrame
