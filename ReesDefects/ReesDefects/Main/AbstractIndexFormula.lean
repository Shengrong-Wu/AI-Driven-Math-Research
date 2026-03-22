import ReesDefects.Intermediate.ReducedComparisonData

/-!
# ReesDefects.Main.AbstractIndexFormula

Abstract kernel/cokernel index formulas for the reduced comparison map.
-/

noncomputable section

namespace ReesDefects
namespace Main
namespace AbstractIndexFormula

universe u v

variable {A : Type u} [CommRing A]
variable {I : Ideal A}
variable (P : Intermediate.ReducedComparisonData A I)

/-- Abstract form of the kernel/cokernel index identity
`λ(ker φ_n^r) = λ(coker φ_n^r) + λ(E_n)`. -/
theorem kernelLength_eq_cokernelLength_add_equationDefectLength (n : ℕ) (r : A) :
    P.kernelLength n r =
      P.cokernelLength n r + P.equationDefectLength n := by
  exact P.kernelLength_eq_cokernelLength_add_equationDefectLength n r
  -- [abstract_index_formula]
  -- IN
  -- Expose the packaged index formula from `ReducedComparisonData`.

/-- Abstract form of the index formula after identifying the cokernel with `ν_r(n)`. -/
theorem kernelLength_eq_nuDefect_add_equationDefectLength
    (n : ℕ) (r : A)
    (hnu :
      P.cokernelLength n r =
        P.toDegreewiseDefectPackage.nuDefect n r) :
    P.kernelLength n r =
      P.toDegreewiseDefectPackage.nuDefect n r + P.equationDefectLength n := by
  exact P.kernelLength_eq_nuDefect_add_equationDefectLength n r hnu
  -- [abstract_index_formula_nu]
  -- IN
  -- Rewrite the index formula using the supplied cokernel-`ν_r` identification.

end AbstractIndexFormula
end Main
end ReesDefects
