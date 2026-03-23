import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Incoming.B10_Sigma3

namespace NullFrame
namespace Incoming

open scoped BigOperators
open Outgoing

variable {𝕜 : Type _} [Field 𝕜]

def b11RHS
    (F : FrameDerivData 𝕜)
    (β : Beta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : Tensor3 𝕜 F.n :=
  fun A B C =>
    -(F.nablaA A).onTensor2 (τ.toMatrix + σ.toMatrix) C B
    + (F.nablaA B).onTensor2 (τ.toMatrix + σ.toMatrix) C A
    - F.η A * (τ.toMatrix C B + σ.toMatrix C B)
    + F.η B * (τ.toMatrix C A + σ.toMatrix C A)
    - (2 : 𝕜) * F.η C * σ.toMatrix A B
    + (2 : 𝕜) * F.ω * uν.toTensor A B C
    + (2 : 𝕜) * ∑ D, F.η D * Riem A B C D
    + ∑ D, F.χ.toMatrix A D * uν.toTensor B D C
    + ∑ D, F.χ.toMatrix B D * uν.toTensor D A C
    - F.χbar.toMatrix A C * β B
    + F.χbar.toMatrix B C * β A
    + ∑ D, F.χbar.toMatrix A D * ν.toTensor C D B
    - ∑ D, F.χbar.toMatrix B D * ν.toTensor C D A

/-- ORACLE: xAct-verified equation (B11), the $\nabla_4 \underline{\nu}$ law. -/
axiom b11_unu4
    (F : FrameDerivData 𝕜)
    (β : Beta 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (uν : UNu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) :
    F.nabla4.onTensor3 uν.toTensor = b11RHS F β σ τ ν uν Riem

end Incoming
end NullFrame
