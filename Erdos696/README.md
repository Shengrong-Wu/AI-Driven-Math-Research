# Erdős Problem 696

This problem was solved by an agentic framework developed by Wu Shengrong, with codex backend. Model: gpt-5.5 xhigh. Natural language proof was completely automated without any external prompt during the proof.

A Lean 4 / Mathlib formalization of the concluding logical step of Erdős
Problem 696: from the analytic bounds on prime and divisor chains, deduce
that the ratio `H(n) / h(n)` is bounded for almost all `n`.

## Problem statement

Let `h(n)` be the largest `ℓ` for which there is a sequence of primes

```
p_1 < p_2 < ⋯ < p_ℓ,
```

all dividing `n`, such that `p_{i+1} ≡ 1 (mod p_i)` for every `i`.
Let `H(n)` be the largest `u` for which there is a sequence of divisors

```
d_1 < d_2 < ⋯ < d_u
```

of `n` such that `d_{i+1} ≡ 1 (mod d_i)` for every `i`.

Then there are absolute constants `0 < c < C < ∞` such that, for almost
all `n`,

```
c · log_* n ≤ h(n) ≤ H(n) ≤ C · log_* n.
```

Consequently `h(n) ≍ log_* n`, `H(n) ≍ log_* n` for almost all `n`, and in
particular `H(n) / h(n)` does not tend to infinity for almost all `n`.

Here `log_* n = min { k ≥ 0 : log^(k) n ≤ 1 }` is the iterated logarithm.

## Directory layout

```
Erdos-Problem-696/
├── README.md                       -- this file
├── proof.md                        -- full informal proof
├── external_inputs.md              -- analytic facts bundled into the axiom
├── ErdosProblem696.lean            -- top-level import file
├── ErdosProblem696/
│   └── Basic.lean                  -- definitions, axiom, and final theorems
├── lakefile.toml                   -- Lake build configuration
├── lean-toolchain                  -- Lean 4 toolchain (leanprover/lean4:v4.28.0)
└── lake-manifest.json              -- resolved dependencies (Mathlib v4.28.0)
```

## Formalization level

The formalization targets the **logical / algebraic skeleton** of the proof.
All deep analytic number theory is collected into a single external axiom,
and the purely logical consequence is then proved formally.

### Formally proved

In `ErdosProblem696/Basic.lean`:

- Definitions: `iterLog`, `logStar`, `PrimeChain`, `DivisorChain`, `h`, `H`,
  `countUpTo`, `HasDensityZero`, `AlmostAll`, `ErdosBounds`, `AlmostAllAsymp`.
- `primeChain.to_divisorChain` — every prime chain is a divisor chain.
- `AlmostAll.mono` — monotonicity of the almost-all quantifier under
  pointwise implication.
- `erdos696_h_asymp_logStar` — `h(n) ≍ log_* n` for almost all `n`.
- `erdos696_H_asymp_logStar` — `H(n) ≍ log_* n` for almost all `n`.
- `erdos696_ratio_bounded_for_almost_all` — there exists `M > 0` such that
  `H(n) / h(n) ≤ M` for almost all `n`. This is the concluding statement
  of the problem.

### Taken as an external axiom

`erdos696_bounds : ∃ c C : ℝ, ErdosBounds c C`

asserts the existence of absolute constants `0 < c < C` such that, for
almost all `n`,

```
0 < log_* n,
c · log_* n ≤ h(n),
h(n)        ≤ H(n),
H(n)        ≤ C · log_* n.
```

This axiom bundles the following analytic inputs from `proof.md`
(see `external_inputs.md`):

1. Siegel–Walfisz consequence for primes `q ≡ 1 (mod p)` in each scale.
2. Chebyshev's bound `θ(y) = ∑_{q ≤ y} log q ≪ y`.
3. Mertens' product bound `∏_{p ≤ y} (1 − 1/p) ≪ 1 / log y`.
4. The scale-parameter estimate `J ≍ log_* x`.
5. The density-zero exceptional-set argument for the lower bound on `h(n)`.
6. The bad-divisor-edge averaging and Markov argument for the upper bound
   on `H(n)`.
7. The transfer from bounds in terms of `log_* x` to bounds in terms of
   `log_* n`.

None of these analytic facts is re-proved in Lean; the formalization's
contribution is the rigorous deduction of the final ratio bound from them.

## Building

```bash
lake build
```

Requires the toolchain pinned in `lean-toolchain` (Lean `v4.28.0`) and
Mathlib at the revision pinned in `lake-manifest.json`.
