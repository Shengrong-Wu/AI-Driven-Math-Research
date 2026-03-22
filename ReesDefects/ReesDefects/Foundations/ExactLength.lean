import Mathlib.LinearAlgebra.Isomorphisms
import ReesDefects.Foundations.FiniteLengthNat

/-!
# ReesDefects.Foundations.ExactLength

Kernel/cokernel length bookkeeping for linear maps.
-/

noncomputable section

namespace ReesDefects
namespace Foundations

universe u v w

variable {R : Type u} {P : Type v} {Q : Type w} {E : Type*}
variable [Ring R]
variable [AddCommGroup P] [Module R P]
variable [AddCommGroup Q] [Module R Q]
variable [AddCommGroup E] [Module R E]

/-- The cokernel model used in this file. -/
abbrev linearCokernel (φ : P →ₗ[R] Q) :=
  Q ⧸ LinearMap.range φ

/-- Nat-valued length decomposition of the domain into kernel and range. -/
theorem finLengthNat_eq_finLengthNat_ker_add_finLengthNat_range
    (φ : P →ₗ[R] Q) (hP : IsFiniteLength R P) :
    finLengthNat R P =
      finLengthNat R (LinearMap.ker φ) + finLengthNat R (LinearMap.range φ) := by
  have hKer : IsFiniteLength R (LinearMap.ker φ) :=
    IsFiniteLength.of_injective hP (Submodule.subtype_injective _)
  have hRange : IsFiniteLength R (LinearMap.range φ) :=
    IsFiniteLength.of_surjective hP (LinearMap.surjective_rangeRestrict φ)
  have hExact : Function.Exact (LinearMap.ker φ).subtype φ.rangeRestrict := by
    rw [LinearMap.exact_iff, LinearMap.ker_rangeRestrict]
    exact (Submodule.range_subtype (LinearMap.ker φ)).symm
  exact
    finLengthNat_eq_add_of_exact (R := R) (M := P)
      (N := LinearMap.ker φ) (P := LinearMap.range φ)
      (LinearMap.ker φ).subtype φ.rangeRestrict
      (Submodule.subtype_injective _) (LinearMap.surjective_rangeRestrict φ)
      hExact hKer hRange

/-- Nat-valued length decomposition of the codomain into range and cokernel. -/
theorem finLengthNat_eq_finLengthNat_range_add_finLengthNat_cokernel
    (φ : P →ₗ[R] Q) (hQ : IsFiniteLength R Q) :
    finLengthNat R Q =
      finLengthNat R (LinearMap.range φ) + finLengthNat R (linearCokernel φ) := by
  have hRange : IsFiniteLength R (LinearMap.range φ) :=
    IsFiniteLength.of_injective hQ (Submodule.subtype_injective _)
  have hCoker : IsFiniteLength R (linearCokernel φ) :=
    IsFiniteLength.of_surjective hQ (Submodule.mkQ_surjective _)
  simpa [linearCokernel] using
    finLengthNat_eq_add_of_exact (R := R) (M := Q)
      (N := LinearMap.range φ) (P := linearCokernel φ)
      (LinearMap.range φ).subtype (Submodule.mkQ (LinearMap.range φ))
      (Submodule.subtype_injective _) (Submodule.mkQ_surjective _)
      (LinearMap.exact_subtype_mkQ _) hRange hCoker

/-- Abstract index formula: if `P` exceeds `Q` in length by `E`,
then `ker φ` exceeds `coker φ` by `E`. -/
theorem finLengthNat_ker_eq_finLengthNat_cokernel_add
    (φ : P →ₗ[R] Q) (hP : IsFiniteLength R P) (hQ : IsFiniteLength R Q)
    (hIndex : finLengthNat R P = finLengthNat R Q + finLengthNat R E) :
    finLengthNat R (LinearMap.ker φ) = finLengthNat R (linearCokernel φ) + finLengthNat R E := by
  have hDom := finLengthNat_eq_finLengthNat_ker_add_finLengthNat_range (R := R) φ hP
  have hCod := finLengthNat_eq_finLengthNat_range_add_finLengthNat_cokernel (R := R) φ hQ
  have hEq :
      finLengthNat R (LinearMap.ker φ) + finLengthNat R (LinearMap.range φ) =
        (finLengthNat R (linearCokernel φ) + finLengthNat R E) +
          finLengthNat R (LinearMap.range φ) := by
    calc
      finLengthNat R (LinearMap.ker φ) + finLengthNat R (LinearMap.range φ) =
          finLengthNat R P := hDom.symm
      _ = finLengthNat R Q + finLengthNat R E := hIndex
      _ = (finLengthNat R (LinearMap.range φ) + finLengthNat R (linearCokernel φ)) +
            finLengthNat R E := by rw [hCod]
      _ = (finLengthNat R (linearCokernel φ) + finLengthNat R E) +
            finLengthNat R (LinearMap.range φ) := by ac_rfl
  exact Nat.add_right_cancel hEq

end Foundations
end ReesDefects
