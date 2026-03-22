import ReesDefects.Algebra.QuotientModulesOfIdeals

/-!
# ReesDefects.Intermediate.SandwichedPowerFamily

Abstract ideal families sandwiched between the powers of a fixed ideal and a larger
compatible family.
-/

noncomputable section

namespace ReesDefects
namespace Intermediate

universe u

variable {A : Type u} [CommRing A]

/-- Abstract lower and upper ideal families interpolating between the powers of `I`. -/
structure SandwichedPowerFamily (A : Type*) [CommRing A] (I : Ideal A) where
  U : ℕ → Ideal A
  N : ℕ → Ideal A
  zero_U : U 0 = ⊤
  zero_N : N 0 = ⊤
  mul_U : ∀ m n, U m * U n ≤ U (m + n)
  mul_N : ∀ m n, N m * N n ≤ N (m + n)
  pow_le_U : ∀ n, I ^ n ≤ U n
  U_le_N : ∀ n, U n ≤ N n

namespace SandwichedPowerFamily

variable {I : Ideal A} (F : SandwichedPowerFamily A I)

/-- The degree-`n` lower defect quotient `U_n / I^n`. -/
abbrev D (n : ℕ) : Type u :=
  ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (F.U n)

/-- The degree-`n` upper defect quotient `N_n / U_n`. -/
abbrev C (n : ℕ) : Type u :=
  ReesDefects.Algebra.Ideal.QuotientModule (F.U n) (F.N n)

/-- The degree-`n` total defect quotient `N_n / I^n`. -/
abbrev B (n : ℕ) : Type u :=
  ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (F.N n)

/-- The lower family also sits inside the upper family. -/
theorem pow_le_N (n : ℕ) : I ^ n ≤ F.N n :=
  le_trans (F.pow_le_U n) (F.U_le_N n)

/-- The denominator `I^n + rU_n` appearing in the intersection defect formula. -/
abbrev tauDenominator (n : ℕ) (r : A) : Ideal A :=
  I ^ n ⊔ Ideal.span ({r} : Set A) * F.U n

/-- The ambient numerator `I^n + rN_n` appearing in the intersection defect formula. -/
abbrev tauAmbient (n : ℕ) (r : A) : Ideal A :=
  I ^ n ⊔ Ideal.span ({r} : Set A) * F.N n

/-- The numerator `U_n ∩ (I^n + rN_n)` in the intersection defect formula. -/
abbrev tauNumerator (n : ℕ) (r : A) : Ideal A :=
  F.U n ⊓ SandwichedPowerFamily.tauAmbient (F := F) n r

/-- The quotient module realizing the explicit intersection defect. -/
abbrev tauIntersectionQuotient (n : ℕ) (r : A) : Type u :=
  ReesDefects.Algebra.Ideal.QuotientModule
    (SandwichedPowerFamily.tauDenominator (F := F) n r)
    (SandwichedPowerFamily.tauNumerator (F := F) n r)

end SandwichedPowerFamily

end Intermediate
end ReesDefects
