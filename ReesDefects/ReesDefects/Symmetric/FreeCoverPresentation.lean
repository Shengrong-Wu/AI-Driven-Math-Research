import Mathlib.LinearAlgebra.SymmetricAlgebra.Basis
import ReesDefects.Symmetric.DegreeModel

/-!
# ReesDefects.Symmetric.FreeCoverPresentation

Concrete free-cover packages for later symmetric-side realizations.
-/

noncomputable section

namespace ReesDefects
namespace Symmetric

universe u v

variable {R : Type u} [CommRing R]
variable (I : Ideal R)

/-- A free cover presentation of the ideal `I`. -/
class FreeCoverPresentation where
  cover : Type v
  coverAddCommGroup : AddCommGroup cover
  coverModule : Module R cover
  coverFree : Module.Free R cover
  coverToIdeal : cover →ₗ[R] I
  coverToIdeal_surjective : Function.Surjective coverToIdeal

attribute [instance] FreeCoverPresentation.coverAddCommGroup
attribute [instance] FreeCoverPresentation.coverModule
attribute [instance] FreeCoverPresentation.coverFree

variable [P : FreeCoverPresentation (R := R) I]

/-- The canonical linear map from the free cover into its symmetric algebra. -/
abbrev degreeOneLinear :
    P.cover →ₗ[R] SymmetricAlgebra R P.cover :=
  SymmetricAlgebra.ι R P.cover

/-- Evaluate a symmetric-algebra lift on a free-cover generator. -/
theorem lift_cover_apply {A : Type v} [CommRing A] [Algebra R A]
    (f : P.cover →ₗ[R] A) (x : P.cover) :
    SymmetricAlgebra.lift f (degreeOneLinear (R := R) (I := I) x) = f x :=
  SymmetricAlgebra.lift_ι_apply f x

/-- Every ideal element has a preimage in the chosen free cover. -/
theorem exists_cover_preimage (x : I) :
    ∃ y : P.cover, P.coverToIdeal y = x :=
  P.coverToIdeal_surjective x

end Symmetric
end ReesDefects
