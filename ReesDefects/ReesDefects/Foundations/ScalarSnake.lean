import Mathlib.Algebra.Module.SnakeLemma
import ReesDefects.Foundations.ScalarTorsion

/-!
# ReesDefects.Foundations.ScalarSnake

Scalar snake-lemma infrastructure for a short exact sequence of modules.
-/

noncomputable section

namespace ReesDefects
namespace Foundations

universe u v w x

variable {R : Type u} {D : Type v} {B : Type w} {C : Type x}
variable [CommRing R]
variable [AddCommGroup D] [Module R D]
variable [AddCommGroup B] [Module R B]
variable [AddCommGroup C] [Module R C]

/-- A linear map preserves scalar-torsion. -/
def mapTorsion (f : D →ₗ[R] B) (r : R) : torsionBy R D r →ₗ[R] torsionBy R B r where
  toFun x := ⟨f x, by
    have hx : r • (x : D) = 0 := by
      change (smulLinear R D r) x = 0
      exact x.2
    change r • f x = 0
    rw [← map_smul, hx, LinearMap.map_zero]⟩
  map_add' x y := by
    ext
    simp
  map_smul' a x := by
    ext
    simp

/-- A linear map descends to the scalar quotient. -/
def mapModBy (f : D →ₗ[R] B) (r : R) : modBy R D r →ₗ[R] modBy R B r :=
  Submodule.mapQ _ _ f <| by
    rintro _ ⟨x, rfl⟩
    refine ⟨f x, by simp [smulLinear]⟩

/-- Scalar multiplication commutes with every linear map. -/
lemma smulLinear_comm (f : D →ₗ[R] B) (r : R) :
    f.comp (smulLinear R D r) = (smulLinear R B r).comp f := by
  ext x
  simp [smulLinear]

/-- Injectivity passes to the torsion restriction. -/
lemma injective_mapTorsion {f : D →ₗ[R] B} (hf : Function.Injective f) (r : R) :
    Function.Injective (mapTorsion f r) := by
  intro x y hxy
  apply Subtype.ext
  exact hf (Subtype.ext_iff.mp hxy)

/-- Exactness of the restricted torsion sequence. -/
lemma exact_mapTorsion
    {d : D →ₗ[R] B} {q : B →ₗ[R] C}
    (hdq : Function.Exact d q) (hd_inj : Function.Injective d) (r : R) :
    Function.Exact (mapTorsion d r) (mapTorsion q r) := by
  rw [LinearMap.exact_iff]
  ext x
  constructor
  · intro hx
    have hx' : q x = 0 := by
      simpa [LinearMap.mem_ker, mapTorsion] using hx
    obtain ⟨y, hy⟩ := (hdq x).mp hx'
    have hy_tors : (smulLinear R D r) y = 0 := by
      apply hd_inj
      have hxB : (smulLinear R B r) x = 0 := x.2
      calc
        d ((smulLinear R D r) y) = (smulLinear R B r) (d y) := by
          simp [smulLinear, map_smul]
        _ = 0 := by
          rw [hy]
          exact x.2
        _ = d 0 := by simp
    refine ⟨⟨y, hy_tors⟩, ?_⟩
    ext
    exact hy
  · rintro ⟨y, rfl⟩
    have hcomp : (q.comp d) y = 0 := by
      have hcomp' : ((fun f : D → C => f y) (q ∘ d)) = ((fun f : D → C => f y) 0) :=
        congrFun hdq.comp_eq_zero y
      simpa using hcomp'
    simpa [LinearMap.mem_ker, mapTorsion] using hcomp

set_option maxHeartbeats 400000 in
-- The module snake lemma with explicit kernel/cokernel models is expensive to elaborate.
/-- The connecting map `C[r] → D / rD` produced by the snake lemma. -/
def snakeDelta
    {d : D →ₗ[R] B} {q : B →ₗ[R] C}
    (hdq : Function.Exact d q) (hq_surj : Function.Surjective q)
    (hd_inj : Function.Injective d) (r : R) :
    torsionBy R C r →ₗ[R] modBy R D r :=
  SnakeLemma.δ'
    (smulLinear R D r) (smulLinear R B r) (smulLinear R C r)
    d q hdq
    d q hdq
    (smulLinear_comm d r)
    (smulLinear_comm q r)
    (torsionBy R C r).subtype
    (LinearMap.exact_subtype_ker_map _)
    (Submodule.mkQ (LinearMap.range (smulLinear R D r)))
    (LinearMap.exact_map_mkQ_range _)
    hq_surj hd_inj

set_option maxHeartbeats 400000 in
-- This is the snake-lemma exactness `B[r] → C[r] → D / rD`.
/-- Exactness of the snake connecting map on the right. -/
lemma exact_torsion_snakedelta
    {d : D →ₗ[R] B} {q : B →ₗ[R] C}
    (hdq : Function.Exact d q) (hq_surj : Function.Surjective q)
    (hd_inj : Function.Injective d) (r : R) :
    Function.Exact (mapTorsion q r) (snakeDelta hdq hq_surj hd_inj r) := by
  refine SnakeLemma.exact_δ'_right
    (smulLinear R D r) (smulLinear R B r) (smulLinear R C r)
    d q hdq
    d q hdq
    (smulLinear_comm d r)
    (smulLinear_comm q r)
    (torsionBy R B r).subtype
    (LinearMap.exact_subtype_ker_map _)
    (torsionBy R C r).subtype
    (LinearMap.exact_subtype_ker_map _)
    (Submodule.mkQ (LinearMap.range (smulLinear R D r)))
    (LinearMap.exact_map_mkQ_range _)
    hq_surj hd_inj
    (mapTorsion q r)
    (by
      ext x
      rfl)
    (Submodule.subtype_injective _)

set_option maxHeartbeats 400000 in
-- This is the snake-lemma exactness `C[r] → D / rD → B / rB`.
/-- Exactness of the snake connecting map on the left. -/
lemma exact_snakedelta_modBy
    {d : D →ₗ[R] B} {q : B →ₗ[R] C}
    (hdq : Function.Exact d q) (hq_surj : Function.Surjective q)
    (hd_inj : Function.Injective d) (r : R) :
    Function.Exact (snakeDelta hdq hq_surj hd_inj r) (mapModBy d r) := by
  refine SnakeLemma.exact_δ'_left
    (smulLinear R D r) (smulLinear R B r) (smulLinear R C r)
    d q hdq
    d q hdq
    (smulLinear_comm d r)
    (smulLinear_comm q r)
    (torsionBy R C r).subtype
    (LinearMap.exact_subtype_ker_map _)
    (Submodule.mkQ (LinearMap.range (smulLinear R D r)))
    (LinearMap.exact_map_mkQ_range _)
    (Submodule.mkQ (LinearMap.range (smulLinear R B r)))
    (LinearMap.exact_map_mkQ_range _)
    hq_surj hd_inj
    (mapModBy d r)
    (by
      ext x
      rfl)
    (Submodule.mkQ_surjective _)

/-- The abstract scalar-snake length identity. -/
theorem
    finLengthNat_modBy_eq_finLengthNat_torsionBy_add_finLengthNat_torsionBy_sub_finLengthNat_range
    {d : D →ₗ[R] B} {q : B →ₗ[R] C}
    (hdq : Function.Exact d q) (hd_inj : Function.Injective d)
    (hq_surj : Function.Surjective q) (r : R)
    (hD : IsFiniteLength R D) (hB : IsFiniteLength R B) (hC : IsFiniteLength R C) :
    finLengthNat R (modBy R B r) =
      finLengthNat R (torsionBy R D r) + finLengthNat R (torsionBy R C r) -
        finLengthNat R (LinearMap.range (snakeDelta hdq hq_surj hd_inj r)) := by
  let td : torsionBy R D r →ₗ[R] torsionBy R B r := mapTorsion d r
  let tq : torsionBy R B r →ₗ[R] torsionBy R C r := mapTorsion q r
  let δ : torsionBy R C r →ₗ[R] modBy R D r := snakeDelta hdq hq_surj hd_inj r
  have htd_inj : Function.Injective td := injective_mapTorsion hd_inj r
  have hDtors : IsFiniteLength R (torsionBy R D r) :=
    IsFiniteLength.of_injective hD (Submodule.subtype_injective _)
  have hBtors : IsFiniteLength R (torsionBy R B r) :=
    IsFiniteLength.of_injective hB (Submodule.subtype_injective _)
  have hCtors : IsFiniteLength R (torsionBy R C r) :=
    IsFiniteLength.of_injective hC (Submodule.subtype_injective _)
  have hRangeTq : IsFiniteLength R (LinearMap.range tq) :=
    IsFiniteLength.of_surjective hBtors (LinearMap.surjective_rangeRestrict tq)
  have hRangeδ : IsFiniteLength R (LinearMap.range δ) :=
    IsFiniteLength.of_surjective hCtors (LinearMap.surjective_rangeRestrict δ)
  have h₁ :
      finLengthNat R (torsionBy R B r) =
        finLengthNat R (torsionBy R D r) + finLengthNat R (LinearMap.range tq) := by
    have hExact : Function.Exact td tq.rangeRestrict := by
      simpa [LinearMap.exact_iff, td, tq, LinearMap.ker_rangeRestrict] using
        (exact_mapTorsion hdq hd_inj r)
    simpa [td, tq] using
      finLengthNat_eq_add_of_exact (R := R) (M := torsionBy R B r)
        (N := torsionBy R D r) (P := LinearMap.range tq)
        td tq.rangeRestrict htd_inj (LinearMap.surjective_rangeRestrict tq)
        hExact hDtors hRangeTq
  have h₂ :
      finLengthNat R (torsionBy R C r) =
        finLengthNat R (LinearMap.range tq) + finLengthNat R (LinearMap.range δ) := by
    simpa [tq, δ] using
      finLengthNat_eq_add_of_exact (R := R) (M := torsionBy R C r)
        (N := LinearMap.range tq) (P := LinearMap.range δ)
        (LinearMap.range tq).subtype δ.rangeRestrict
        (Submodule.subtype_injective _) (LinearMap.surjective_rangeRestrict δ)
        (exact_torsion_snakedelta hdq hq_surj hd_inj r).linearMap_rangeRestrict hRangeTq hRangeδ
  have hRange :
      finLengthNat R (LinearMap.range tq) =
        finLengthNat R (torsionBy R C r) - finLengthNat R (LinearMap.range δ) :=
    Nat.eq_sub_of_add_eq h₂.symm
  calc
    finLengthNat R (modBy R B r) = finLengthNat R (torsionBy R B r) := by
      symm
      exact finLengthNat_torsionBy_eq_finLengthNat_modBy r hB
    _ = finLengthNat R (torsionBy R D r) + finLengthNat R (LinearMap.range tq) := h₁
    _ = finLengthNat R (torsionBy R D r) +
        (finLengthNat R (torsionBy R C r) - finLengthNat R (LinearMap.range δ)) := by
          rw [hRange]
    _ = finLengthNat R (torsionBy R D r) + finLengthNat R (torsionBy R C r) -
        finLengthNat R (LinearMap.range (snakeDelta hdq hq_surj hd_inj r)) := by
          have hle : finLengthNat R (LinearMap.range δ) ≤ finLengthNat R (torsionBy R C r) := by
            calc
              finLengthNat R (LinearMap.range δ) ≤
                  finLengthNat R (LinearMap.range δ) + finLengthNat R (LinearMap.range tq) :=
                Nat.le_add_right _ _
              _ = finLengthNat R (torsionBy R C r) := by
                simpa [Nat.add_comm] using h₂.symm
          have hs :
              finLengthNat R (torsionBy R D r) + finLengthNat R (torsionBy R C r) -
                  finLengthNat R (LinearMap.range δ) =
                finLengthNat R (torsionBy R D r) +
                  (finLengthNat R (torsionBy R C r) - finLengthNat R (LinearMap.range δ)) := by
            simpa using (Nat.add_sub_assoc hle (finLengthNat R (torsionBy R D r)))
          simpa [δ] using hs.symm

end Foundations
end ReesDefects
