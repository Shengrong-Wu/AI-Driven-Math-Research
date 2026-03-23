import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import BianchiSeeds.BianchiSeeds

namespace NullFrame
namespace TauTransport

open scoped BigOperators

variable {𝕜 : Type _} [Field 𝕜]

def tau4RHS
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    -2 * ∑ C, ∑ D, F.χ.toMatrix C D * Riem C A D B
      + ∑ C, ∑ D,
          (-(F.nablaA C).onTensor3 ν.toTensor D B A
            + (F.nablaA A).onTensor3 ν.toTensor D B C
            - ((2 : 𝕜) * F.ζ C + F.η C) * ν.toTensor D B A
            + ((2 : 𝕜) * F.ζ A + F.η A) * ν.toTensor D B C
            - F.η D * ν.toTensor C A B
            + F.η B * ν.toTensor C A D
            + ∑ E, F.χ.toMatrix C E * Riem A E D B
            + ∑ E, F.χ.toMatrix A E * Riem E C D B
            - ((1 / 2 : 𝕜) * F.χ.toMatrix C D) * (τ.toMatrix B A + σ.toMatrix B A)
            - ((1 / 2 : 𝕜) * F.χbar.toMatrix C D) * α.toMatrix A B
            + ((1 / 2 : 𝕜) * F.χ.toMatrix C B) * (τ.toMatrix D A + σ.toMatrix D A)
            + ((1 / 2 : 𝕜) * F.χbar.toMatrix C B) * α.toMatrix A D
            + ((1 / 2 : 𝕜) * F.χ.toMatrix A D) * (τ.toMatrix B C + σ.toMatrix B C)
            + ((1 / 2 : 𝕜) * F.χbar.toMatrix A D) * α.toMatrix B C
            - ((1 / 2 : 𝕜) * F.χ.toMatrix A B) * (τ.toMatrix D C + σ.toMatrix D C)
            - ((1 / 2 : 𝕜) * F.χbar.toMatrix A B) * α.toMatrix C D)

/-- ORACLE: xAct-verified raw $\nabla_4 \tau$ transport identity. -/
axiom tau4
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla4.onTensor2 τ.toMatrix = tau4RHS F α σ τ ν Riem

def tauTrace (F : FrameDerivData 𝕜) (τ : Tau 𝕜 F.n) : 𝕜 :=
  Matrix.trace τ.toMatrix

theorem rho4
    (F : FrameDerivData 𝕜)
    (ρ : 𝕜)
    (τ : Tau 𝕜 F.n)
    (hρ : ρ = -((1 / 2 : 𝕜) * tauTrace F τ))
    (htrace :
      F.nabla4.onScalar (tauTrace F τ) = Matrix.trace (F.nabla4.onTensor2 τ.toMatrix)) :
    F.nabla4.onScalar ρ = -((1 / 2 : 𝕜) * Matrix.trace (F.nabla4.onTensor2 τ.toMatrix)) := by
  calc
    F.nabla4.onScalar ρ
        = F.nabla4.onScalar (-((1 / 2 : 𝕜) * tauTrace F τ)) := by simp [hρ]
    _ = -((1 / 2 : 𝕜) * F.nabla4.onScalar (tauTrace F τ)) := by
          rw [show -((1 / 2 : 𝕜) * tauTrace F τ) = (-(1 / 2 : 𝕜)) • tauTrace F τ by simp]
          rw [LinearMap.map_smul]
          simp
    _ = -((1 / 2 : 𝕜) * Matrix.trace (F.nabla4.onTensor2 τ.toMatrix)) := by rw [htrace]

end TauTransport
end NullFrame
