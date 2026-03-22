import ReesDefects.FirstCoefficient.Axioms
import ReesDefects.Intermediate.ReducedComparisonData

/-!
# ReesDefects.FirstCoefficient.GlobalPackage

Adapters from the consolidated first-coefficient axioms to the Phase 5 abstract packages.
-/

noncomputable section

namespace ReesDefects
namespace FirstCoefficient

universe u v

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- The full imported algebra package used later in the project. -/
structure GlobalPackage (A : Type*) [CommRing A] (I : Ideal A)
    extends ReducedComparisonAxioms A I

namespace GlobalPackage

variable (P : GlobalPackage A I)

/-- Forget a global package to the roadmap interface. -/
abbrev asFirstCoefficientLike : FirstCoefficientLike A I :=
  P.toFirstCoefficientLike

/-- Forget a global package to the abstract degreewise defect package. -/
def toDegreewiseDefectPackage : Intermediate.DegreewiseDefectPackage A I where
  U := P.U
  N := P.closurePow
  zero_U := P.zero_U
  zero_N := P.zero_closurePow
  mul_U := P.mul_U
  mul_N := P.mul_closurePow
  pow_le_U := P.pow_le_U
  U_le_N := P.U_le_closurePow
  D_to_B := P.D_to_B
  B_to_C := P.B_to_C
  exact_DBC := P.exact_DBC
  D_to_B_injective := P.D_to_B_injective
  B_to_C_surjective := P.B_to_C_surjective
  finiteLength_D := P.finiteLength_D
  finiteLength_B := P.finiteLength_B
  finiteLength_C := P.finiteLength_C
  tauRangeEquiv := P.tauRangeEquiv

/-- Forget a global package to the abstract reduced-comparison package. -/
def toReducedComparisonData : Intermediate.ReducedComparisonData A I where
  U := P.U
  N := P.closurePow
  zero_U := P.zero_U
  zero_N := P.zero_closurePow
  mul_U := P.mul_U
  mul_N := P.mul_closurePow
  pow_le_U := P.pow_le_U
  U_le_N := P.U_le_closurePow
  D_to_B := P.D_to_B
  B_to_C := P.B_to_C
  exact_DBC := P.exact_DBC
  D_to_B_injective := P.D_to_B_injective
  B_to_C_surjective := P.B_to_C_surjective
  finiteLength_D := P.finiteLength_D
  finiteLength_B := P.finiteLength_B
  finiteLength_C := P.finiteLength_C
  tauRangeEquiv := P.tauRangeEquiv
  source := P.source
  source_addCommGroup := P.source_addCommGroup
  source_module := P.source_module
  comparisonMap := P.comparisonMap
  kernel_finiteLength := P.kernel_finiteLength
  cokernel_finiteLength := P.cokernel_finiteLength
  equationDefectLength := P.equationDefectLength
  indexFormula := P.indexFormula

/-- The packaged `R_1` criterion is inherited from the roadmap interface. -/
theorem r1_iff_closurePow_eq_U : ReesR1 A I ↔ ∀ n, P.closurePow n = P.U n :=
  P.r1_iff

end GlobalPackage

end FirstCoefficient
end ReesDefects
