import ReesDefects.Intermediate.SandwichedPowerFamily
import ReesDefects.Normalized.ClosurePower

/-!
# ReesDefects.Normalized.Basic

Abstract first intermediate families sitting between the powers of `I` and the chosen closure
powers.
-/

noncomputable section

namespace ReesDefects
namespace Normalized

universe u

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- A lower intermediate family `U_n` sitting between `I^n` and the chosen closure powers. -/
structure BasicSystem (A : Type*) [CommRing A] (I : Ideal A)
    extends ClosurePowerSystem A I where
  U : ℕ → Ideal A
  zero_U : U 0 = ⊤
  mul_U : ∀ m n, U m * U n ≤ U (m + n)
  pow_le_U : ∀ n, I ^ n ≤ U n
  U_le_closurePow : ∀ n, U n ≤ closurePow n

namespace BasicSystem

variable (B : BasicSystem A I)

/-- The lower family contains the actual ideal powers. -/
theorem pow_le_U_apply (n : ℕ) : I ^ n ≤ B.U n :=
  B.pow_le_U n

/-- The lower family lies inside the chosen closure powers. -/
theorem U_le_closurePow_apply (n : ℕ) : B.U n ≤ B.closurePow n :=
  B.U_le_closurePow n

/-- The resulting Phase 5 sandwiched family with upper family `closurePow`. -/
def toSandwichedPowerFamily : Intermediate.SandwichedPowerFamily A I where
  U := B.U
  N := B.closurePow
  zero_U := B.zero_U
  zero_N := B.zero_closurePow
  mul_U := B.mul_U
  mul_N := B.mul_closurePow
  pow_le_U := B.pow_le_U
  U_le_N := B.U_le_closurePow

/-- In the induced sandwiched family, the upper family is exactly the chosen closure powers. -/
@[simp]
theorem toSandwichedPowerFamily_N (n : ℕ) :
    (B.toSandwichedPowerFamily.N n) = B.closurePow n :=
  rfl

/-- In the induced sandwiched family, the lower family is the chosen intermediate family `U_n`. -/
@[simp]
theorem toSandwichedPowerFamily_U (n : ℕ) :
    (B.toSandwichedPowerFamily.U n) = B.U n :=
  rfl

end BasicSystem

end Normalized
end ReesDefects
