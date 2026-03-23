import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import Incoming.B7_R3

namespace NullFrame
namespace Incoming

open scoped BigOperators
open Outgoing

variable {𝕜 : Type _} [Field 𝕜]

def b8RHS
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    -2 * ∑ C, ∑ D, F.χbar.toMatrix C D * Riem C A D B
    + ∑ C, ∑ D,
        (-(F.nablaA C).onTensor3 uν.toTensor D B A
          + (F.nablaA A).onTensor3 uν.toTensor D B C
          + (F.ζ C - F.ηbar C) * uν.toTensor D B A
          - (F.ζ A - F.ηbar A) * uν.toTensor D B C
          - F.ηbar D * uν.toTensor C A B
          + F.ηbar B * uν.toTensor C A D
          + ∑ E, F.χbar.toMatrix C E * Riem A E D B
          + ∑ E, F.χbar.toMatrix A E * Riem E C D B
          - ((1 / 2 : 𝕜) * F.χ.toMatrix C D) * uα.toMatrix A B
          + ((1 / 2 : 𝕜) * F.χ.toMatrix C B) * uα.toMatrix A D
          + ((1 / 2 : 𝕜) * F.χ.toMatrix A D) * uα.toMatrix B C
          - ((1 / 2 : 𝕜) * F.χ.toMatrix A B) * uα.toMatrix C D
          - ((1 / 2 : 𝕜) * F.χbar.toMatrix C D) * (τ.toMatrix A B + σ.toMatrix A B)
          + ((1 / 2 : 𝕜) * F.χbar.toMatrix C B) * (τ.toMatrix A D + σ.toMatrix A D)
          + ((1 / 2 : 𝕜) * F.χbar.toMatrix A D) * (τ.toMatrix C B + σ.toMatrix C B)
          - ((1 / 2 : 𝕜) * F.χbar.toMatrix A B) * (τ.toMatrix C D + σ.toMatrix C D))

/-- ORACLE: xAct-verified equation (B8), the $\nabla_3 \tau$ law. -/
axiom b8_tau3
    (F : FrameDerivData 𝕜)
    (uα : UAlpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla3.onTensor2 τ.toMatrix = b8RHS F uα σ τ uν Riem

def tauTrace (F : FrameDerivData 𝕜) (τ : Tau 𝕜 F.n) : 𝕜 :=
  Matrix.trace τ.toMatrix

end Incoming
end NullFrame
