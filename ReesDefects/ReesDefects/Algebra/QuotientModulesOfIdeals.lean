import ReesDefects.Algebra.ColonAnnihilator

/-!
# ReesDefects.Algebra.QuotientModulesOfIdeals

Reusable quotient-module packaging for inclusions of ideals.
-/

noncomputable section

namespace ReesDefects
namespace Algebra

universe u

variable {R : Type u} [CommRing R]

namespace Ideal

/-- The quotient module attached to an inclusion of ideals `L ≤ J`,
viewed inside the ambient ring. -/
abbrev QuotientModule (L J : Ideal R) : Type u :=
  (J : Submodule R R) ⧸ Submodule.comap J.subtype (L : Submodule R R)

/-- The canonical linear equivalence from the ideal quotient module to the image of `J` in `R/L`. -/
noncomputable abbrev quotientToMap (L J : Ideal R) :=
  quotientToMapRange (R := R) (L := (L : Submodule R R)) (J := (J : Submodule R R))

/-- Ideal-specialized annihilator-colon identity for the quotient module `J / L`. -/
theorem annihilator_quotientModule_eq_colon (L J : Ideal R) (hLJ : L ≤ J) :
    Module.annihilator R (QuotientModule L J) = L.colon J := by
  simpa [QuotientModule] using ideal_annihilator_quotient_eq_colon (R := R) L J hLJ

/-- The quotient module `J / L` is nontrivial exactly when the ideal inclusion is strict. -/
theorem quotientModule_nontrivial_iff (L J : Ideal R) (hLJ : L ≤ J) :
    Nontrivial (QuotientModule L J) ↔ L ≠ J := by
  change Nontrivial ((J : Submodule R R) ⧸ Submodule.comap J.subtype (L : Submodule R R)) ↔
    (L : Submodule R R) ≠ (J : Submodule R R)
  rw [Submodule.Quotient.nontrivial_iff]
  constructor
  · intro h hEq
    apply h
    rw [Submodule.comap_subtype_eq_top]
    exact hEq.ge
  · intro h hTop
    apply h
    have hJL : (J : Submodule R R) ≤ (L : Submodule R R) := by
      rw [← Submodule.comap_subtype_eq_top]
      exact hTop
    exact le_antisymm hLJ hJL

end Ideal

end Algebra
end ReesDefects
