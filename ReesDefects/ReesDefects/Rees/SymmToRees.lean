import ReesDefects.Symmetric.DegreeModel

/-!
# ReesDefects.Rees.SymmToRees

Degreewise symmetric-to-Rees map, derived from the abstract symmetric degree model.
-/

noncomputable section

namespace ReesDefects
namespace Rees

universe u v

variable {R : Type u} [CommRing R]

open ReesDefects.Symmetric

variable {I : Ideal R} [S : DegreeModel (R := R) I]

/-- The degreewise map from the symmetric model to the Rees degree pieces. -/
abbrev degreeMap (n : ℕ) : S.piece n →ₗ[R] ReesDefects.Rees.DegreePiece I n :=
  DegreeModel.toDegreePiece (R := R) (I := I) n

/-- The degreewise map sends zero to zero. -/
theorem degreeMap_zero (n : ℕ) :
    degreeMap (R := R) (S := S) (I := I) n 0 = 0 := by
  simp [degreeMap]

/-- The degreewise map preserves addition. -/
theorem degreeMap_add (n : ℕ) (x y : S.piece n) :
    degreeMap (R := R) (S := S) (I := I) n (x + y) =
      degreeMap (R := R) (S := S) (I := I) n x +
        degreeMap (R := R) (S := S) (I := I) n y := by
  simp [degreeMap]

/-- Degree-one symmetric generators map to the packaged degree-one Rees generators. -/
theorem generator_compatibility (x : I) :
    degreeMap (R := R) (S := S) (I := I) 1 (S.degreeOne x) =
      ⟨x, by simp [x.2]⟩ :=
  DegreeModel.degreeOne_spec (R := R) (I := I) x

end Rees
end ReesDefects
