import ReesDefects.Symmetric.DegreeModel

/-!
# ReesDefects.Rees.EquationDefectKernel

Degreewise kernel package for the equation defect, derived from the symmetric degree model.
-/

noncomputable section

namespace ReesDefects
namespace Rees

universe u v

variable {R : Type u} [CommRing R]

open ReesDefects.Symmetric

variable {I : Ideal R} [S : DegreeModel (R := R) I]

/-- The degree-`n` equation defect piece is the kernel piece from the symmetric model. -/
abbrev equationDefectPiece (n : ℕ) : Submodule R (S.piece n) :=
  defectPiece (R := R) (S := S) n

/-- Kernel membership for the equation defect piece. -/
theorem mem_equationDefectPiece_iff (n : ℕ) (x : S.piece n) :
    x ∈ equationDefectPiece (R := R) (S := S) (I := I) n ↔
      DegreeModel.toDegreePiece (R := R) (I := I) n x = 0 := by
  simpa [equationDefectPiece] using
    mem_defect_iff (R := R) (S := S) (I := I) n x

/-- Zero lies in every equation defect piece. -/
theorem equationDefectPiece_zero (n : ℕ) :
    (0 : S.piece n) ∈ equationDefectPiece (R := R) (S := S) (I := I) n := by
  rw [mem_equationDefectPiece_iff]
  simp

/-- The degreewise defect inclusion followed by the Rees map is exact. -/
theorem exact_degreePiece (n : ℕ) :
    Function.Exact
      (equationDefectPiece (R := R) (S := S) (I := I) n).subtype
      (DegreeModel.toDegreePiece (R := R) (I := I) n) :=
  exact_defect_toDegreePiece (R := R) (S := S) (I := I) n

/-- The degreewise map from the symmetric piece onto `I^n` is surjective. -/
theorem surjective_degreePiece (n : ℕ) :
    Function.Surjective (DegreeModel.toDegreePiece (R := R) (I := I) n) :=
  surjective_toDegreePiece (R := R) (S := S) (I := I) n

end Rees
end ReesDefects
