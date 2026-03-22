import ReesDefects.Fiber.FiberCone
import ReesDefects.Symmetric.Basic

/-!
# ReesDefects.Fiber.FiberEquationIdeal

The fiber-cone equation ideal `J_fib`.
-/

noncomputable section

namespace ReesDefects
namespace Fiber

universe u v w

open scoped TensorProduct

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Data for presenting the fiber cone as a quotient of a symmetric algebra over the residue
field. -/
structure FiberEquationData (A : Type*) [CommRing A] (I : Ideal A)
    extends ResidueFieldBaseChange A where
  V : Type w
  vAddCommGroup : AddCommGroup V
  vModule : Module k V
  eqDefectModFiber : Type*
  eqDefectModFiberAddCommGroup : AddCommGroup eqDefectModFiber
  eqDefectModFiberModule : Module k eqDefectModFiber
  fiberConeCarrier : Type*
  fiberConeCommRing : CommRing fiberConeCarrier
  fiberConeAlgebra : Algebra k fiberConeCarrier
  fiberConeModule : Module A fiberConeCarrier
  toFiberCone :
    FiberCone toResidueFieldBaseChange I →ₗ[A] fiberConeCarrier
  presentationMap : SymmetricAlgebra k V →ₐ[k] fiberConeCarrier

attribute [instance] FiberEquationData.vAddCommGroup
attribute [instance] FiberEquationData.vModule
attribute [instance] FiberEquationData.eqDefectModFiberAddCommGroup
attribute [instance] FiberEquationData.eqDefectModFiberModule
attribute [instance] FiberEquationData.fiberConeCommRing
attribute [instance] FiberEquationData.fiberConeAlgebra
attribute [instance] FiberEquationData.fiberConeModule

namespace FiberEquationData

variable (F : FiberEquationData A I)

/-- The codomain used to model the fiber cone over the residue field. -/
abbrev fiberCone := F.fiberConeCarrier

/-- The special fiber equation ideal `J_fib = ker(Sym_k(V) → F(I))`. -/
abbrev fiberEquationIdeal : Ideal (SymmetricAlgebra F.k F.V) :=
  RingHom.ker (F.presentationMap : SymmetricAlgebra F.k F.V →+* F.fiberCone)

/-- Abstract statement of Proposition A.1: an exact Tor segment ending in `J_fib`. -/
def PropositionA1
    {torOne : Type*} [AddCommGroup torOne] [Module F.k torOne]
    {equationDefectMod : Type*} [AddCommGroup equationDefectMod] [Module F.k equationDefectMod]
    (torToEquation : torOne →ₗ[F.k] equationDefectMod)
    (equationToFiber :
      equationDefectMod →ₗ[F.k] F.fiberEquationIdeal) : Prop :=
  Function.Exact torToEquation equationToFiber ∧ Function.Surjective equationToFiber

end FiberEquationData

end Fiber
end ReesDefects
