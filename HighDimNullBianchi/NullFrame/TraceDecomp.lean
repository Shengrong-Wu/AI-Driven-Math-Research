import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic
import NullFrame.Basic

open Matrix

namespace NullFrame
namespace TraceDecomp

variable {𝕜 : Type _} [Field 𝕜] {n : Nat}

def traceOf (k : Tensor2 𝕜 n) : 𝕜 := Matrix.trace k

def invDim (n : Nat) : 𝕜 := (n : 𝕜)⁻¹

def tracefree (γ k : Tensor2 𝕜 n) : Tensor2 𝕜 n :=
  k - (invDim n * traceOf k) • γ

theorem isSymm_tracefree {γ k : Tensor2 𝕜 n} (hγ : γ.IsSymm) (hk : k.IsSymm) :
    (tracefree γ k).IsSymm := by
  refine Matrix.IsSymm.ext ?_
  intro i j
  simp [tracefree, hγ.apply i j, hk.apply i j]

theorem decomp (γ k : Tensor2 𝕜 n) :
    k = tracefree γ k + (invDim n * traceOf k) • γ := by
  ext i j
  simp [tracefree, sub_eq_add_neg]

end TraceDecomp
end NullFrame
