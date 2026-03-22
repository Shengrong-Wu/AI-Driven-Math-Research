import ReesDefects.FirstCoefficient.Axioms

/-!
# ReesDefects.FirstCoefficient.ConcreteDefinition

Axiomatized concrete realization of the first coefficient ideal `(I^n)_1`.
-/

noncomputable section

namespace ReesDefects
namespace FirstCoefficient

universe u

variable {A : Type u} [CommRing A]

/-- Placeholder for Puthenpurakal's first coefficient ideal `(I^n)_1`. -/
axiom puthenpurakalFirstCoefficientIdeal (A : Type*) [CommRing A] (I : Ideal A) : ℕ → Ideal A

/-- A concrete realization of `FirstCoefficientLike` whose lower family is exactly the family of
first coefficient ideals `(I^n)_1`. This is axiomatized until the full construction is available
in Lean. -/
structure ConcreteDefinition (A : Type*) [CommRing A] (I : Ideal A)
    extends FirstCoefficientLike A I where
  U_eq_puthenpurakal : ∀ n, U n = puthenpurakalFirstCoefficientIdeal A I n

/-- Axiomatized concrete instance of the first coefficient ideal package. -/
axiom concreteDefinition (A : Type*) [CommRing A] (I : Ideal A) :
  ConcreteDefinition A I

namespace ConcreteDefinition

variable {I : Ideal A}

/-- The chosen lower family agrees with the intended first coefficient ideal. -/
theorem U_eq_puthenpurakal_apply (n : ℕ) :
    (concreteDefinition A I).U n = puthenpurakalFirstCoefficientIdeal A I n :=
  (concreteDefinition A I).U_eq_puthenpurakal n

end ConcreteDefinition

end FirstCoefficient
end ReesDefects
