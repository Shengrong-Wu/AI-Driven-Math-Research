import ReesDefects.Algebra.SupportDimension
import ReesDefects.Intermediate.DegreewiseDefects
import ReesDefects.Normalized.Basic

/-!
# ReesDefects.FirstCoefficient.Axioms

Consolidated axiomatic interfaces for first coefficient ideals and the imported algebraic facts
used downstream.
-/

noncomputable section

namespace ReesDefects
namespace FirstCoefficient

universe u v

open ReesDefects.Algebra
open ReesDefects.Foundations

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Abstract predicate for the `R_1` condition of the Rees algebra. -/
class ReesR1 (A : Type*) [CommRing A] (I : Ideal A) : Prop where
  protected out : True := by trivial

/-- The roadmap interface for first coefficient ideals. It contains only the normalized-family
axioms, finite-length hypotheses for `D_n` and `C_n`, support-dimension control, and the `R_1`
criterion. -/
structure FirstCoefficientLike (A : Type*) [CommRing A] (I : Ideal A)
    extends Normalized.BasicSystem A I where
  finiteLength_D :
    ∀ n, IsFiniteLength A
      (ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (U n))
  finiteLength_C :
    ∀ n, IsFiniteLength A
      (ReesDefects.Algebra.Ideal.QuotientModule (U n) (closurePow n))
  supportDim_D_le :
    ∀ n, supportDimLEOne A
      (ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (U n))
  supportDim_C_zero_or_top :
    ∀ n,
      Module.supportDim A
          (ReesDefects.Algebra.Ideal.QuotientModule (U n) (closurePow n)) = 0 ∨
        Module.supportDim A
          (ReesDefects.Algebra.Ideal.QuotientModule (U n) (closurePow n)) = ⊤
  r1_iff : ReesR1 A I ↔ ∀ n, closurePow n = U n

namespace FirstCoefficientLike

variable (F : FirstCoefficientLike A I)

/-- The degree-`n` quotient `D_n = U_n / I^n`. -/
abbrev D (n : ℕ) : Type u :=
  Intermediate.SandwichedPowerFamily.D (F := F.toSandwichedPowerFamily) n

/-- The degree-`n` quotient `C_n = closurePow_n / U_n`. -/
abbrev C (n : ℕ) : Type u :=
  Intermediate.SandwichedPowerFamily.C (F := F.toSandwichedPowerFamily) n

/-- The degree-`n` quotient `B_n = closurePow_n / I^n`. -/
abbrev B (n : ℕ) : Type u :=
  Intermediate.SandwichedPowerFamily.B (F := F.toSandwichedPowerFamily) n

/-- Restatement of the `R_1` criterion in the concrete normalized setting. -/
theorem r1_iff_closurePow_eq_U : ReesR1 A I ↔ ∀ n : ℕ, F.closurePow n = F.U n :=
  F.r1_iff

end FirstCoefficientLike

/-- Consolidation of the carried Phase 5 defect-package axioms on top of
`FirstCoefficientLike`. -/
structure DegreewiseDefectAxioms (A : Type*) [CommRing A] (I : Ideal A)
    extends FirstCoefficientLike A I where
  D_to_B : ∀ n,
    ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (U n) →ₗ[A]
      ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (closurePow n)
  B_to_C : ∀ n,
    ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (closurePow n) →ₗ[A]
      ReesDefects.Algebra.Ideal.QuotientModule (U n) (closurePow n)
  exact_DBC : ∀ n, Function.Exact (D_to_B n) (B_to_C n)
  D_to_B_injective : ∀ n, Function.Injective (D_to_B n)
  B_to_C_surjective : ∀ n, Function.Surjective (B_to_C n)
  finiteLength_B :
    ∀ n, IsFiniteLength A
      (ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (closurePow n))
  tauRangeEquiv :
    ∀ n r,
      LinearMap.range
          (snakeDelta (R := A)
            (d := D_to_B n) (q := B_to_C n)
            (exact_DBC n) (B_to_C_surjective n) (D_to_B_injective n) r) ≃ₗ[A]
        ReesDefects.Algebra.Ideal.QuotientModule
          (I ^ n ⊔ Ideal.span ({r} : Set A) * U n)
          (U n ⊓ (I ^ n ⊔ Ideal.span ({r} : Set A) * closurePow n))

/-- Consolidation of the carried reduced-comparison axioms on top of the first-coefficient
interface and the degreewise defect package. -/
structure ReducedComparisonAxioms (A : Type*) [CommRing A] (I : Ideal A)
    extends DegreewiseDefectAxioms A I where
  source : ℕ → Type v
  source_addCommGroup : ∀ n, AddCommGroup (source n)
  source_module : ∀ n, Module A (source n)
  comparisonMap :
    ∀ n r, source n →ₗ[A]
      modBy A (ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (closurePow n)) r
  kernel_finiteLength :
    ∀ n r, IsFiniteLength A (LinearMap.ker (comparisonMap n r))
  cokernel_finiteLength :
    ∀ n r, IsFiniteLength A (Foundations.linearCokernel (comparisonMap n r))
  equationDefectLength : ℕ → ℕ
  indexFormula :
    ∀ n r,
      finLengthNat A (LinearMap.ker (comparisonMap n r)) =
        finLengthNat A (Foundations.linearCokernel (comparisonMap n r)) +
          equationDefectLength n

attribute [instance] ReducedComparisonAxioms.source_addCommGroup
attribute [instance] ReducedComparisonAxioms.source_module

end FirstCoefficient
end ReesDefects
