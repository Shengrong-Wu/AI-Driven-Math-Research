import ReesDefects.Main.FiberCorrectedBridge

/-!
# ReesDefects.Main.CorollaryLinearType

Corollary C, stated relative to the abstract linear-type criterion carried by the Main package.
-/

noncomputable section

namespace ReesDefects
namespace Main
namespace CorollaryLinearType

universe u

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Degreewise vanishing of the equation defect lengths. -/
def EquationDefectVanishes (P : ConcreteTheoremA123.ConcretePackage A I) : Prop :=
  ∀ n, P.equationDefectLength n = 0

/-- Abstract criterion identifying vanishing of the equation defect with linear type. -/
structure LinearTypeCriterion (P : ConcreteTheoremA123.ConcretePackage A I) where
  linearType : Prop
  linearType_iff_equationDefectVanishes :
    linearType ↔ EquationDefectVanishes P

variable {P : ConcreteTheoremA123.ConcretePackage A I}
variable {F : Fiber.FiberEquationData A I}

/-- If Theorem B bounds `λ(𝓔_n)` by `λ(D_n)` and `D_n` has length zero, then `𝓔_n` also has
length zero. -/
theorem equationDefectVanishes_of_dZero
    {d : ℕ} {r : A}
    (T : FiberCorrectedBridge.FiberCorrectionData P F d r)
    (hDzero : ∀ n, Foundations.finLengthNat A (P.asFirstCoefficientLike.D n) = 0) :
    EquationDefectVanishes P := by
  intro n
  rcases FiberCorrectedBridge.theoremB_equationDefectBound (T := T) with ⟨C, hC⟩
  have hle :
      P.equationDefectLength n ≤
        C * Foundations.finLengthNat A (P.asFirstCoefficientLike.D n) :=
    hC n
  rw [hDzero n, Nat.mul_zero] at hle
  exact Nat.eq_zero_of_le_zero hle
  -- [corollary_c_equation_defect_zero]
  -- CLOSE
  -- Use the fiber-corrected bound and `λ(D_n)=0` to force `λ(𝓔_n)=0`.

/-- Corollary C: under the fiber-corrected bridge and `𝓓 = 0`, the package satisfies linear
type. -/
theorem corollaryC
    {d : ℕ} {r : A}
    (hLin : LinearTypeCriterion P)
    (T : FiberCorrectedBridge.FiberCorrectionData P F d r)
    (hDzero : ∀ n, Foundations.finLengthNat A (P.asFirstCoefficientLike.D n) = 0) :
    hLin.linearType := by
  exact
    hLin.linearType_iff_equationDefectVanishes.mpr <|
      equationDefectVanishes_of_dZero (P := P) (F := F) (d := d) (r := r) T hDzero
  -- [corollary_c]
  -- CLOSE
  -- Combine degreewise vanishing of the equation defect with the abstract linear-type criterion.

end CorollaryLinearType
end Main
end ReesDefects
