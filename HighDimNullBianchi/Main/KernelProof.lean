import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import CovDeriv.FrameDerivatives

namespace NullFrame
namespace Main

variable {𝕜 : Type _} [Field 𝕜]

def tauTrace (F : FrameDerivData 𝕜) (τ : Tau 𝕜 F.n) : 𝕜 :=
  Matrix.trace τ.toMatrix

theorem kernel_b9
    (F : FrameDerivData 𝕜)
    (ρ : 𝕜)
    (τ : Tau 𝕜 F.n)
    (hρ : ρ = -((1 / 2 : 𝕜) * tauTrace F τ))
    (htrace :
      F.nabla3.onScalar (tauTrace F τ) = Matrix.trace (F.nabla3.onTensor2 τ.toMatrix)) :
    F.nabla3.onScalar ρ = -((1 / 2 : 𝕜) * Matrix.trace (F.nabla3.onTensor2 τ.toMatrix)) := by
  calc
    F.nabla3.onScalar ρ
        = F.nabla3.onScalar (-((1 / 2 : 𝕜) * tauTrace F τ)) := by simp [hρ]
    _ = -((1 / 2 : 𝕜) * F.nabla3.onScalar (tauTrace F τ)) := by
          rw [show -((1 / 2 : 𝕜) * tauTrace F τ) = (-(1 / 2 : 𝕜)) • tauTrace F τ by simp]
          rw [LinearMap.map_smul]
          simp
    _ = -((1 / 2 : 𝕜) * Matrix.trace (F.nabla3.onTensor2 τ.toMatrix)) := by rw [htrace]

end Main
end NullFrame
