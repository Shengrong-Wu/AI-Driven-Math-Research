import NullFrame.Basic
import NullFrame.TraceDecomp

namespace NullFrame

open NullFrame.TraceDecomp

structure RicciData (𝕜 : Type _) [Field 𝕜] extends NullFrameData 𝕜 where
  χ : SymmetricTwoTensor 𝕜 n
  χbar : SymmetricTwoTensor 𝕜 n
  η : Tensor1 𝕜 n
  ηbar : Tensor1 𝕜 n
  ζ : Tensor1 𝕜 n
  ω : 𝕜
  ωbar : 𝕜

namespace RicciData

variable {𝕜 : Type _} [Field 𝕜] (R : RicciData 𝕜)

def χHat : SymmetricTwoTensor 𝕜 R.n where
  toMatrix := tracefree R.tangentialMetric R.χ.toMatrix
  isSymm' := isSymm_tracefree (R.tangentialMetric_symm) R.χ.isSymm'

def χbarHat : SymmetricTwoTensor 𝕜 R.n where
  toMatrix := tracefree R.tangentialMetric R.χbar.toMatrix
  isSymm' := isSymm_tracefree (R.tangentialMetric_symm) R.χbar.isSymm'

end RicciData

end NullFrame
