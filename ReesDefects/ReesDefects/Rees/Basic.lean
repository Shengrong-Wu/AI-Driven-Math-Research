import Mathlib.RingTheory.ReesAlgebra

/-!
# ReesDefects.Rees.Basic

Thin wrappers around Mathlib's `reesAlgebra`.
-/

noncomputable section

namespace ReesDefects
namespace Rees

universe u

open Polynomial

variable {R : Type u} [CommRing R]

/-- Paper-facing abbreviation for the Rees algebra of an ideal. -/
abbrev ReesElem (I : Ideal R) := reesAlgebra I

/-- Polynomial membership in the Rees algebra is equivalent to
coefficient membership in ideal powers. -/
theorem mem_iff_coeff_mem_pow (I : Ideal R) (f : R[X]) :
    f ∈ reesAlgebra I ↔ ∀ n : ℕ, f.coeff n ∈ I ^ n :=
  mem_reesAlgebra_iff (I := I) f

/-- Support-restricted membership criterion for the Rees algebra. -/
theorem mem_iff_coeff_mem_pow_on_support (I : Ideal R) (f : R[X]) :
    f ∈ reesAlgebra I ↔ ∀ n ∈ f.support, f.coeff n ∈ I ^ n :=
  mem_reesAlgebra_iff_support (I := I) f

/-- A monomial belongs to the Rees algebra exactly when its coefficient lies
in the matching ideal power. -/
theorem monomial_mem_iff (I : Ideal R) {n : ℕ} {r : R} :
    Polynomial.monomial n r ∈ reesAlgebra I ↔ r ∈ I ^ n :=
  reesAlgebra.monomial_mem

/-- Every coefficient of a Rees algebra element lies in the corresponding ideal power. -/
theorem coeff_mem_pow {I : Ideal R} (f : ReesElem I) (n : ℕ) :
    (f : R[X]).coeff n ∈ I ^ n :=
  (mem_iff_coeff_mem_pow I (f : R[X])).mp f.2 n

/-- Two Rees algebra elements are equal when all of their polynomial coefficients agree. -/
@[ext]
theorem ext {I : Ideal R} {f g : ReesElem I}
    (h : ∀ n : ℕ, (f : R[X]).coeff n = (g : R[X]).coeff n) : f = g := by
  apply Subtype.ext
  exact Polynomial.ext h

/-- Mathlib's ambient adjoin theorem under a local name. -/
theorem adjoin_degree_one_eq (I : Ideal R) :
    Algebra.adjoin R (Submodule.map (Polynomial.monomial 1 : R →ₗ[R] R[X]) I : Set R[X]) =
      reesAlgebra I :=
  adjoin_monomial_eq_reesAlgebra (I := I)

/-- Finite generation of the Rees algebra of a finitely generated ideal. -/
theorem fg {I : Ideal R} (hI : I.FG) : (reesAlgebra I).FG :=
  reesAlgebra.fg hI

end Rees
end ReesDefects
