import Mathlib.Algebra.Exact
import ReesDefects.Rees.DegreePieces
import ReesDefects.Symmetric.Basic

/-!
# ReesDefects.Symmetric.DegreeModel

Abstract degreewise symmetric package with exact sequences onto ideal powers.
-/

noncomputable section

namespace ReesDefects
namespace Symmetric

universe u v

variable {R : Type u} [CommRing R]
open ReesDefects.Rees

variable (I : Ideal R)

/-- Abstract degreewise symmetric model with kernels and surjections onto the Rees degree pieces. -/
class DegreeModel extends DegreewiseData (R := R) I where
  toDegreePiece : ∀ n, piece n →ₗ[R] DegreePiece I n
  defect : ∀ n, Submodule R (piece n)
  defect_eq_ker : ∀ n, defect n = LinearMap.ker (toDegreePiece n)
  toDegreePiece_surjective : ∀ n, Function.Surjective (toDegreePiece n)
  degreeOne_spec : ∀ x : I, toDegreePiece 1 (degreeOne x) = ⟨x, by simp [x.2]⟩

variable {I}
variable [S : DegreeModel (R := R) I]

/-- The abstract degree-`n` defect piece. -/
abbrev defectPiece (n : ℕ) : Submodule R (S.piece n) :=
  DegreeModel.defect (R := R) (I := I) n

/-- Membership in the defect piece is equivalent to vanishing under the degreewise map. -/
theorem mem_defect_iff (n : ℕ) (x : S.piece n) :
    x ∈ defectPiece (R := R) (S := S) n ↔
      DegreeModel.toDegreePiece (R := R) (I := I) n x = 0 := by
  rw [defectPiece, DegreeModel.defect_eq_ker (R := R) (I := I) n]
  rfl

/-- The degreewise defect inclusion followed by the degree map is exact. -/
theorem exact_defect_toDegreePiece (n : ℕ) :
    Function.Exact
      (defectPiece (R := R) (S := S) n).subtype
      (DegreeModel.toDegreePiece (R := R) (I := I) n) := by
  rw [defectPiece, DegreeModel.defect_eq_ker (R := R) (I := I) n]
  exact LinearMap.exact_subtype_ker_map (DegreeModel.toDegreePiece (R := R) (I := I) n)

/-- The degreewise map is surjective by assumption in the model. -/
theorem surjective_toDegreePiece (n : ℕ) :
    Function.Surjective (DegreeModel.toDegreePiece (R := R) (I := I) n) :=
  DegreeModel.toDegreePiece_surjective (R := R) (I := I) n

/-- Degree-one generators map to the canonical degree-one Rees generators. -/
theorem degreeOne_spec (x : I) :
    DegreeModel.toDegreePiece (R := R) (I := I) 1 (S.degreeOne x) =
      ⟨x, by simp [x.2]⟩ :=
  DegreeModel.degreeOne_spec (R := R) (I := I) x

end Symmetric
end ReesDefects
