import ReesDefects.Foundations.FiniteLengthNat

/-!
# ReesDefects.Foundations.SubquotientBounds

Basic nat-valued length bounds for submodules, quotients, and subquotients.
-/

noncomputable section

namespace ReesDefects
namespace Foundations

universe u v

variable {R : Type u} {M : Type v}
variable [Ring R] [AddCommGroup M] [Module R M]

/-- A submodule has length bounded by the ambient module. -/
theorem finLengthNat_submodule_le (S : Submodule R M) (hM : IsFiniteLength R M) :
    finLengthNat R S ≤ finLengthNat R M := by
  exact ENat.toNat_le_toNat
    (Module.length_le_of_injective (S.subtype) (Submodule.subtype_injective _))
    (Module.length_ne_top_iff.mpr hM)

/-- A quotient has length bounded by the ambient module. -/
theorem finLengthNat_quotient_le (S : Submodule R M) (hM : IsFiniteLength R M) :
    finLengthNat R (M ⧸ S) ≤ finLengthNat R M := by
  exact ENat.toNat_le_toNat
    (Module.length_le_of_surjective (Submodule.mkQ S) (Submodule.mkQ_surjective _))
    (Module.length_ne_top_iff.mpr hM)

/-- A subquotient is bounded by the intermediate submodule. -/
theorem finLengthNat_subquotient_le_submodule (S T : Submodule R M) (hT : IsFiniteLength R T) :
    finLengthNat R (T ⧸ S.comap T.subtype) ≤ finLengthNat R T := by
  exact finLengthNat_quotient_le (R := R) (M := T) (S.comap T.subtype) hT

/-- A subquotient is bounded by the ambient module. -/
theorem finLengthNat_subquotient_le_ambient
    (S T : Submodule R M) (hM : IsFiniteLength R M) :
    finLengthNat R (T ⧸ S.comap T.subtype) ≤ finLengthNat R M := by
  have hT : IsFiniteLength R T := IsFiniteLength.of_injective hM (Submodule.subtype_injective _)
  exact le_trans
    (finLengthNat_subquotient_le_submodule (R := R) S T hT)
    (finLengthNat_submodule_le (R := R) T hM)

end Foundations
end ReesDefects
