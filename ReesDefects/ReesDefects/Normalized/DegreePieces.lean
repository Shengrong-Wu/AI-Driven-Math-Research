import ReesDefects.Normalized.ClosurePower

/-!
# ReesDefects.Normalized.DegreePieces

Degreewise helpers for the normalized Rees algebra attached to a closure-power system.
-/

noncomputable section

namespace ReesDefects
namespace Normalized

universe u

open Polynomial

variable {A : Type u} [CommRing A] [IsDomain A]
variable {I : Ideal A}

namespace ClosurePowerSystem

variable (C : ClosurePowerSystem A I)

/-- Paper-facing abbreviation for the normalized Rees algebra element type. -/
abbrev NormalizedElem := ClosurePowerSystem.normalizedReesAlgebra C

/-- The degree-`n` piece is represented by the carrier type of the mapped closure power. -/
abbrev DegreePiece (n : ℕ) : Type u := ↥(ClosurePowerSystem.closureIdealMap C n)

/-- The `n`-th coefficient map from the normalized Rees algebra to its degree-`n` piece. -/
def coeffToDegreePiece (n : ℕ) : C.NormalizedElem →ₗ[A] C.DegreePiece n where
  toFun f := ⟨(f : (FractionRing A)[X]).coeff n,
    (ClosurePowerSystem.mem_normalizedReesAlgebra_iff C _).mp f.2 n⟩
  map_add' _ _ := by
    ext
    simp
  map_smul' _ _ := by
    ext
    simp [Algebra.smul_def]

/-- Insert a degree-`n` coefficient into the normalized Rees algebra as the monomial `x * X^n`. -/
def degreePieceToNormalized (n : ℕ) : C.DegreePiece n → C.NormalizedElem :=
  fun x => ⟨Polynomial.monomial n x.1, (ClosurePowerSystem.monomial_mem_iff C).2 x.2⟩

@[simp]
theorem degreePieceToNormalized_coe (n : ℕ) (x : C.DegreePiece n) :
    ((C.degreePieceToNormalized n x : C.NormalizedElem) : (FractionRing A)[X]) =
      Polynomial.monomial n x.1 :=
  rfl

@[simp]
theorem coeffToDegreePiece_apply (n : ℕ) (f : C.NormalizedElem) :
    (C.coeffToDegreePiece n f : FractionRing A) = (f : (FractionRing A)[X]).coeff n :=
  rfl

@[simp]
theorem coeff_degreePieceToNormalized_same (n : ℕ) (x : C.DegreePiece n) :
    ((C.degreePieceToNormalized n x : C.NormalizedElem) : (FractionRing A)[X]).coeff n = x := by
  simp [degreePieceToNormalized]

@[simp]
theorem coeff_degreePieceToNormalized_ne {n m : ℕ} (h : m ≠ n) (x : C.DegreePiece n) :
    ((C.degreePieceToNormalized n x : C.NormalizedElem) : (FractionRing A)[X]).coeff m = 0 := by
  simp [degreePieceToNormalized, coeff_monomial, h.symm]

end ClosurePowerSystem

end Normalized
end ReesDefects
