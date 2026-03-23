import Lean.Data.Json.FromToJson
import Mathlib.Algebra.Group.Defs

namespace NullFrame
namespace Certificates

inductive TensorKind where
  | scalar
  | tensor1
  | tensor2
  | tensor3
  | tensor4
  deriving Inhabited, Repr, BEq, DecidableEq, Lean.ToJson, Lean.FromJson

structure TensorAtom where
  head : String
  slots : List String
  deriving Inhabited, Repr, BEq, DecidableEq, Lean.ToJson, Lean.FromJson

structure TensorMonomial where
  coeffNum : Int
  coeffDen : Nat
  factors : List TensorAtom
  deriving Inhabited, Repr, BEq, DecidableEq, Lean.ToJson, Lean.FromJson

abbrev NormalForm := List TensorMonomial

structure ParsedCertificate where
  version : Nat
  axiomName : String
  targetKind : String
  tensorKind : TensorKind
  normalForm : NormalForm
  rewriteSteps : List String
  verifiedBy : String
  normalFormVanishes : Bool
  deriving Inhabited, Repr, BEq, DecidableEq, Lean.ToJson, Lean.FromJson

structure NormalFormSemantics (α : Type _) [AddMonoid α] where
  evalMonomial : TensorMonomial → α
  zero_coeff : ∀ m, m.coeffNum = 0 → evalMonomial m = 0

def evalNormalForm {α : Type _} [AddMonoid α]
    (S : NormalFormSemantics α) : NormalForm → α
  | [] => 0
  | m :: ms => S.evalMonomial m + evalNormalForm S ms

set_option linter.unnecessarySimpa false in
theorem evalNormalForm_eq_zero_of_forall_coeff_zero
    {α : Type _} [AddMonoid α]
    (S : NormalFormSemantics α) (nf : NormalForm)
    (h : ∀ m ∈ nf, m.coeffNum = 0) :
    evalNormalForm S nf = 0 := by
  induction nf with
  | nil =>
      simp [evalNormalForm]
  | cons m ms ih =>
      have hm : m.coeffNum = 0 := h m (by simp)
      have hms : ∀ m' ∈ ms, m'.coeffNum = 0 := by
        intro m' hm'
        exact h m' (by simp [hm'])
      have hzero : (0 : α) + 0 = 0 := by
        exact zero_add (0 : α)
      simpa [evalNormalForm, S.zero_coeff m hm, ih hms] using hzero

theorem evalNormalForm_eq_zero_of_normalFormIsZero
    {α : Type _} [AddMonoid α]
    (S : NormalFormSemantics α) {nf : NormalForm}
    (h : (nf.isEmpty || nf.all (fun m => m.coeffNum == 0)) = true) :
    evalNormalForm S nf = 0 := by
  by_cases hnil : nf = []
  · simp [hnil, evalNormalForm]
  · have hAll : nf.all (fun m => m.coeffNum == 0) = true := by
      have hempty : nf.isEmpty = false := by
        simp [hnil]
      simpa [hempty] using h
    apply evalNormalForm_eq_zero_of_forall_coeff_zero S nf
    rw [List.all_eq_true] at hAll
    intro m hm
    have hm0 : (m.coeffNum == 0) = true := hAll m hm
    simpa using hm0

structure CertifiedEquality (α : Type _) [AddMonoid α] [Sub α] where
  expectedAxiom : String
  expectedKind : TensorKind
  cert : ParsedCertificate
  semantics : NormalFormSemantics α
  lhs : α
  rhs : α
  reifiesDifference : evalNormalForm semantics cert.normalForm = lhs - rhs

end Certificates
end NullFrame
