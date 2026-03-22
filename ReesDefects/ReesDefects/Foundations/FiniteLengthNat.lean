import Mathlib.RingTheory.Length

/-!
# ReesDefects.Foundations.FiniteLengthNat

Nat-valued wrappers for `Module.length` under finite-length hypotheses.
-/

open scoped ENat

noncomputable section

namespace ReesDefects
namespace Foundations

variable (R : Type*) (M : Type*) (N : Type*) (P : Type*)
variable [Ring R] [AddCommGroup M] [AddCommGroup N] [AddCommGroup P]
variable [Module R M] [Module R N] [Module R P]

/-- Paper-style finite length, viewed as a natural number via `ENat.toNat`. -/
abbrev finLengthNat : ℕ :=
  ENat.toNat (Module.length R M)

/-- Finite length is equivalent to `Module.length` being finite. -/
theorem isFiniteLength_iff_length_ne_top :
    IsFiniteLength R M ↔ Module.length R M ≠ ⊤ :=
  Module.length_ne_top_iff.symm

/-- Under finite-length hypotheses, the nat-valued length coerces back to `Module.length`. -/
theorem coe_finLengthNat (h : IsFiniteLength R M) :
    (finLengthNat R M : ℕ∞) = Module.length R M := by
  exact ENat.coe_toNat (n := Module.length R M) (Module.length_ne_top_iff.mpr h)

/-- A finite-length module has nat-valued length zero exactly when it is subsingleton. -/
theorem finLengthNat_eq_zero_iff (h : IsFiniteLength R M) :
    finLengthNat R M = 0 ↔ Subsingleton M := by
  rw [finLengthNat, ENat.toNat_eq_zero, Module.length_eq_zero_iff]
  exact or_iff_left (Module.length_ne_top_iff.mpr h)

/-- A subsingleton module has nat-valued finite length zero. -/
theorem finLengthNat_eq_zero [Subsingleton M] :
    finLengthNat R M = 0 := by
  simp [finLengthNat, Module.length_eq_zero]

/-- Nat-valued finite length is invariant under linear equivalence. -/
theorem finLengthNat_congr (e : M ≃ₗ[R] N) :
    finLengthNat R M = finLengthNat R N := by
  simp [finLengthNat, e.length_eq]

/-- Nat-valued finite length is additive in exact sequences. -/
theorem finLengthNat_eq_add_of_exact
    (f : N →ₗ[R] M) (g : M →ₗ[R] P)
    (hf : Function.Injective f) (hg : Function.Surjective g) (hfg : Function.Exact f g)
    (hN : IsFiniteLength R N) (hP : IsFiniteLength R P) :
    finLengthNat R M = finLengthNat R N + finLengthNat R P := by
  rw [finLengthNat, Module.length_eq_add_of_exact f g hf hg hfg]
  exact ENat.toNat_add (Module.length_ne_top_iff.mpr hN)
    (Module.length_ne_top_iff.mpr hP)

end Foundations
end ReesDefects
