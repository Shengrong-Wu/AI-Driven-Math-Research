import Mathlib.Algebra.Exact
import ReesDefects.Foundations.FiniteLengthNat

/-!
# ReesDefects.Foundations.ScalarTorsion

Scalar-torsion kernel and scalar quotient packages.
-/

noncomputable section

namespace ReesDefects
namespace Foundations

universe u v

variable {R : Type u} {M : Type v}
variable [CommRing R] [AddCommGroup M] [Module R M]

/-- Multiplication by a scalar, viewed as an endomorphism of `M`. -/
def smulLinear (R : Type u) (M : Type v) [CommRing R] [AddCommGroup M] [Module R M] (r : R) :
    M →ₗ[R] M :=
  r • LinearMap.id

/-- The `r`-torsion submodule `0 :_M r`. -/
def torsionBy (R : Type u) (M : Type v) [CommRing R] [AddCommGroup M] [Module R M] (r : R) :
    Submodule R M :=
  LinearMap.ker (smulLinear R M r)

/-- The quotient module `M / rM`, represented as the cokernel of scalar multiplication by `r`. -/
abbrev modBy (R : Type u) (M : Type v) [CommRing R] [AddCommGroup M] [Module R M] (r : R) :=
  M ⧸ LinearMap.range (smulLinear R M r)

set_option maxHeartbeats 400000 in
-- Elaborating the exact-sequence terms with explicit range-restricted codomains is expensive.
/-- Nat-valued length decomposition for the scalar-torsion exact sequence. -/
theorem finLengthNat_eq_finLengthNat_torsion_add_finLengthNat_range
    (r : R) (hM : IsFiniteLength R M) :
    finLengthNat R M =
      finLengthNat R (torsionBy R M r) +
        finLengthNat R (LinearMap.range (smulLinear R M r)) := by
  let f : torsionBy R M r →ₗ[R] M := (torsionBy R M r).subtype
  let g : M →ₗ[R] LinearMap.range (smulLinear R M r) := (smulLinear R M r).rangeRestrict
  have hf : Function.Injective f := Submodule.subtype_injective _
  have hg : Function.Surjective g := LinearMap.surjective_rangeRestrict _
  have hfg : Function.Exact f g := by
    rw [LinearMap.exact_iff, LinearMap.ker_rangeRestrict]
    simp [f, torsionBy]
  have hT : IsFiniteLength R (torsionBy R M r) :=
    IsFiniteLength.of_injective hM hf
  have hR : IsFiniteLength R (LinearMap.range (smulLinear R M r)) :=
    IsFiniteLength.of_surjective hM hg
  simpa [f, g] using
    finLengthNat_eq_add_of_exact (R := R) (M := M)
      (N := torsionBy R M r) (P := LinearMap.range (smulLinear R M r))
      f g hf hg hfg hT hR

set_option maxHeartbeats 400000 in
-- Elaborating the quotient target `M ⧸ range (r • id)` also needs extra heartbeats here.
/-- Nat-valued length decomposition for `M / rM`. -/
theorem finLengthNat_eq_finLengthNat_range_add_finLengthNat_modBy
    (r : R) (hM : IsFiniteLength R M) :
    finLengthNat R M =
      finLengthNat R (LinearMap.range (smulLinear R M r)) +
        finLengthNat R (modBy R M r) := by
  let f : LinearMap.range (smulLinear R M r) →ₗ[R] M :=
    (LinearMap.range (smulLinear R M r)).subtype
  let g : M →ₗ[R] modBy R M r :=
    Submodule.mkQ (LinearMap.range (smulLinear R M r))
  have hf : Function.Injective f := Submodule.subtype_injective _
  have hg : Function.Surjective g := by
    simpa [g] using (Submodule.mkQ_surjective (LinearMap.range (smulLinear R M r)))
  have hfg : Function.Exact f g := LinearMap.exact_subtype_mkQ _
  have hR : IsFiniteLength R (LinearMap.range (smulLinear R M r)) :=
    IsFiniteLength.of_injective hM hf
  have hQ : IsFiniteLength R (modBy R M r) :=
    IsFiniteLength.of_surjective hM hg
  simpa [f, g, modBy] using
    finLengthNat_eq_add_of_exact (R := R) (M := M)
      (N := LinearMap.range (smulLinear R M r)) (P := modBy R M r)
      f g hf hg hfg hR hQ

/-- The scalar-torsion and scalar quotient have the same finite length. -/
theorem finLengthNat_torsionBy_eq_finLengthNat_modBy
    (r : R) (hM : IsFiniteLength R M) :
    finLengthNat R (torsionBy R M r) = finLengthNat R (modBy R M r) := by
  have hEq :
      finLengthNat R (LinearMap.range (smulLinear R M r)) + finLengthNat R (torsionBy R M r) =
        finLengthNat R (LinearMap.range (smulLinear R M r)) + finLengthNat R (modBy R M r) := by
    calc
      finLengthNat R (LinearMap.range (smulLinear R M r)) + finLengthNat R (torsionBy R M r)
          = finLengthNat R M := by
            simpa [Nat.add_comm] using
              (finLengthNat_eq_finLengthNat_torsion_add_finLengthNat_range (M := M) r hM).symm
      _ = finLengthNat R (LinearMap.range (smulLinear R M r)) + finLengthNat R (modBy R M r) := by
            simpa using
              (finLengthNat_eq_finLengthNat_range_add_finLengthNat_modBy (M := M) r hM)
  exact Nat.add_left_cancel hEq

end Foundations
end ReesDefects
