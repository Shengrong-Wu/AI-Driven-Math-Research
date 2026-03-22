import ReesDefects.Fiber.ResidueFieldBaseChange
import ReesDefects.Rees.Basic

/-!
# ReesDefects.Fiber.FiberCone

The special fiber cone `F(I) = R(I) ⊗[A] k` in abstract residue-field base change.
-/

noncomputable section

namespace ReesDefects
namespace Fiber

universe u v

open scoped TensorProduct

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- The special fiber cone of `I` after base change to the chosen residue field `k`. -/
abbrev FiberCone (R : ResidueFieldBaseChange A) (I : Ideal A) :=
  R.k ⊗[A] Rees.ReesElem I

namespace FiberCone

variable (R : ResidueFieldBaseChange A)

/-- The canonical map from the Rees algebra to the fiber cone. -/
def ofRees : Rees.ReesElem I →ₗ[A] FiberCone R I :=
  ResidueFieldBaseChange.tensorInclusion (A := A) R (Rees.ReesElem I)

@[simp]
theorem ofRees_apply (x : Rees.ReesElem I) :
    ofRees (A := A) (I := I) R x = (1 : R.k) ⊗ₜ[A] x :=
  rfl

end FiberCone

end Fiber
end ReesDefects
