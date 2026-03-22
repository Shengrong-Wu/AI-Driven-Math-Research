import ReesDefects.FirstCoefficient.ConcreteDefinition
import ReesDefects.FirstCoefficient.GlobalPackage
import ReesDefects.Main.AbstractDefectDecomposition
import ReesDefects.Main.AbstractIndexFormula

/-!
# ReesDefects.Main.ConcreteTheoremA123

Theorem A(1)–(3) in the paper's notation, relative to the axiomatized first-coefficient package.
-/

noncomputable section

namespace ReesDefects
namespace Main
namespace ConcreteTheoremA123

universe u v

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- A concrete global package whose lower family agrees with Puthenpurakal's first coefficient
ideal `(I^n)_1`. -/
structure ConcretePackage (A : Type*) [CommRing A] (I : Ideal A)
    extends FirstCoefficient.GlobalPackage A I where
  U_eq_puthenpurakal :
    ∀ n, U n = FirstCoefficient.puthenpurakalFirstCoefficientIdeal A I n

namespace ConcretePackage

variable (P : ConcretePackage A I)

/-- Forget a concrete package to the roadmap first-coefficient interface. -/
abbrev asFirstCoefficientLike : FirstCoefficient.FirstCoefficientLike A I :=
  P.toGlobalPackage.asFirstCoefficientLike

/-- Forget a concrete package to the abstract degreewise defect package. -/
abbrev toDegreewiseDefectPackage : Intermediate.DegreewiseDefectPackage A I :=
  P.toGlobalPackage.toDegreewiseDefectPackage

/-- Forget a concrete package to the abstract reduced-comparison package. -/
abbrev toReducedComparisonData : Intermediate.ReducedComparisonData A I :=
  P.toGlobalPackage.toReducedComparisonData

/-- The lower family agrees with the intended first coefficient ideal notation. -/
theorem U_eq_puthenpurakal_apply (n : ℕ) :
    P.U n = FirstCoefficient.puthenpurakalFirstCoefficientIdeal A I n :=
  P.U_eq_puthenpurakal n

end ConcretePackage

/-- Hypothesis package for the concrete identification
`coker φ_n^r = ν_r(n)`. -/
class HasCokernelNuIdentification (P : ConcretePackage A I) : Prop where
  cokernel_eq_nuDefect :
    ∀ n r,
      P.toReducedComparisonData.cokernelLength n r =
        P.toDegreewiseDefectPackage.nuDefect n r

variable (P : ConcretePackage A I)

/-- Theorem A(1): the reduced comparison map satisfies the abstract index formula. -/
theorem theoremA1 (n : ℕ) (r : A) :
    P.toReducedComparisonData.kernelLength n r =
      P.toReducedComparisonData.cokernelLength n r + P.equationDefectLength n := by
  exact
    AbstractIndexFormula.kernelLength_eq_cokernelLength_add_equationDefectLength
      (P := P.toReducedComparisonData) n r
  -- [theorem_a1]
  -- IN
  -- Specialize the abstract index formula to the concrete first-coefficient package.

/-- Theorem A(2), first clause: the cokernel length agrees with `ν_r(n)`. -/
theorem theoremA2_cokernel [HasCokernelNuIdentification P] (n : ℕ) (r : A) :
    P.toReducedComparisonData.cokernelLength n r =
      P.toDegreewiseDefectPackage.nuDefect n r := by
  exact HasCokernelNuIdentification.cokernel_eq_nuDefect (P := P) n r
  -- [theorem_a2_cokernel]
  -- CLOSE
  -- Read the cokernel-`ν_r` identification from the dedicated hypothesis interface.

/-- Theorem A(2), second clause: `ν_r(n)` decomposes as `d_r(n) + κ_r(n) - τ_r(n)`. -/
theorem theoremA2_defectDecomposition (n : ℕ) (r : A) :
    P.toDegreewiseDefectPackage.nuDefect n r =
      P.toDegreewiseDefectPackage.dDefect n r +
        P.toDegreewiseDefectPackage.kappaDefect n r -
          P.toDegreewiseDefectPackage.tauIntersectionDefect n r := by
  exact
    AbstractDefectDecomposition.nu_eq_d_add_kappa_sub_tauIntersection
      (P := P.toDegreewiseDefectPackage) n r
  -- [theorem_a2_decomposition]
  -- IN
  -- Invoke the abstract defect decomposition for the concrete package.

/-- Theorem A(3): the interaction term is the explicit intersection quotient. -/
theorem theoremA3_interactionTerm (n : ℕ) (r : A) :
    P.toDegreewiseDefectPackage.tauDefect n r =
      P.toDegreewiseDefectPackage.tauIntersectionDefect n r := by
  exact
    AbstractDefectDecomposition.tau_eq_tauIntersection
      (P := P.toDegreewiseDefectPackage) n r
  -- [theorem_a3]
  -- IN
  -- Reuse the abstract interaction-term identification for the concrete package.

end ConcreteTheoremA123
end Main
end ReesDefects
