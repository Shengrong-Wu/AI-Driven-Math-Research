import ReesDefects.Foundations.ExactLength
import ReesDefects.Foundations.ScalarSnake
import ReesDefects.Intermediate.SandwichedPowerFamily

/-!
# ReesDefects.Intermediate.DegreewiseDefects

Abstract degreewise defect quantities attached to a sandwiched power family.
-/

noncomputable section

namespace ReesDefects
namespace Intermediate

universe u

open ReesDefects.Foundations

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Degreewise exactness and finite-length hypotheses for the quotients
`D_n = U_n / I^n`, `B_n = N_n / I^n`, and `C_n = N_n / U_n`. -/
structure DegreewiseDefectPackage (A : Type*) [CommRing A] (I : Ideal A)
    extends SandwichedPowerFamily A I where
  D_to_B : ∀ n,
    ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (U n) →ₗ[A]
      ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (N n)
  B_to_C : ∀ n,
    ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (N n) →ₗ[A]
      ReesDefects.Algebra.Ideal.QuotientModule (U n) (N n)
  exact_DBC : ∀ n, Function.Exact (D_to_B n) (B_to_C n)
  D_to_B_injective : ∀ n, Function.Injective (D_to_B n)
  B_to_C_surjective : ∀ n, Function.Surjective (B_to_C n)
  finiteLength_D : ∀ n, IsFiniteLength A (ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (U n))
  finiteLength_B : ∀ n, IsFiniteLength A (ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (N n))
  finiteLength_C : ∀ n, IsFiniteLength A (ReesDefects.Algebra.Ideal.QuotientModule (U n) (N n))
  tauRangeEquiv :
    ∀ n r,
      LinearMap.range
          (snakeDelta (R := A)
            (d := D_to_B n) (q := B_to_C n)
            (exact_DBC n) (B_to_C_surjective n) (D_to_B_injective n) r) ≃ₗ[A]
        SandwichedPowerFamily.tauIntersectionQuotient
          (F := toSandwichedPowerFamily) n r

namespace DegreewiseDefectPackage

variable (P : DegreewiseDefectPackage A I)

/-- The degree-`n` quotient `D_n = U_n / I^n`. -/
abbrev D (n : ℕ) : Type u :=
  SandwichedPowerFamily.D (F := P.toSandwichedPowerFamily) n

/-- The degree-`n` quotient `C_n = N_n / U_n`. -/
abbrev C (n : ℕ) : Type u :=
  SandwichedPowerFamily.C (F := P.toSandwichedPowerFamily) n

/-- The degree-`n` quotient `B_n = N_n / I^n`. -/
abbrev B (n : ℕ) : Type u :=
  SandwichedPowerFamily.B (F := P.toSandwichedPowerFamily) n

/-- The connecting map `C_n[r] → D_n / rD_n` from the scalar snake lemma. -/
abbrev boundaryMap (n : ℕ) (r : A) :
    torsionBy A (P.C n) r →ₗ[A] modBy A (P.D n) r :=
  snakeDelta (R := A)
    (d := P.D_to_B n) (q := P.B_to_C n)
    (P.exact_DBC n) (P.B_to_C_surjective n) (P.D_to_B_injective n) r

/-- The reduced first defect `d_r(n) = λ(D_n[r])`. -/
abbrev dDefect (n : ℕ) (r : A) : ℕ :=
  finLengthNat A (torsionBy A (P.D n) r)

/-- The reduced codimension-one defect `κ_r(n) = λ(C_n[r])`. -/
abbrev kappaDefect (n : ℕ) (r : A) : ℕ :=
  finLengthNat A (torsionBy A (P.C n) r)

/-- The reduced normalization defect `ν_r(n) = λ(B_n / rB_n)`. -/
abbrev nuDefect (n : ℕ) (r : A) : ℕ :=
  finLengthNat A (modBy A (P.B n) r)

/-- The interaction defect `τ_r(n) = λ(im ∂_n^r)`. -/
abbrev tauDefect (n : ℕ) (r : A) : ℕ :=
  finLengthNat A (LinearMap.range (P.boundaryMap n r))

/-- The explicit intersection-defect length from the paper's formula. -/
abbrev tauIntersectionDefect (n : ℕ) (r : A) : ℕ :=
  finLengthNat A
    (SandwichedPowerFamily.tauIntersectionQuotient (F := P.toSandwichedPowerFamily) n r)

/-- The scalar-snake decomposition
`ν_r(n) = d_r(n) + κ_r(n) - τ_r(n)`. -/
theorem nu_eq_d_add_kappa_sub_tau (n : ℕ) (r : A) :
    P.nuDefect n r = P.dDefect n r + P.kappaDefect n r - P.tauDefect n r := by
  simpa [nuDefect, dDefect, kappaDefect, tauDefect, boundaryMap] using
    finLengthNat_modBy_eq_finLengthNat_torsionBy_add_finLengthNat_torsionBy_sub_finLengthNat_range
      (R := A)
      (d := P.D_to_B n) (q := P.B_to_C n)
      (P.exact_DBC n) (P.D_to_B_injective n) (P.B_to_C_surjective n) r
      (P.finiteLength_D n) (P.finiteLength_B n) (P.finiteLength_C n)

/-- The image of the connecting map has the explicit intersection-quotient length. -/
theorem tauDefect_eq_tauIntersectionDefect (n : ℕ) (r : A) :
    P.tauDefect n r = P.tauIntersectionDefect n r := by
  exact finLengthNat_congr (R := A) (M := LinearMap.range (P.boundaryMap n r))
    (N := SandwichedPowerFamily.tauIntersectionQuotient (F := P.toSandwichedPowerFamily) n r)
    (P.tauRangeEquiv n r)

/-- The scalar-snake decomposition rewritten with the explicit intersection formula for `τ_r(n)`. -/
theorem nu_eq_d_add_kappa_sub_tauIntersection (n : ℕ) (r : A) :
    P.nuDefect n r =
      P.dDefect n r + P.kappaDefect n r - P.tauIntersectionDefect n r := by
  rw [P.nu_eq_d_add_kappa_sub_tau, P.tauDefect_eq_tauIntersectionDefect]

end DegreewiseDefectPackage

end Intermediate
end ReesDefects
