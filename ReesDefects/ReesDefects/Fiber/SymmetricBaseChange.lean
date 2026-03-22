import Mathlib.LinearAlgebra.SymmetricAlgebra.Basic
import Mathlib.LinearAlgebra.TensorProduct.RightExactness

/-!
# ReesDefects.Fiber.SymmetricBaseChange

Symmetric-algebra base change for the fiber layer.
-/

noncomputable section

namespace ReesDefects
namespace Fiber

universe u v w

open scoped TensorProduct

namespace SymmetricBaseChange

variable {A : Type u} [CommRing A]
variable {k : Type v} [Field k] [Algebra A k]
variable {M : Type w} [AddCommGroup M] [Module A M]
variable [Module k (M ⊗[A] k)]
variable [Algebra k ((SymmetricAlgebra A M) ⊗[A] k)]

/-- Abstract base-change equivalence for symmetric algebras. -/
class HasEquiv where
  equiv : (SymmetricAlgebra A M) ⊗[A] k ≃ₐ[k] SymmetricAlgebra k (M ⊗[A] k)

/-- The symmetric algebra commutes with base change to the residue field. -/
noncomputable def equiv [h : HasEquiv (A := A) (k := k) (M := M)] :
    (SymmetricAlgebra A M) ⊗[A] k ≃ₐ[k] SymmetricAlgebra k (M ⊗[A] k) :=
  h.equiv

end SymmetricBaseChange

end Fiber
end ReesDefects
