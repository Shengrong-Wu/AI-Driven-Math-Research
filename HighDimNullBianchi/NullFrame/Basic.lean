import Mathlib.Data.Matrix.Basic
import Mathlib.LinearAlgebra.BilinearForm.Basic
import Mathlib.LinearAlgebra.Matrix.Symmetric

open Matrix

namespace NullFrame

abbrev TangentialIndex (n : Nat) := Fin n
abbrev Tensor1 (𝕜 : Type _) (n : Nat) := Fin n → 𝕜
abbrev Tensor2 (𝕜 : Type _) (n : Nat) := Matrix (Fin n) (Fin n) 𝕜
abbrev Tensor3 (𝕜 : Type _) (n : Nat) := Fin n → Fin n → Fin n → 𝕜
abbrev Ambient (𝕜 : Type _) (n : Nat) := Fin (n + 2) → 𝕜

def Matrix.IsAntiSymm {n : Type _} {𝕜 : Type _} [Neg 𝕜] (M : Matrix n n 𝕜) : Prop :=
  ∀ i j, M j i = -M i j

structure SymmetricTwoTensor (𝕜 : Type _) (n : Nat) [Field 𝕜] where
  toMatrix : Tensor2 𝕜 n
  isSymm' : toMatrix.IsSymm

structure AntisymmetricTwoTensor (𝕜 : Type _) (n : Nat) [Field 𝕜] where
  toMatrix : Tensor2 𝕜 n
  isAntisymm' : Matrix.IsAntiSymm toMatrix

structure AntisymmetricFirstTwoTensor (𝕜 : Type _) (n : Nat) [Field 𝕜] where
  toTensor : Tensor3 𝕜 n
  antisymm' : ∀ a b c, toTensor b a c = -toTensor a b c

structure NullFrameData (𝕜 : Type _) [Field 𝕜] where
  n : Nat
  g : LinearMap.BilinForm 𝕜 (Ambient 𝕜 n)
  e3 : Ambient 𝕜 n
  e4 : Ambient 𝕜 n
  eA : Fin n → Ambient 𝕜 n
  g_symm : ∀ u v, g u v = g v u
  g_e3_e3 : g e3 e3 = 0
  g_e4_e4 : g e4 e4 = 0
  g_e3_e4 : g e3 e4 = -(2 : 𝕜)
  g_e3_eA : ∀ a, g e3 (eA a) = 0
  g_e4_eA : ∀ a, g e4 (eA a) = 0

namespace NullFrameData

variable {𝕜 : Type _} [Field 𝕜] (F : NullFrameData 𝕜)

def tangentialMetric : Tensor2 𝕜 F.n := fun a b => F.g (F.eA a) (F.eA b)

theorem tangentialMetric_symm : F.tangentialMetric.IsSymm := by
  refine Matrix.IsSymm.ext ?_
  intro a b
  simpa [NullFrameData.tangentialMetric] using (F.g_symm (F.eA a) (F.eA b)).symm

theorem g_e4_e3 : F.g F.e4 F.e3 = -(2 : 𝕜) := by
  calc
    F.g F.e4 F.e3 = F.g F.e3 F.e4 := F.g_symm _ _
    _ = -(2 : 𝕜) := F.g_e3_e4

end NullFrameData

abbrev Alpha (𝕜 : Type _) (n : Nat) [Field 𝕜] := SymmetricTwoTensor 𝕜 n
abbrev UAlpha (𝕜 : Type _) (n : Nat) [Field 𝕜] := SymmetricTwoTensor 𝕜 n
abbrev Beta (𝕜 : Type _) (n : Nat) [Field 𝕜] := Tensor1 𝕜 n
abbrev UBeta (𝕜 : Type _) (n : Nat) [Field 𝕜] := Tensor1 𝕜 n
abbrev Rho (𝕜 : Type _) := 𝕜
abbrev Sigma (𝕜 : Type _) (n : Nat) [Field 𝕜] := AntisymmetricTwoTensor 𝕜 n
abbrev Tau (𝕜 : Type _) (n : Nat) [Field 𝕜] := SymmetricTwoTensor 𝕜 n
abbrev Nu (𝕜 : Type _) (n : Nat) [Field 𝕜] := AntisymmetricFirstTwoTensor 𝕜 n
abbrev UNu (𝕜 : Type _) (n : Nat) [Field 𝕜] := AntisymmetricFirstTwoTensor 𝕜 n

namespace SymmetricTwoTensor

variable {𝕜 : Type _} [Field 𝕜] {n : Nat} (T : SymmetricTwoTensor 𝕜 n)

theorem apply_swap (a b : Fin n) : T.toMatrix a b = T.toMatrix b a := by
  simpa [eq_comm] using T.isSymm'.apply a b

end SymmetricTwoTensor

namespace AntisymmetricTwoTensor

variable {𝕜 : Type _} [Field 𝕜] {n : Nat} (T : AntisymmetricTwoTensor 𝕜 n)

theorem apply_swap (a b : Fin n) : T.toMatrix b a = -T.toMatrix a b := by
  exact T.isAntisymm' a b

end AntisymmetricTwoTensor

namespace AntisymmetricFirstTwoTensor

variable {𝕜 : Type _} [Field 𝕜] {n : Nat} (T : AntisymmetricFirstTwoTensor 𝕜 n)

theorem apply_swap (a b c : Fin n) : T.toTensor b a c = -T.toTensor a b c := by
  exact T.antisymm' a b c

end AntisymmetricFirstTwoTensor

end NullFrame
