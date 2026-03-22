import Mathlib.LinearAlgebra.SymmetricAlgebra.Basic

/-!
# ReesDefects.Symmetric.Basic

Abstract degreewise interface for the symmetric side.
-/

noncomputable section

namespace ReesDefects
namespace Symmetric

universe u v w

variable {R : Type u} [CommRing R]
variable {M : Type v} [AddCommGroup M] [Module R M]
variable {A : Type w} [CommRing A] [Algebra R A]

/-- Paper-facing abbreviation for the symmetric algebra. -/
abbrev SymmetricObject (R : Type u) [CommRing R] (M : Type v)
    [AddCommGroup M] [Module R M] :=
  SymmetricAlgebra R M

/-- Evaluate the universal symmetric-algebra lift on a generator. -/
theorem lift_ι_apply (f : M →ₗ[R] A) (x : M) :
    SymmetricAlgebra.lift f (SymmetricAlgebra.ι R M x) = f x :=
  SymmetricAlgebra.lift_ι_apply f x

/-- The lifted algebra map agrees with the original linear map on generators. -/
theorem lift_comp_ι (f : M →ₗ[R] A) :
    (SymmetricAlgebra.lift f).toLinearMap ∘ₗ SymmetricAlgebra.ι R M = f :=
  SymmetricAlgebra.lift_comp_ι (R := R) (M := M) (f := f)

variable (I : Ideal R)

/-- Abstract degreewise symmetric-side data with distinguished degree-one generators. -/
class DegreewiseData where
  piece : ℕ → Type v
  pieceAddCommGroup : ∀ n, AddCommGroup (piece n)
  pieceModule : ∀ n, Module R (piece n)
  degreeOne : I → piece 1

attribute [instance] DegreewiseData.pieceAddCommGroup
attribute [instance] DegreewiseData.pieceModule

end Symmetric
end ReesDefects
