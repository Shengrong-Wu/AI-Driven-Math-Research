import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.LinearAlgebra.Matrix.Trace
import TauTransport.TauTransport

namespace NullFrame
namespace Outgoing

open scoped BigOperators
open TauTransport

variable {𝕜 : Type _} [Field 𝕜]

def symmTensor {n : Nat} (T : Tensor2 𝕜 n) : Tensor2 𝕜 n :=
  fun A B => T A B + T B A

def antisymmTensor {n : Nat} (T : Tensor2 𝕜 n) : Tensor2 𝕜 n :=
  fun A B => T A B - T B A

def traceChi (F : FrameDerivData 𝕜) : 𝕜 := Matrix.trace F.χ.toMatrix

def traceChiBar (F : FrameDerivData 𝕜) : 𝕜 := Matrix.trace F.χbar.toMatrix

def chiHatMat (F : FrameDerivData 𝕜) : Tensor2 𝕜 F.n :=
  (RicciData.χHat F.toRicciData).toMatrix

def chiBarHatMat (F : FrameDerivData 𝕜) : Tensor2 𝕜 F.n :=
  (RicciData.χbarHat F.toRicciData).toMatrix

def coeffOnePlusTwoOverN (F : FrameDerivData 𝕜) : 𝕜 :=
  (1 : 𝕜) + (2 : 𝕜) * TraceDecomp.invDim F.n

def b1Core
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    -(∑ C, (F.nablaA C).onTensor3 ν.toTensor C A B)
    - ∑ C, F.ζ C * ν.toTensor C A B
    - ((1 / 2 : 𝕜) * traceChi F) * (τ.toMatrix A B + σ.toMatrix A B)
    - ((1 / 2 : 𝕜) * traceChiBar F) * α.toMatrix A B
    + ∑ C, ((1 / 2 : 𝕜) * F.χ.toMatrix A C) * (τ.toMatrix C B + σ.toMatrix C B)
    + ∑ C, ((1 / 2 : 𝕜) * F.χbar.toMatrix A C) * α.toMatrix C B
    - ∑ C, ∑ D, F.χ.toMatrix C D * Riem C A D B
    + ∑ C, F.χ.toMatrix B C * σ.toMatrix C A

def b1RHS
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor2 𝕜 F.n :=
  fun A B =>
    4 * F.ωbar * α.toMatrix A B
    - 2 * (∑ C, F.ηbar C * (ν.toTensor C A B + ν.toTensor C B A))
    - (F.ηbar A * β B + F.ηbar B * β A)
    - F.nabla4.onTensor2 τ.toMatrix A B
    + 2 * symmTensor (b1Core F α σ τ ν Riem) A B

/-- ORACLE: xAct-verified equation (B1), the $\nabla_3 \alpha$ law. -/
axiom b1_alpha3
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (β : Beta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla3.onTensor2 α.toMatrix = b1RHS F α β σ τ ν Riem

end Outgoing
end NullFrame
