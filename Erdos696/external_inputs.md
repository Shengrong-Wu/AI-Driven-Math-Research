# External Inputs for the Lean Formalization

The Lean file focuses on the formal logical structure of Erdős Problem 696.
The analytic number theory estimates from `proof.md` are collected into the
single axiom `erdos696_bounds`.

This axiom represents the following external inputs:

1. The Siegel-Walfisz consequence used to guarantee many primes
   `q ≡ 1 mod p` in each interval scale.
2. Chebyshev's bound for `theta(y) = sum_{q ≤ y} log q`.
3. Mertens' product bound for primes up to `y`.
4. The scale-parameter estimates proving `J ≍ log_* x`.
5. The density-zero exceptional-set argument for the lower bound on `h(n)`.
6. The bad-divisor-edge averaging and Markov argument for the upper bound on
   `H(n)`.
7. The transfer from bounds in terms of `log_* x` to bounds in terms of
   `log_* n`.

Concretely, `erdos696_bounds` asserts that there are constants `0 < c < C`
such that, for almost all `n` in the natural-density sense,

```text
0 < logStar n
c * logStar n ≤ h n
h n ≤ H n
H n ≤ C * logStar n
```

The final Lean theorem `erdos696_ratio_bounded_for_almost_all` proves from
this input alone that `H(n) / h(n)` is bounded for almost all `n`, formalizing
the concluding logic of the proof.
