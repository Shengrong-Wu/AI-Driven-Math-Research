import ReesDefects.Asymptotics.DegreeBounds
import ReesDefects.Main.ConcreteTheoremA123

/-!
# ReesDefects.Main.ConcreteTheoremA45

Theorem A(4)–(5), isolated behind the abstract asymptotic inputs carried from Phase 9.
-/

noncomputable section

namespace ReesDefects
namespace Main
namespace ConcreteTheoremA45

universe u

open ReesDefects.Asymptotics

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- Packaged asymptotic detection statements for the `R_1` criterion in Theorem A(4). -/
class HasAsymptoticDetection
    (P : ConcreteTheoremA123.ConcretePackage A I) (d : ℕ) (r : A) : Prop where
  nu_growth_if_r1 :
    FirstCoefficient.ReesR1 A I →
      PolynomialGrowthLE (d - 2) (fun n => P.toDegreewiseDefectPackage.nuDefect n r)
  nu_eventuallyPolynomial_if_not_r1 :
    ¬ FirstCoefficient.ReesR1 A I →
      EventuallyPolynomialOfDegree (d - 1) (fun n => P.toDegreewiseDefectPackage.nuDefect n r)

/-- Packaged consequences of the hypothesis `𝓓 = 0` used in Theorem A(5). -/
class HasTrivialDConsequences
    (P : ConcreteTheoremA123.ConcretePackage A I) (r : A) : Prop where
  dDefect_eq_zero : ∀ n, P.toDegreewiseDefectPackage.dDefect n r = 0
  tauIntersectionDefect_eq_zero :
    ∀ n, P.toDegreewiseDefectPackage.tauIntersectionDefect n r = 0

variable (P : ConcreteTheoremA123.ConcretePackage A I)

/-- Theorem A(4), `R_1` direction: `ν_r(n)` has degree at most `d - 2`. -/
theorem theoremA4_r1_implies_low_degree
    {d : ℕ} {r : A} [HasAsymptoticDetection P d r]
    (hR1 : FirstCoefficient.ReesR1 A I) :
    PolynomialGrowthLE (d - 2) (fun n => P.toDegreewiseDefectPackage.nuDefect n r) := by
  exact HasAsymptoticDetection.nu_growth_if_r1 (P := P) (d := d) (r := r) hR1
  -- [theorem_a4_forward]
  -- CLOSE
  -- Read the low-degree `R_1` consequence from the asymptotic detection interface.

/-- Theorem A(4), non-`R_1` direction: `ν_r(n)` is eventually polynomial of degree `d - 1`. -/
theorem theoremA4_not_r1_implies_high_degree
    {d : ℕ} {r : A} [HasAsymptoticDetection P d r]
    (hNotR1 : ¬ FirstCoefficient.ReesR1 A I) :
    EventuallyPolynomialOfDegree (d - 1)
      (fun n => P.toDegreewiseDefectPackage.nuDefect n r) := by
  exact
    HasAsymptoticDetection.nu_eventuallyPolynomial_if_not_r1
      (P := P) (d := d) (r := r) hNotR1
  -- [theorem_a4_backward]
  -- CLOSE
  -- Read the non-`R_1` asymptotic behavior from the packaged hypotheses.

/-- Theorem A(5): if `𝓓 = 0`, then `d_r(n) = 0`, `τ_r(n) = 0`, and `ν_r(n) = κ_r(n)`. -/
theorem theoremA5
    {r : A} [HasTrivialDConsequences P r]
    (n : ℕ) :
    P.toDegreewiseDefectPackage.dDefect n r = 0 ∧
      P.toDegreewiseDefectPackage.tauIntersectionDefect n r = 0 ∧
        P.toDegreewiseDefectPackage.nuDefect n r =
          P.toDegreewiseDefectPackage.kappaDefect n r := by
  constructor
  · exact HasTrivialDConsequences.dDefect_eq_zero (P := P) (r := r) n
  · constructor
    · exact HasTrivialDConsequences.tauIntersectionDefect_eq_zero (P := P) (r := r) n
    · calc
        P.toDegreewiseDefectPackage.nuDefect n r =
            P.toDegreewiseDefectPackage.dDefect n r +
              P.toDegreewiseDefectPackage.kappaDefect n r -
                P.toDegreewiseDefectPackage.tauIntersectionDefect n r := by
                  exact ConcreteTheoremA123.theoremA2_defectDecomposition (P := P) n r
        _ = 0 + P.toDegreewiseDefectPackage.kappaDefect n r - 0 := by
              rw [HasTrivialDConsequences.dDefect_eq_zero (P := P) (r := r) n,
                HasTrivialDConsequences.tauIntersectionDefect_eq_zero (P := P) (r := r) n]
        _ = P.toDegreewiseDefectPackage.kappaDefect n r := by simp
  -- [theorem_a5]
  -- CLOSE
  -- Combine the abstract defect decomposition with the packaged `𝓓 = 0` consequences.

end ConcreteTheoremA45
end Main
end ReesDefects
