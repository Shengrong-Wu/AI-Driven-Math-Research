import Mathlib.LinearAlgebra.Isomorphisms
import Mathlib.RingTheory.Ideal.Colon

/-!
# ReesDefects.Algebra.ColonAnnihilator

Conductor-side identifications between annihilators of quotient modules and colon ideals.
-/

noncomputable section

namespace ReesDefects
namespace Algebra

universe u v

variable {R : Type u} {M : Type v}
variable [CommRing R] [AddCommGroup M] [Module R M]

/-- The canonical quotient of `J` by `L ∩ J`, modeled as a submodule quotient. -/
noncomputable def quotientToMapRange (L J : Submodule R M) :
    (J ⧸ Submodule.comap J.subtype L) ≃ₗ[R] J.map L.mkQ :=
  let f : J →ₗ[R] M ⧸ L := L.mkQ.comp J.subtype
  let hker : LinearMap.ker f = Submodule.comap J.subtype L := by
    ext x
    simp [f]
  let hrange : LinearMap.range f = J.map L.mkQ := by
    ext x
    constructor
    · rintro ⟨y, rfl⟩
      exact Submodule.mem_map.mpr ⟨y, y.2, rfl⟩
    · rintro ⟨y, hy, rfl⟩
      exact ⟨⟨y, hy⟩, rfl⟩
  (Submodule.quotEquivOfEq _ _ hker.symm).trans <|
    (LinearMap.quotKerEquivRange f).trans (LinearEquiv.ofEq _ _ hrange)

/-- Mathlib’s annihilator-colon identity for the image of a submodule in a quotient. -/
theorem submodule_annihilator_map_mkQ_eq_colon (L J : Submodule R M) :
    Module.annihilator R (J.map L.mkQ) = L.colon (J : Set M) := by
  simp [Submodule.annihilator_map_mkQ_eq_colon (N := L) (P := J)]

/-- If `L ≤ J`, then the annihilator of the quotient `J / L` is the colon ideal `L : J`. -/
theorem submodule_annihilator_quotient_eq_colon
    (L J : Submodule R M) (_hLJ : L ≤ J) :
    Module.annihilator R (J ⧸ Submodule.comap J.subtype L) = L.colon (J : Set M) := by
  let e := quotientToMapRange (L := L) (J := J)
  exact e.annihilator_eq.trans (submodule_annihilator_map_mkQ_eq_colon (L := L) (J := J))

/-- Ideal-specialized form of `Ann(J / L) = L : J`. -/
theorem ideal_annihilator_quotient_eq_colon
    (L J : Ideal R) (hLJ : L ≤ J) :
    Module.annihilator R ((J : Submodule R R) ⧸ Submodule.comap J.subtype (L : Submodule R R)) =
      L.colon J := by
  simpa using
    submodule_annihilator_quotient_eq_colon
      (R := R) (L := (L : Submodule R R)) (J := (J : Submodule R R)) hLJ

end Algebra
end ReesDefects
