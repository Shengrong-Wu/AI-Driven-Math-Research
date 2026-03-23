import Certificates.CertificateChecker
import Mathlib.Tactic.ITauto
import TauTransport.TauCertificate

namespace NullFrame
namespace Certificates

def certDir : System.FilePath :=
  System.FilePath.mk "Mathematica/certs"

def certPath (name : String) : System.FilePath :=
  certDir / s!"{name}.json"

def loadTau4Certificate : IO (Except String ParsedCertificate) :=
  loadCertificate (certPath "tau4")

def loadB8Tau3Certificate : IO (Except String ParsedCertificate) :=
  loadCertificate (certPath "b8_tau3")

def tau4CertificateJson : String :=
  include_str "../Mathematica/certs/tau4.json"

def b8Tau3CertificateJson : String :=
  include_str "../Mathematica/certs/b8_tau3.json"

def tau4PilotCertificateResult : Except String ParsedCertificate :=
  parseCertificateJson tau4CertificateJson

def b8Tau3PilotCertificateResult : Except String ParsedCertificate :=
  parseCertificateJson b8Tau3CertificateJson

def tau4PilotCertificate : ParsedCertificate :=
  match tau4PilotCertificateResult with
  | .ok cert => cert
  | .error _ => default

def b8Tau3PilotCertificate : ParsedCertificate :=
  match b8Tau3PilotCertificateResult with
  | .ok cert => cert
  | .error _ => default

def check_certificate (expectedAxiom : String) (expectedKind : TensorKind)
    (cert : ParsedCertificate) : Bool :=
  checkCertificate expectedAxiom expectedKind cert

theorem checked_certificate_vanishes
    {expectedAxiom : String} {expectedKind : TensorKind} {cert : ParsedCertificate}
    (h : check_certificate expectedAxiom expectedKind cert = true) :
    cert.normalFormVanishes = true := by
  cases hnf : cert.normalFormVanishes with
  | false =>
      simp [check_certificate, checkCertificate, hnf] at h
  | true =>
      simp

theorem checked_certificate_approved_steps
    {expectedAxiom : String} {expectedKind : TensorKind} {cert : ParsedCertificate}
    (h : check_certificate expectedAxiom expectedKind cert = true) :
    approvedSteps cert.rewriteSteps = true := by
  have h' := h
  simp [check_certificate, checkCertificate] at h'
  itauto

theorem checked_certificate_normal_form_well_formed
    {expectedAxiom : String} {expectedKind : TensorKind} {cert : ParsedCertificate}
    (h : check_certificate expectedAxiom expectedKind cert = true) :
    cert.normalForm.all monomialWellFormed = true := by
  have h' := h
  simp [check_certificate, checkCertificate] at h'
  have h'' : ∀ x ∈ cert.normalForm, monomialWellFormed x = true := by
    itauto
  rw [List.all_eq_true]
  exact h''

theorem checked_certificate_zero_normal_form
    {expectedAxiom : String} {expectedKind : TensorKind} {cert : ParsedCertificate}
    (h : check_certificate expectedAxiom expectedKind cert = true) :
    normalFormIsZero cert.normalForm = true := by
  have h' := h
  simp [check_certificate, checkCertificate] at h'
  itauto

theorem checked_certificate_interprets_to_zero
    {α : Type _} [AddMonoid α]
    (S : NormalFormSemantics α)
    {expectedAxiom : String} {expectedKind : TensorKind} {cert : ParsedCertificate}
    (h : check_certificate expectedAxiom expectedKind cert = true) :
    evalNormalForm S cert.normalForm = 0 := by
  apply evalNormalForm_eq_zero_of_normalFormIsZero S
  exact checked_certificate_zero_normal_form h

theorem certifiedEquality_sound
    {α : Type _} [AddGroup α]
    (E : CertifiedEquality α)
    (h : check_certificate E.expectedAxiom E.expectedKind E.cert = true) :
    E.lhs = E.rhs := by
  have hz : evalNormalForm E.semantics E.cert.normalForm = 0 :=
    checked_certificate_interprets_to_zero E.semantics h
  rw [E.reifiesDifference] at hz
  exact sub_eq_zero.mp hz

theorem checked_certificate_verified_by_nonempty
    {expectedAxiom : String} {expectedKind : TensorKind} {cert : ParsedCertificate}
    (h : check_certificate expectedAxiom expectedKind cert = true) :
    cert.verifiedBy.isEmpty = false := by
  have h' := h
  simp [check_certificate, checkCertificate] at h'
  itauto

theorem checked_certificate_metadata
    {expectedAxiom : String} {expectedKind : TensorKind} {cert : ParsedCertificate}
    (h : check_certificate expectedAxiom expectedKind cert = true) :
    cert.version = 2 ∧
      cert.axiomName = expectedAxiom ∧
      cert.targetKind = "difference_zero" ∧
      (cert.tensorKind == expectedKind) = true := by
  have h' := h
  simp [check_certificate, checkCertificate] at h'
  itauto

abbrev CertificateSpec := String × TensorKind

def pilotCertificateSpecs : List CertificateSpec :=
  [ ("tau4", .tensor2)
  , ("b8_tau3", .tensor2)
  ]

def oracleCertificateSpecs : List CertificateSpec :=
  [ ("conn_rewrite_4", .tensor4)
  , ("conn_rewrite_3", .tensor4)
  , ("conn_rewrite_A", .tensor4)
  , ("bianchi_second", .tensor4)
  , ("bianchi_divfree", .tensor4)
  , ("tau4", .tensor2)
  , ("b1_alpha3", .tensor2)
  , ("b2_beta4", .tensor1)
  , ("b3_nu4", .tensor3)
  , ("b4_nu3", .tensor3)
  , ("b5_r4", .tensor4)
  , ("b6_sigma4", .tensor2)
  , ("b7_r3", .tensor4)
  , ("b8_tau3", .tensor2)
  , ("b10_sigma3", .tensor2)
  , ("b11_unu4", .tensor3)
  , ("b12_unu3", .tensor3)
  , ("b13_ubeta3", .tensor1)
  , ("b14_ualpha4", .tensor2)
  ]

def validateCertificateFile (expectedAxiom : String) (expectedKind : TensorKind)
    (path : System.FilePath) : IO Bool := do
  let loaded ← loadCertificate path
  match loaded with
  | .ok cert => pure <| check_certificate expectedAxiom expectedKind cert
  | .error _ => pure false

def validateNamedCertificate (expectedAxiom : String) (expectedKind : TensorKind)
    (name : String) : IO Bool :=
  validateCertificateFile expectedAxiom expectedKind (certPath name)

def validateCertificateSpec (spec : CertificateSpec) : IO (String × Bool) := do
  let ok ← validateNamedCertificate spec.1 spec.2 spec.1
  pure (spec.1, ok)

def validateCertificateSpecs (specs : List CertificateSpec) : IO (List (String × Bool)) :=
  specs.mapM validateCertificateSpec

def validatePilotCertificates : IO (List (String × Bool)) :=
  validateCertificateSpecs pilotCertificateSpecs

def validateOracleCertificates : IO (List (String × Bool)) :=
  validateCertificateSpecs oracleCertificateSpecs

def allValidated (results : List (String × Bool)) : Bool :=
  results.all Prod.snd

def allPilotCertificatesValid : IO Bool := do
  pure <| allValidated (← validatePilotCertificates)

def allOracleCertificatesValid : IO Bool := do
  pure <| allValidated (← validateOracleCertificates)

def tau4_expansion_certificate
    {𝕜 : Type _} [Field 𝕜]
    (F : FrameDerivData 𝕜)
    (α : Alpha 𝕜 F.n)
    (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n)
    (Riem : Tensor4 𝕜 F.n) : ParsedCertificate :=
  { tau4PilotCertificate with
      rewriteSteps := (TauTransport.tau4_cert F α σ τ ν Riem).rewriteSteps
      verifiedBy := (TauTransport.tau4_cert F α σ τ ν Riem).verifiedBy }

set_option linter.style.nativeDecide false in
theorem tau4_expansion_certificate_ok :
    check_certificate "tau4" .tensor2 tau4PilotCertificate = true := by
  native_decide

theorem tau4_certificate_zero_normal_form :
    normalFormIsZero tau4PilotCertificate.normalForm = true :=
  checked_certificate_zero_normal_form tau4_expansion_certificate_ok

theorem tau4_certificate_approved_steps :
    approvedSteps tau4PilotCertificate.rewriteSteps = true :=
  checked_certificate_approved_steps tau4_expansion_certificate_ok

end Certificates
end NullFrame
