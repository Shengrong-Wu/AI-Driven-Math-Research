import ReesDefects.FirstCoefficient.Axioms

/-!
# ReesDefects.Asymptotics.GradedSupport

Support-dimension wrappers for the degreewise defect modules used in the asymptotic layer.
-/

noncomputable section

namespace ReesDefects
namespace Asymptotics
namespace GradedSupport

universe u

open ReesDefects.Algebra
open ReesDefects.FirstCoefficient

variable {A : Type u} [CommRing A]
variable {I : Ideal A}
variable (F : FirstCoefficientLike A I)

/-- The support dimension of the degree-`n` defect quotient `D_n`. -/
abbrev dSupport (n : ℕ) :=
  Module.supportDim A (F.D n)

/-- The support dimension of the degree-`n` correction quotient `C_n`. -/
abbrev cSupport (n : ℕ) :=
  Module.supportDim A (F.C n)

/-- The degree-`n` defect quotient `D_n` has support dimension at most one. -/
theorem supportDim_d_le_one (n : ℕ) :
    supportDimLEOne A (F.D n) :=
  F.supportDim_D_le n

/-- The degree-`n` correction quotient `C_n` has either zero-dimensional or top-dimensional
support. -/
theorem supportDim_c_zero_or_top (n : ℕ) :
    cSupport F n = 0 ∨ cSupport F n = ⊤ :=
  F.supportDim_C_zero_or_top n

end GradedSupport
end Asymptotics
end ReesDefects
