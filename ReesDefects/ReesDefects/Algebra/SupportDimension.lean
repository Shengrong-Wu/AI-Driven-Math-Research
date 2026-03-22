import Mathlib.RingTheory.KrullDimension.Module
import ReesDefects.Algebra.QuotientModulesOfIdeals

/-!
# ReesDefects.Algebra.SupportDimension

Minimal support-dimension wrappers used later in the asymptotic layer.
-/

noncomputable section

namespace ReesDefects
namespace Algebra

universe u v w

variable {R : Type u} [CommRing R]
variable {M : Type v} {N : Type w}
variable [AddCommGroup M] [Module R M]
variable [AddCommGroup N] [Module R N]

/-- Convenience predicate for the codimension-one regime used later in the project. -/
def supportDimLEOne (R : Type u) [CommRing R] (M : Type v)
    [AddCommGroup M] [Module R M] : Prop :=
  Module.supportDim R M ≤ 1

/-- Support dimension at most one descends along injective linear maps. -/
theorem supportDimLEOne_of_injective (f : M →ₗ[R] N)
    (hf : Function.Injective f) (hN : supportDimLEOne R N) :
    supportDimLEOne R M := by
  exact le_trans (Module.supportDim_le_of_injective f hf) hN

/-- Support dimension at most one ascends along surjective linear maps. -/
theorem supportDimLEOne_of_surjective (f : M →ₗ[R] N)
    (hf : Function.Surjective f) (hM : supportDimLEOne R M) :
    supportDimLEOne R N := by
  exact le_trans (Module.supportDim_le_of_surjective f hf) hM

/-- For a quotient ring, the support dimension matches the ring Krull dimension of that quotient. -/
theorem ideal_quotient_supportDim_eq (I : Ideal R) :
    Module.supportDim R (R ⧸ I) = ringKrullDim (R ⧸ I) :=
  Module.supportDim_quotient_eq_ringKrullDim (R := R) I

end Algebra
end ReesDefects
