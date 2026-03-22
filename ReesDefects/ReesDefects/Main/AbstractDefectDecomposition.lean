import ReesDefects.Intermediate.DegreewiseDefects

/-!
# ReesDefects.Main.AbstractDefectDecomposition

Abstract wrappers for the degreewise defect decomposition used in Theorem A.
-/

noncomputable section

namespace ReesDefects
namespace Main
namespace AbstractDefectDecomposition

universe u

variable {A : Type u} [CommRing A]
variable {I : Ideal A}
variable (P : Intermediate.DegreewiseDefectPackage A I)

/-- Abstract form of the degreewise decomposition
`ν_r(n) = d_r(n) + κ_r(n) - τ_r(n)`. -/
theorem nu_eq_d_add_kappa_sub_tau (n : ℕ) (r : A) :
    P.nuDefect n r =
      P.dDefect n r + P.kappaDefect n r - P.tauDefect n r := by
  exact P.nu_eq_d_add_kappa_sub_tau n r
  -- [abstract_defect_decomposition]
  -- IN
  -- Repackage the scalar-snake decomposition from `DegreewiseDefectPackage`.

/-- The interaction term agrees with the explicit intersection quotient from the paper. -/
theorem tau_eq_tauIntersection (n : ℕ) (r : A) :
    P.tauDefect n r = P.tauIntersectionDefect n r := by
  exact P.tauDefect_eq_tauIntersectionDefect n r
  -- [abstract_tau_formula]
  -- IN
  -- Repackage the explicit quotient formula for the interaction defect.

/-- The defect decomposition rewritten with the explicit interaction term. -/
theorem nu_eq_d_add_kappa_sub_tauIntersection (n : ℕ) (r : A) :
    P.nuDefect n r =
      P.dDefect n r + P.kappaDefect n r - P.tauIntersectionDefect n r := by
  exact P.nu_eq_d_add_kappa_sub_tauIntersection n r
  -- [abstract_defect_decomposition_intersection]
  -- IN
  -- Combine the decomposition with the explicit interaction-term identification.

end AbstractDefectDecomposition
end Main
end ReesDefects
