import Mathlib.RingTheory.ReesAlgebra
import Mathlib.RingTheory.Ideal.Maps
import Mathlib.RingTheory.Localization.FractionRing

/-!
# ReesDefects.Normalized.ClosurePower

Local closure-power data and the normalized Rees algebra built from it.
-/

noncomputable section

namespace ReesDefects
namespace Normalized

universe u

open Polynomial

variable {A : Type u} [CommRing A]

/-- A local package of the closure-power properties needed by the normalized layer. -/
structure ClosurePowerSystem (A : Type*) [CommRing A] (I : Ideal A) where
  closurePow : ℕ → Ideal A
  zero_closurePow : closurePow 0 = ⊤
  mul_closurePow : ∀ m n, closurePow m * closurePow n ≤ closurePow (m + n)
  pow_le_closurePow : ∀ n, I ^ n ≤ closurePow n

namespace ClosurePowerSystem

variable {I : Ideal A} (C : ClosurePowerSystem A I)

section FractionField

variable [IsDomain A]

/-- The coefficient ideal in the fraction field corresponding to `closurePow I n`. -/
abbrev closureIdealMap (C : ClosurePowerSystem A I) (n : ℕ) : Ideal (FractionRing A) :=
  Ideal.map (algebraMap A (FractionRing A)) (C.closurePow n)

/-- The normalized Rees algebra attached to a closure-power system, realized as a polynomial
subalgebra of the fraction field whose coefficients lie in the mapped closure powers. -/
def normalizedReesAlgebra (C : ClosurePowerSystem A I) : Subalgebra A (FractionRing A)[X] where
  carrier := { f | ∀ n : ℕ, f.coeff n ∈ closureIdealMap C n }
  mul_mem' := by
    intro f g hf hg n
    rw [coeff_mul]
    apply Ideal.sum_mem
    rintro ⟨i, j⟩ hij
    have hle :
        closureIdealMap C i * closureIdealMap C j ≤ closureIdealMap C (i + j) := by
      calc
        closureIdealMap C i * closureIdealMap C j
            = Ideal.map (algebraMap A (FractionRing A)) (C.closurePow i * C.closurePow j) := by
                symm
                simpa [closureIdealMap] using
                  (Ideal.map_mul (algebraMap A (FractionRing A))
                    (C.closurePow i) (C.closurePow j))
        _ ≤ Ideal.map (algebraMap A (FractionRing A)) (C.closurePow (i + j)) :=
              Ideal.map_mono (C.mul_closurePow i j)
    have hij' : i + j = n := Finset.mem_antidiagonal.mp hij
    simpa [closureIdealMap, hij'] using hle (Ideal.mul_mem_mul (hf i) (hg j))
  one_mem' := by
    intro n
    rw [coeff_one]
    by_cases hn : n = 0
    · subst hn
      simpa [closureIdealMap] using
        (Ideal.mem_map_of_mem (algebraMap A (FractionRing A)) (by
          simp [C.zero_closurePow] : (1 : A) ∈ C.closurePow 0))
    · simp [hn, closureIdealMap]
  add_mem' := by
    intro f g hf hg n
    rw [coeff_add]
    exact Ideal.add_mem _ (hf n) (hg n)
  zero_mem' := by
    intro n
    exact Ideal.zero_mem _
  algebraMap_mem' := by
    intro a n
    rw [algebraMap_apply, coeff_C]
    by_cases hn : n = 0
    · subst hn
      simpa [closureIdealMap] using
        (Ideal.mem_map_of_mem (algebraMap A (FractionRing A)) (by
          simp [C.zero_closurePow] : a ∈ C.closurePow 0))
    · simp [hn, closureIdealMap]

/-- Membership in the normalized Rees algebra is coefficientwise membership in the mapped
closure powers. -/
theorem mem_normalizedReesAlgebra_iff (C : ClosurePowerSystem A I) (f : (FractionRing A)[X]) :
    f ∈ normalizedReesAlgebra C ↔ ∀ n : ℕ, f.coeff n ∈ closureIdealMap C n :=
  Iff.rfl

/-- A monomial belongs to the normalized Rees algebra exactly when its coefficient belongs to the
corresponding mapped closure power. -/
theorem monomial_mem_iff (C : ClosurePowerSystem A I) {n : ℕ} {x : FractionRing A} :
    Polynomial.monomial n x ∈ normalizedReesAlgebra C ↔ x ∈ closureIdealMap C n := by
  constructor
  · intro hx
    simpa using (mem_normalizedReesAlgebra_iff C _).mp hx n
  · intro hx
    exact (mem_normalizedReesAlgebra_iff C _).mpr <| by
      intro m
      by_cases hm : m = n
      · subst hm
        simpa using hx
      · have hnm : ¬ n = m := by
          intro hnm
          exact hm hnm.symm
        rw [coeff_monomial, if_neg hnm]
        exact Ideal.zero_mem _

/-- The mapped ideal powers sit inside the mapped closure powers in the fraction field. -/
theorem map_pow_le_closureIdealMap (C : ClosurePowerSystem A I) (n : ℕ) :
    Ideal.map (algebraMap A (FractionRing A)) (I ^ n) ≤ closureIdealMap C n := by
  exact Ideal.map_mono (C.pow_le_closurePow n)

end FractionField

end ClosurePowerSystem

end Normalized
end ReesDefects
