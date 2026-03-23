import Certificates.Expr
import Lean.Data.Json.Parser

namespace NullFrame
namespace Certificates

open Lean

def parseCertificateJson (contents : String) : Except String ParsedCertificate := do
  let json ← Json.parse contents
  fromJson? json

def loadCertificate (path : System.FilePath) : IO (Except String ParsedCertificate) := do
  try
    let contents ← IO.FS.readFile path
    pure <| parseCertificateJson contents
  catch e =>
    pure <| .error e.toString

end Certificates
end NullFrame
