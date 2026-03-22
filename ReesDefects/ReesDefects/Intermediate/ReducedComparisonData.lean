import ReesDefects.Intermediate.DegreewiseDefects

/-!
# ReesDefects.Intermediate.ReducedComparisonData

Abstract packaging for the reduced comparison maps and their degreewise index data.
-/

noncomputable section

namespace ReesDefects
namespace Intermediate

universe u v

open ReesDefects.Foundations

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Abstract data for the reduced comparison map in degree `n`. -/
structure ReducedComparisonData (A : Type*) [CommRing A] (I : Ideal A)
    extends DegreewiseDefectPackage A I where
  source : ℕ → Type v
  source_addCommGroup : ∀ n, AddCommGroup (source n)
  source_module : ∀ n, Module A (source n)
  comparisonMap :
    ∀ n r, source n →ₗ[A]
      modBy A (ReesDefects.Algebra.Ideal.QuotientModule (I ^ n) (N n)) r
  kernel_finiteLength :
    ∀ n r, IsFiniteLength A (LinearMap.ker (comparisonMap n r))
  cokernel_finiteLength :
    ∀ n r, IsFiniteLength A (linearCokernel (comparisonMap n r))
  equationDefectLength : ℕ → ℕ
  indexFormula :
    ∀ n r,
      finLengthNat A (LinearMap.ker (comparisonMap n r)) =
        finLengthNat A (linearCokernel (comparisonMap n r)) + equationDefectLength n

attribute [instance] ReducedComparisonData.source_addCommGroup
attribute [instance] ReducedComparisonData.source_module

namespace ReducedComparisonData

variable (P : ReducedComparisonData A I)

/-- The source-side kernel length of the reduced comparison map in degree `n`. -/
abbrev kernelLength (n : ℕ) (r : A) : ℕ :=
  finLengthNat A (LinearMap.ker (P.comparisonMap n r))

/-- The source-side cokernel length of the reduced comparison map in degree `n`. -/
abbrev cokernelLength (n : ℕ) (r : A) : ℕ :=
  finLengthNat A (linearCokernel (P.comparisonMap n r))

/-- The packaged exact index formula for the reduced comparison map. -/
theorem kernelLength_eq_cokernelLength_add_equationDefectLength (n : ℕ) (r : A) :
    P.kernelLength n r = P.cokernelLength n r + P.equationDefectLength n :=
  P.indexFormula n r

/-- When the cokernel is identified with `ν_r(n)`,
the source-side index formula rewrites accordingly. -/
theorem kernelLength_eq_nuDefect_add_equationDefectLength
    (n : ℕ) (r : A)
    (hnu :
      P.cokernelLength n r =
        DegreewiseDefectPackage.nuDefect (P := P.toDegreewiseDefectPackage) n r) :
    P.kernelLength n r =
      DegreewiseDefectPackage.nuDefect
          (P := P.toDegreewiseDefectPackage) n r +
        P.equationDefectLength n := by
  rw [P.kernelLength_eq_cokernelLength_add_equationDefectLength, hnu]

end ReducedComparisonData

end Intermediate
end ReesDefects
