import ReesDefects.Asymptotics.HilbertLength

/-!
# ReesDefects.Asymptotics.DegreeBounds

Paper-facing degreewise asymptotic wrappers extracted from the Hilbert-growth package.
-/

noncomputable section

namespace ReesDefects
namespace Asymptotics
namespace DegreeBounds

universe u

open ReesDefects.FirstCoefficient
open ReesDefects.Foundations

variable {A : Type u} [CommRing A]
variable {I : Ideal A}
variable (F : FirstCoefficientLike A I)

/-- Paper notation for the degreewise defect lengths `d(n) = λ(D_n)`. -/
abbrev dFunction (n : ℕ) : ℕ :=
  finLengthNat A (F.D n)

/-- Paper notation for the torsion-slice lengths `κ_r(n) = λ(C_n[r])`. -/
abbrev kappaFunction (r : A) (n : ℕ) : ℕ :=
  finLengthNat A (torsionBy A (F.C n) r)

variable {d : ℕ}

/-- The degreewise defect lengths satisfy the packaged `O(n^{d-2})` bound. -/
theorem dFunction_growth (H : HilbertGrowth F d) :
    PolynomialGrowthLE (d - 2) (dFunction F) :=
  HilbertGrowth.d_length_isBigO H

/-- The torsion-slice lengths satisfy the packaged eventual polynomial growth law. -/
theorem kappaFunction_eventuallyPolynomial (H : HilbertGrowth F d) (r : A) :
    EventuallyPolynomialOfDegree (d - 1) (kappaFunction F r) :=
  HilbertGrowth.kappa_eventuallyPolynomial H r

end DegreeBounds
end Asymptotics
end ReesDefects
