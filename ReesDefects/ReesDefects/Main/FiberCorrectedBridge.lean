import ReesDefects.Fiber.RightExactBridge
import ReesDefects.Fiber.TorSequenceFuture
import ReesDefects.Main.ConcreteTheoremA45

/-!
# ReesDefects.Main.FiberCorrectedBridge

Theorem B, packaged behind the explicit fiber-side and asymptotic hypotheses that remain
abstract in the current project.
-/

noncomputable section

namespace ReesDefects
namespace Main
namespace FiberCorrectedBridge

universe u

open ReesDefects.Asymptotics

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Bundled fiber-side inputs and asymptotic outputs for the corrected bridge theorem. -/
structure FiberCorrectionData
    (P : ConcreteTheoremA123.ConcretePackage A I)
    (F : Fiber.FiberEquationData A I) (d : ℕ) (r : A) where
  bridge : Fiber.HasRightExactBridge F
  futureTor : F.FutureTorSequenceData
  fiberEquationIdeal_eq_bot : F.fiberEquationIdeal = ⊥
  equationDefectBound :
    ∃ C : ℕ, ∀ n,
      P.equationDefectLength n ≤
        C * Foundations.finLengthNat A (P.asFirstCoefficientLike.D n)
  equationDefectGrowth :
    PolynomialGrowthLE (d - 2) (fun n => P.equationDefectLength n)
  kernelError : ℕ → ℕ
  kernelErrorGrowth : PolynomialGrowthLE (d - 2) kernelError
  kernelAsymptotic :
    ∀ n,
      P.toReducedComparisonData.kernelLength n r =
        Asymptotics.DegreeBounds.kappaFunction P.asFirstCoefficientLike r n + kernelError n
  cokernelError : ℕ → ℕ
  cokernelErrorGrowth : PolynomialGrowthLE (d - 2) cokernelError
  cokernelAsymptotic :
    ∀ n,
      P.toReducedComparisonData.cokernelLength n r =
        Asymptotics.DegreeBounds.kappaFunction P.asFirstCoefficientLike r n + cokernelError n

variable {P : ConcreteTheoremA123.ConcretePackage A I}
variable {F : Fiber.FiberEquationData A I}

/-- Theorem B: the equation-defect lengths are bounded by a constant multiple of `λ(D_n)`. -/
theorem theoremB_equationDefectBound
    {d : ℕ} {r : A} (T : FiberCorrectionData P F d r) :
    ∃ C : ℕ, ∀ n,
      P.equationDefectLength n ≤
        C * Foundations.finLengthNat A (P.asFirstCoefficientLike.D n) := by
  exact T.equationDefectBound
  -- [theorem_b_bound]
  -- CLOSE
  -- Expose the packaged fiber-corrected bound on the equation-defect length.

/-- Theorem B: the equation-defect lengths have degree at most `d - 2`. -/
theorem theoremB_equationDefectGrowth
    {d : ℕ} {r : A} (T : FiberCorrectionData P F d r) :
    PolynomialGrowthLE (d - 2) (fun n => P.equationDefectLength n) := by
  exact T.equationDefectGrowth
  -- [theorem_b_growth]
  -- CLOSE
  -- Expose the packaged asymptotic control on the equation-defect lengths.

/-- Theorem B: the kernel lengths differ from `κ_r(n)` by an error of degree at most `d - 2`. -/
theorem theoremB_kernelAsymptotic
    {d : ℕ} {r : A} (T : FiberCorrectionData P F d r) :
    ∃ ε : ℕ → ℕ,
      PolynomialGrowthLE (d - 2) ε ∧
        ∀ n,
          P.toReducedComparisonData.kernelLength n r =
            Asymptotics.DegreeBounds.kappaFunction P.asFirstCoefficientLike r n + ε n := by
  refine ⟨T.kernelError, T.kernelErrorGrowth, ?_⟩
  exact T.kernelAsymptotic
  -- [theorem_b_kernel]
  -- CLOSE
  -- Package the kernel asymptotic statement using an explicit error function.

/-- Theorem B: the cokernel lengths differ from `κ_r(n)` by an error of degree at most `d - 2`. -/
theorem theoremB_cokernelAsymptotic
    {d : ℕ} {r : A} (T : FiberCorrectionData P F d r) :
    ∃ ε : ℕ → ℕ,
      PolynomialGrowthLE (d - 2) ε ∧
        ∀ n,
          P.toReducedComparisonData.cokernelLength n r =
            Asymptotics.DegreeBounds.kappaFunction P.asFirstCoefficientLike r n + ε n := by
  refine ⟨T.cokernelError, T.cokernelErrorGrowth, ?_⟩
  exact T.cokernelAsymptotic
  -- [theorem_b_cokernel]
  -- CLOSE
  -- Package the cokernel asymptotic statement using an explicit error function.

end FiberCorrectedBridge
end Main
end ReesDefects
