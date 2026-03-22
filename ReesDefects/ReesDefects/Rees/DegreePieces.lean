import ReesDefects.Rees.Basic

/-!
# ReesDefects.Rees.DegreePieces

Degreewise helpers recovered from the polynomial-subalgebra model of the Rees algebra.
-/

noncomputable section

namespace ReesDefects
namespace Rees

universe u

open Polynomial

variable {R : Type u} [CommRing R]

/-- The degree-`n` piece is represented by the carrier type of the ideal power `I ^ n`. -/
abbrev DegreePiece (I : Ideal R) (n : ℕ) : Type u := ↥(I ^ n)

/-- The `n`-th coefficient map from the Rees algebra to the degree-`n` piece. -/
def coeffToDegreePiece (I : Ideal R) (n : ℕ) : ReesElem I →ₗ[R] DegreePiece I n where
  toFun f := ⟨(f : R[X]).coeff n, coeff_mem_pow f n⟩
  map_add' _ _ := by
    ext
    simp
  map_smul' _ _ := by
    ext
    simp

/-- Insert an element of `I ^ n` into the Rees algebra as the monomial `x * X^n`. -/
def degreePieceToRees (I : Ideal R) (n : ℕ) : DegreePiece I n → ReesElem I :=
  fun x => ⟨Polynomial.monomial n x.1, (monomial_mem_iff I).2 x.2⟩

@[simp]
theorem degreePieceToRees_coe (I : Ideal R) (n : ℕ) (x : DegreePiece I n) :
    ((degreePieceToRees I n x : ReesElem I) : R[X]) = Polynomial.monomial n x.1 :=
  rfl

@[simp]
theorem coeffToDegreePiece_apply (I : Ideal R) (n : ℕ) (f : ReesElem I) :
    (coeffToDegreePiece I n f : R) = (f : R[X]).coeff n :=
  rfl

@[simp]
theorem coeff_degreePieceToRees_same (I : Ideal R) (n : ℕ) (x : DegreePiece I n) :
    ((degreePieceToRees I n x : ReesElem I) : R[X]).coeff n = x := by
  simp [degreePieceToRees]

@[simp]
theorem coeff_degreePieceToRees_ne (I : Ideal R) {n m : ℕ} (h : m ≠ n)
    (x : DegreePiece I n) :
    ((degreePieceToRees I n x : ReesElem I) : R[X]).coeff m = 0 := by
  simp [degreePieceToRees, coeff_monomial, h.symm]

end Rees
end ReesDefects
