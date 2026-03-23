import Certificates.CertificateParser

namespace NullFrame
namespace Certificates

def approvedRewriteVocabulary : List String :=
  [ "expand_connection_rewrite_4"
  , "expand_connection_rewrite_3"
  , "expand_connection_rewrite_A"
  , "expand_bianchi_second_seed"
  , "expand_bianchi_divfree_seed"
  , "collect_nablaA_nu_terms"
  , "collect_ricci_coefficient_terms"
  , "normalize_tau_sigma_alpha_blocks"
  ]

def monomialWellFormed (m : TensorMonomial) : Bool :=
  m.coeffDen > 0

def normalFormIsZero (nf : NormalForm) : Bool :=
  nf.isEmpty || nf.all (fun m => m.coeffNum == 0)

def isAnnotationStep (s : String) : Bool :=
  s.startsWith "NORMAL_FORM_VANISHES:"

def approvedSteps (steps : List String) : Bool :=
  steps.all fun s => s ∈ approvedRewriteVocabulary || isAnnotationStep s

def checkCertificate (expectedAxiom : String) (expectedKind : TensorKind)
    (cert : ParsedCertificate) : Bool :=
  cert.version == 2 &&
  cert.axiomName == expectedAxiom &&
  cert.targetKind == "difference_zero" &&
  cert.tensorKind == expectedKind &&
  cert.normalFormVanishes &&
  approvedSteps cert.rewriteSteps &&
  cert.normalForm.all monomialWellFormed &&
  normalFormIsZero cert.normalForm &&
  !cert.verifiedBy.isEmpty

end Certificates
end NullFrame
