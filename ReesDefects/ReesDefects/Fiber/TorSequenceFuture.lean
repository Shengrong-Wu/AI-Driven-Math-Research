import ReesDefects.Fiber.FiberEquationIdeal

/-!
## Proposition A.1 — Future Work

The full statement of Proposition A.1 is the Tor exact sequence:
  `Tor₁^A(k, R(I)) → E/mE → J_fib → 0`.

This file packages the target statement as explicit future data. It does not use
`axiom`, and it does not pretend to prove existence of the Tor sequence from the
current Mathlib API.

WHY THIS CANNOT BE PROVED NOW:
Mathlib's flatness/exactness file (`RingTheory/Flat/CategoryTheory.lean`) lists
"relate flatness with Tor" as TODO. There is no exposed module-level `Tor₁`
long exact sequence in current Mathlib.

WHAT TO USE INSTEAD:
`Fiber/RightExactBridge.lean` proves the surjection `E/mE →→ J_fib` using only
`TensorProduct.rTensor_exact`, which IS available. All downstream files in
`Main/` that need the fiber-side obstruction should import
`RightExactBridge` and use `HasRightExactBridge`, not this file.

FUTURE PROOF PATH (if Tor₁ infrastructure is added to Mathlib):
1. Build `Homological/Tor1/Basic.lean` (Tor₁ via projective resolutions)
2. Build `Homological/Tor1/ShortExact.lean` (long exact sequence in Tor)
3. Build `Homological/Tor1/PresentationComparison.lean`
   (`Tor₁(k,R) ≅ ker(k⊗J → k⊗T)` for `0→J→T→R→0`)
4. Replace the abstract future data below with the composed isomorphism.
-/

noncomputable section

namespace ReesDefects
namespace Fiber

universe u v w

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

namespace FiberEquationData

variable (F : FiberEquationData A I)

/-- Auxiliary data for the future Tor exact-sequence statement. -/
structure FutureTorSequenceData where
  torOne : Type v
  torOneAddCommGroup : AddCommGroup torOne
  torOneModule : Module F.k torOne
  torToEquation : torOne →ₗ[F.k] F.eqDefectModFiber
  equationToFiber : F.eqDefectModFiber →ₗ[F.k] F.fiberEquationIdeal
  exact : F.PropositionA1 torToEquation equationToFiber

attribute [instance] FutureTorSequenceData.torOneAddCommGroup
attribute [instance] FutureTorSequenceData.torOneModule

/-- Proposition A.1 (future): the Tor exact segment ending at `J_fib`.
This theorem extracts the target exactness statement from the bundled future data. -/
theorem propositionA1_future (T : F.FutureTorSequenceData) :
    F.PropositionA1 T.torToEquation T.equationToFiber :=
  T.exact

end FiberEquationData

end Fiber
end ReesDefects
