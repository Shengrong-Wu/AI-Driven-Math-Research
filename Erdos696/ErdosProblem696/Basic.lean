import Mathlib

open Filter
open scoped BigOperators

namespace ErdosProblem696

/-- The `k`-fold iterated natural logarithm, as a real-valued function. -/
noncomputable def iterLog (k : ℕ) (x : ℝ) : ℝ :=
  (fun y : ℝ => Real.log y)^[k] x

/--
The usual `log_*` function from the problem statement.  It is defined by the
same minimization as in the text when the witnessing set is nonempty, and as
`0` otherwise.  The external analytic input below is stated only in the range
where this function is positive.
-/
noncomputable def logStarNat (n : ℕ) : ℕ :=
  by
    classical
    exact if h : ∃ k : ℕ, iterLog k (n : ℝ) ≤ 1 then Nat.find h else 0

noncomputable def logStar (n : ℕ) : ℝ :=
  logStarNat n

/-- A prime chain of length `ℓ` among the prime divisors of `n`. -/
def PrimeChain (n ℓ : ℕ) : Prop :=
  ∃ p : ℕ → ℕ,
    (∀ i, i < ℓ → Nat.Prime (p i) ∧ p i ∣ n) ∧
      ∀ i, i + 1 < ℓ → p i < p (i + 1) ∧ p (i + 1) ≡ 1 [MOD p i]

/-- A divisor chain of length `u` among the positive divisors of `n`. -/
def DivisorChain (n u : ℕ) : Prop :=
  ∃ d : ℕ → ℕ,
    (∀ i, i < u → 0 < d i ∧ d i ∣ n) ∧
      ∀ i, i + 1 < u → d i < d (i + 1) ∧ d (i + 1) ≡ 1 [MOD d i]

/--
The function `h(n)`: the largest prime-chain length.  For `n > 0` every such
chain has length at most `n`, so this finite maximum matches the informal
definition on the number-theoretic range of interest.
-/
noncomputable def h (n : ℕ) : ℕ :=
  by
    classical
    exact ((Finset.range (n + 1)).filter fun ℓ => PrimeChain n ℓ).sup id

/--
The function `H(n)`: the largest divisor-chain length.  For `n > 0` every
chain has length at most `n`, so this finite maximum matches the informal
definition on the number-theoretic range of interest.
-/
noncomputable def H (n : ℕ) : ℕ :=
  by
    classical
    exact ((Finset.range (n + 1)).filter fun u => DivisorChain n u).sup id

lemma primeChain.to_divisorChain {n ℓ : ℕ} (hc : PrimeChain n ℓ) :
    DivisorChain n ℓ := by
  rcases hc with ⟨p, hp, hstep⟩
  refine ⟨p, ?_, hstep⟩
  intro i hi
  exact ⟨(hp i hi).1.pos, (hp i hi).2⟩

/-- Count the members of a predicate up to `x`, using `1 ≤ n ≤ x`. -/
noncomputable def countUpTo (P : ℕ → Prop) (x : ℕ) : ℕ :=
  by
    classical
    exact ((Finset.Icc 1 x).filter P).card

/-- A set of natural numbers has asymptotic density zero. -/
def HasDensityZero (E : Set ℕ) : Prop :=
  Tendsto (fun x : ℕ => (countUpTo (fun n => n ∈ E) x : ℝ) / (x : ℝ)) atTop (nhds 0)

/-- `P` holds for almost all natural numbers, in the natural-density sense. -/
def AlmostAll (P : ℕ → Prop) : Prop :=
  ∃ E : Set ℕ, HasDensityZero E ∧ ∀ n, n ∉ E → P n

lemma AlmostAll.mono {P Q : ℕ → Prop} (hPQ : ∀ n, P n → Q n) :
    AlmostAll P → AlmostAll Q := by
  rintro ⟨E, hE, hP⟩
  exact ⟨E, hE, fun n hnE => hPQ n (hP n hnE)⟩

/--
The full-density bounds established by the analytic proof.  The positivity
of `logStar` is included so that the final ratio bound is a purely algebraic
consequence.
-/
def ErdosBounds (c C : ℝ) : Prop :=
  0 < c ∧ c < C ∧
    AlmostAll fun n =>
      0 < logStar n ∧
        c * logStar n ≤ (h n : ℝ) ∧
          (h n : ℝ) ≤ (H n : ℝ) ∧
            (H n : ℝ) ≤ C * logStar n

/-- Two real-valued arithmetic functions are comparable up to constants almost everywhere. -/
def AlmostAllAsymp (f g : ℕ → ℝ) : Prop :=
  ∃ c C : ℝ, 0 < c ∧ c < C ∧ AlmostAll fun n => c * g n ≤ f n ∧ f n ≤ C * g n

/--
External analytic input: the lower-bound construction, upper-bound exclusion
of bad divisor edges, and transfer from `x` to `n` prove these constants exist.
-/
axiom erdos696_bounds : ∃ c C : ℝ, ErdosBounds c C

theorem erdos696_h_asymp_logStar :
    AlmostAllAsymp (fun n => (h n : ℝ)) logStar := by
  rcases erdos696_bounds with ⟨c, C, hc, hcC, hAlmost⟩
  refine ⟨c, C, hc, hcC, ?_⟩
  refine hAlmost.mono ?_
  intro n hn
  exact ⟨hn.2.1, le_trans hn.2.2.1 hn.2.2.2⟩

theorem erdos696_H_asymp_logStar :
    AlmostAllAsymp (fun n => (H n : ℝ)) logStar := by
  rcases erdos696_bounds with ⟨c, C, hc, hcC, hAlmost⟩
  refine ⟨c, C, hc, hcC, ?_⟩
  refine hAlmost.mono ?_
  intro n hn
  exact ⟨le_trans hn.2.1 hn.2.2.1, hn.2.2.2⟩

theorem erdos696_ratio_bounded_for_almost_all :
    ∃ M : ℝ, 0 < M ∧ AlmostAll fun n => (H n : ℝ) / (h n : ℝ) ≤ M := by
  rcases erdos696_bounds with ⟨c, C, hc, hcC, hAlmost⟩
  have hCpos : 0 < C := lt_trans hc hcC
  refine ⟨C / c, div_pos hCpos hc, ?_⟩
  refine hAlmost.mono ?_
  intro n hn
  rcases hn with ⟨hlog_pos, h_lower, _hhH, H_upper⟩
  have hden_pos : 0 < (h n : ℝ) := lt_of_lt_of_le (mul_pos hc hlog_pos) h_lower
  have hnum_nonneg : 0 ≤ C * logStar n := mul_nonneg hCpos.le hlog_pos.le
  calc
    (H n : ℝ) / (h n : ℝ) ≤ (C * logStar n) / (h n : ℝ) := by
      exact div_le_div_of_nonneg_right H_upper hden_pos.le
    _ ≤ (C * logStar n) / (c * logStar n) := by
      exact div_le_div_of_nonneg_left hnum_nonneg (mul_pos hc hlog_pos) h_lower
    _ = C / c := by
      field_simp [hc.ne', hlog_pos.ne']

end ErdosProblem696
