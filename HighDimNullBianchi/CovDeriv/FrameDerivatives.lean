import Mathlib.Algebra.Module.LinearMap.Basic
import NullFrame.RicciCoefficients

namespace NullFrame

abbrev Tensor4 (𝕜 : Type _) (n : Nat) := Fin n → Fin n → Fin n → Fin n → 𝕜

structure FrameOperatorBundle (𝕜 : Type _) [Field 𝕜] (n : Nat) where
  onScalar : 𝕜 →ₗ[𝕜] 𝕜
  onTensor1 : Tensor1 𝕜 n →ₗ[𝕜] Tensor1 𝕜 n
  onTensor2 : Tensor2 𝕜 n →ₗ[𝕜] Tensor2 𝕜 n
  onTensor3 : Tensor3 𝕜 n →ₗ[𝕜] Tensor3 𝕜 n
  onTensor4 : Tensor4 𝕜 n →ₗ[𝕜] Tensor4 𝕜 n

structure FrameDerivData (𝕜 : Type _) [Field 𝕜] extends RicciData 𝕜 where
  nabla3 : FrameOperatorBundle 𝕜 n
  nabla4 : FrameOperatorBundle 𝕜 n
  nablaA : Fin n → FrameOperatorBundle 𝕜 n
  nabla3_scalar_mul_tensor1 :
    ∀ a v, nabla3.onTensor1 (a • v) = nabla3.onScalar a • v + a • nabla3.onTensor1 v
  nabla4_scalar_mul_tensor1 :
    ∀ a v, nabla4.onTensor1 (a • v) = nabla4.onScalar a • v + a • nabla4.onTensor1 v
  nablaA_scalar_mul_tensor1 :
    ∀ A a v,
      (nablaA A).onTensor1 (a • v) =
        (nablaA A).onScalar a • v + a • (nablaA A).onTensor1 v
  nabla3_scalar_mul_tensor2 :
    ∀ a t, nabla3.onTensor2 (a • t) = nabla3.onScalar a • t + a • nabla3.onTensor2 t
  nabla4_scalar_mul_tensor2 :
    ∀ a t, nabla4.onTensor2 (a • t) = nabla4.onScalar a • t + a • nabla4.onTensor2 t
  nablaA_scalar_mul_tensor2 :
    ∀ A a t,
      (nablaA A).onTensor2 (a • t) =
        (nablaA A).onScalar a • t + a • (nablaA A).onTensor2 t
  nabla3_scalar_mul_tensor3 :
    ∀ a t, nabla3.onTensor3 (a • t) = nabla3.onScalar a • t + a • nabla3.onTensor3 t
  nabla4_scalar_mul_tensor3 :
    ∀ a t, nabla4.onTensor3 (a • t) = nabla4.onScalar a • t + a • nabla4.onTensor3 t
  nablaA_scalar_mul_tensor3 :
    ∀ A a t,
      (nablaA A).onTensor3 (a • t) =
        (nablaA A).onScalar a • t + a • (nablaA A).onTensor3 t
  nabla3_scalar_mul_tensor4 :
    ∀ a t, nabla3.onTensor4 (a • t) = nabla3.onScalar a • t + a • nabla3.onTensor4 t
  nabla4_scalar_mul_tensor4 :
    ∀ a t, nabla4.onTensor4 (a • t) = nabla4.onScalar a • t + a • nabla4.onTensor4 t
  nablaA_scalar_mul_tensor4 :
    ∀ A a t,
      (nablaA A).onTensor4 (a • t) =
        (nablaA A).onScalar a • t + a • (nablaA A).onTensor4 t
  nabla3_tangentialMetric :
    nabla3.onTensor2 (NullFrameData.tangentialMetric toNullFrameData) = 0
  nabla4_tangentialMetric :
    nabla4.onTensor2 (NullFrameData.tangentialMetric toNullFrameData) = 0
  nablaA_tangentialMetric :
    ∀ A, (nablaA A).onTensor2 (NullFrameData.tangentialMetric toNullFrameData) = 0

namespace FrameDerivData

variable {𝕜 : Type _} [Field 𝕜] (F : FrameDerivData 𝕜)

abbrev nabla3Scalar : 𝕜 →ₗ[𝕜] 𝕜 := F.nabla3.onScalar
abbrev nabla4Scalar : 𝕜 →ₗ[𝕜] 𝕜 := F.nabla4.onScalar
abbrev nablaAScalar (A : Fin F.n) : 𝕜 →ₗ[𝕜] 𝕜 := (F.nablaA A).onScalar

abbrev nabla3Tensor4 : Tensor4 𝕜 F.n →ₗ[𝕜] Tensor4 𝕜 F.n := F.nabla3.onTensor4
abbrev nabla4Tensor4 : Tensor4 𝕜 F.n →ₗ[𝕜] Tensor4 𝕜 F.n := F.nabla4.onTensor4
abbrev nablaATensor4 (A : Fin F.n) : Tensor4 𝕜 F.n →ₗ[𝕜] Tensor4 𝕜 F.n :=
  (F.nablaA A).onTensor4

end FrameDerivData

end NullFrame
