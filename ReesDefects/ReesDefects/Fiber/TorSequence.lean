import ReesDefects.Fiber.FiberEquationIdeal

-- Superseded by `Fiber/RightExactBridge.lean` and `Fiber/TorSequenceFuture.lean`.
-- This file is kept for the session log record only. Do not import it.

/-!
# ReesDefects.Fiber.TorSequence

Historical Tor exact-sequence placeholder for Proposition A.1.
-/

noncomputable section

namespace ReesDefects
namespace Fiber

universe u v w

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

namespace FiberEquationData

variable (F : FiberEquationData A I)

/-- Abstract Tor-side data for Proposition A.1. -/
structure TorSequenceData where
  torOne : Type v
  torOneAddCommGroup : AddCommGroup torOne
  torOneModule : Module F.k torOne
  equationDefectMod : Type w
  equationDefectAddCommGroup : AddCommGroup equationDefectMod
  equationDefectModule : Module F.k equationDefectMod
  torToEquation : torOne →ₗ[F.k] equationDefectMod
  equationToFiber : equationDefectMod →ₗ[F.k] F.fiberEquationIdeal

attribute [instance] TorSequenceData.torOneAddCommGroup
attribute [instance] TorSequenceData.torOneModule
attribute [instance] TorSequenceData.equationDefectAddCommGroup
attribute [instance] TorSequenceData.equationDefectModule

end FiberEquationData

end Fiber
end ReesDefects
