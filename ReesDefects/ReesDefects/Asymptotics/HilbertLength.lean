import Mathlib.Order.Filter.Basic
import Mathlib.RingTheory.Polynomial.Basic
import ReesDefects.Asymptotics.GradedSupport
import ReesDefects.Foundations.ScalarTorsion

/-!
# ReesDefects.Asymptotics.HilbertLength

Abstract Hilbert-growth package for the asymptotic layer.
-/

noncomputable section

namespace ReesDefects
namespace Asymptotics

universe u

open Filter
open ReesDefects.FirstCoefficient
open ReesDefects.Foundations

variable {A : Type u} [CommRing A]
variable {I : Ideal A}

/-- A lightweight polynomial growth predicate for nat-valued functions on degrees. -/
def PolynomialGrowthLE (degree : ℕ) (f : ℕ → ℕ) : Prop :=
  ∃ C : ℕ, ∀ n, f n ≤ C * (n + 1) ^ degree

/-- Eventual agreement with a polynomial of a fixed degree. -/
def EventuallyPolynomialOfDegree (degree : ℕ) (f : ℕ → ℕ) : Prop :=
  ∃ p : Polynomial ℕ, p.natDegree = degree ∧
    ∀ᶠ n : ℕ in atTop, f n = p.eval n

/-- The two Hilbert-growth inputs from roadmap Section O, isolated behind a single interface. -/
structure HilbertGrowth (F : FirstCoefficientLike A I) (d : ℕ) : Prop where
  dLength_growth :
    PolynomialGrowthLE (d - 2) (fun n => finLengthNat A (F.D n))
  kappa_growth :
    ∀ r : A,
      EventuallyPolynomialOfDegree (d - 1)
        (fun n => finLengthNat A (torsionBy A (F.C n) r))

namespace HilbertGrowth

variable {F : FirstCoefficientLike A I} {d : ℕ}

/-- The packaged big-O style bound for the lengths `λ(D_n)`. -/
theorem d_length_isBigO (H : HilbertGrowth F d) :
    PolynomialGrowthLE (d - 2) (fun n => finLengthNat A (F.D n)) :=
  HilbertGrowth.dLength_growth H

/-- The packaged eventual polynomial growth for the torsion slices `λ(C_n[r])`. -/
theorem kappa_eventuallyPolynomial (H : HilbertGrowth F d) (r : A) :
    EventuallyPolynomialOfDegree (d - 1)
      (fun n => finLengthNat A (torsionBy A (F.C n) r)) :=
  HilbertGrowth.kappa_growth H r

end HilbertGrowth

end Asymptotics
end ReesDefects
