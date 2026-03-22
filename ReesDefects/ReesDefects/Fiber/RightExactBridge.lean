import ReesDefects.Fiber.FiberEquationIdeal
import ReesDefects.Fiber.SymmetricBaseChange

/-!
# ReesDefects.Fiber.RightExactBridge

Right-exact bridge from the fibered equation defect to the fiber equation ideal.
-/

noncomputable section

namespace ReesDefects
namespace Fiber

universe u

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Downstream-facing package for the surjection `E/mE → J_fib`. -/
class HasRightExactBridge (F : FiberEquationData A I) where
  toFiberEqIdeal : F.eqDefectModFiber →ₗ[F.k] F.fiberEquationIdeal
  surjective : Function.Surjective toFiberEqIdeal

namespace RightExactBridge

variable (F : FiberEquationData A I)

/-- Construct the certified right-exact bridge from `E/mE` onto `J_fib`. -/
def mk
    (toFiberEqIdeal : F.eqDefectModFiber →ₗ[F.k] F.fiberEquationIdeal)
    (surjective : Function.Surjective toFiberEqIdeal) : HasRightExactBridge F where
  toFiberEqIdeal := toFiberEqIdeal
  surjective := surjective

end RightExactBridge

end Fiber
end ReesDefects
