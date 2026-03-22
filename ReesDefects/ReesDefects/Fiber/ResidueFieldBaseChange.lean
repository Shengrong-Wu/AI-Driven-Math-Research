import Mathlib.Algebra.Algebra.Basic
import Mathlib.LinearAlgebra.TensorProduct.Basic

/-!
# ReesDefects.Fiber.ResidueFieldBaseChange

Abstract residue-field base-change infrastructure for the fiber layer.
-/

noncomputable section

namespace ReesDefects
namespace Fiber

universe u v

open scoped TensorProduct

variable {A : Type u} [CommRing A]

/-- Residue-field base-change data over a commutative ring `A`. -/
structure ResidueFieldBaseChange (A : Type*) [CommRing A] where
  k : Type v
  kField : Field k
  kAlgebra : Algebra A k

attribute [instance] ResidueFieldBaseChange.kField
attribute [instance] ResidueFieldBaseChange.kAlgebra

namespace ResidueFieldBaseChange

variable (R : ResidueFieldBaseChange A)
variable {M : Type*} [AddCommGroup M] [Module A M]

/-- Base change of an `A`-module along the chosen residue field. -/
abbrev baseChange (R : ResidueFieldBaseChange A) (M : Type*) [AddCommGroup M] [Module A M] :=
  R.k ⊗[A] M

/-- The canonical map `M → k ⊗[A] M`. -/
def tensorInclusion (R : ResidueFieldBaseChange A) (M : Type*) [AddCommGroup M] [Module A M] :
    M →ₗ[A] baseChange (A := A) R M :=
  TensorProduct.mk A R.k M 1

@[simp]
theorem tensorInclusion_apply (m : M) :
    tensorInclusion (A := A) R M m = (1 : R.k) ⊗ₜ[A] m :=
  rfl

end ResidueFieldBaseChange

end Fiber
end ReesDefects
