# Interface Protocol: Mathematica (xAct) ↔ Lean 4 Certificate Bridge

## 1. Purpose

This document fixes the conventions that allow a Mathematica/xAct computation to
produce a certificate that `Certificates/CertificateFormat.lean` can consume.
It is the binding reference for both `Experiment4_Certificates.wl` and any future
certificate-generating notebook in this project.

---

## 2. Lean type signatures for the 19 oracle axioms

Each oracle axiom in `Certificates/MathematicaOracle.lean` has a Lean type signature
and a corresponding xAct claim. The table below records both.

| # | Lean axiom name       | Lean LHS type              | Lean RHS type            | Source notebook (existing)             |
|---|-----------------------|----------------------------|--------------------------|----------------------------------------|
| 1 | `conn_rewrite_4`      | `D4 Riem`                  | `∇₄ Riem + χηCorr`       | HigherDimNullStructureChecks.nb        |
| 2 | `conn_rewrite_3`      | `D3 Riem`                  | `∇₃ Riem + χ̄η̄Corr`      | HigherDimNullStructureChecks.nb        |
| 3 | `conn_rewrite_A`      | `DA Riem`                  | `∇_A Riem + ζCorr`       | HigherDimNullStructureChecks.nb        |
| 4 | `bianchi_second`      | `cyclicSum D_i D_j D_k R`  | `0`                      | HigherDimCombinedChecks.nb             |
| 5 | `bianchi_divfree`     | `divfreeSeedExpr DA ...`   | `0`                      | HigherDimCombinedChecks.nb             |
| 6 | `tau4`                | `∇₄ τ_{AB}`                | `tau4RHS`                | HigherDimCombinedChecks.nb             |
| 7 | `b1_alpha3`           | `∇₃ α_{AB}`                | `b1RHS`                  | Prop36BianchiExpandedChecks.nb (B1)    |
| 8 | `b2_beta4`            | `∇₄ β_A`                   | `b2RHS`                  | Prop36BianchiExpandedChecks.nb (B2)    |
| 9 | `b3_nu4`              | `∇₄ ν_{ABC}`               | `b3RHS`                  | Prop36BianchiExpandedChecks.nb (B3)    |
|10 | `b4_nu3`              | `∇₃ ν_{ABC}`               | `b4RHS`                  | Prop36BianchiExpandedChecks.nb (B4)    |
|11 | `b5_r4`               | `∇₄ R_{ABCD}`              | `b5RHS`                  | Prop36BianchiExpandedChecks.nb (B5)    |
|12 | `b6_sigma4`           | `∇₄ σ_{AB}`                | `b6RHS`                  | Prop36BianchiExpandedChecks.nb (B6)    |
|13 | `b7_r3`               | `∇₃ R_{ABCD}`              | `b7RHS`                  | Prop36BianchiExpandedChecks.nb (B7)    |
|14 | `b8_tau3`             | `∇₃ τ_{AB}`                | `b8RHS`                  | Prop36BianchiExpandedChecks.nb (B8)    |
|15 | `b10_sigma3`          | `∇₃ σ_{AB}`                | `b10RHS`                 | Prop36BianchiExpandedChecks.nb (B10)   |
|16 | `b11_unu4`            | `∇₄ ν̄_{ABC}`               | `b11RHS`                 | Prop36BianchiExpandedChecks.nb (B11)   |
|17 | `b12_unu3`            | `∇₃ ν̄_{ABC}`               | `b12RHS`                 | Prop36BianchiExpandedChecks.nb (B12)   |
|18 | `b13_ubeta3`          | `∇₃ β̄_A`                  | `b13RHS`                 | Prop36BianchiExpandedChecks.nb (B13)   |
|19 | `b14_ualpha4`         | `∇₄ ᾱ_{AB}`                | `b14RHS`                 | Prop36BianchiExpandedChecks.nb (B14)   |

*(B9 / `∇₃ρ` is KERNEL-proved as a trace consequence of B8; it has no oracle entry.)*

---

## 3. Normal form convention

An xAct tensor expression is in **project normal form** when:

1. All free tangential indices are drawn from `{a, b, c, d, e}` in left-to-right
   order of appearance in the Lean type.
2. Dummy (contracted) indices are drawn from `{i, j, k, l, m}` and do not clash
   with free indices.
3. Symmetrization `Sym_{AB}[X]` is expanded: `(1/2)(X_{AB} + X_{BA})`.
4. Tracefree parts are expanded: `χ̂_{AB} = χ_{AB} − (1/n)(tr χ) γ_{AB}`.
5. All rational coefficients are in lowest terms with positive denominator.
6. Terms are collected and sorted lexicographically by (tensor name, index string).

---

## 4. Certificate text format

A certificate for oracle axiom `oracle_<name>` is a plain-text block:

```
CERT v1
AXIOM: oracle_<name>
REWRITE_CHAIN:
  bianchi_second              -- cyclic sum applied to <indices>
  conn_rewrite_4              -- D4 R expanded in null frame
  trace_decomp (n)            -- tracefree split with rational 1/n
  index_relabel <old> -> <new>
  ...
NORMAL_FORM_VANISHES: true    -- LHS - RHS = 0 in xAct normal form
VERIFIED_AT: Experiment4_Certificates.wl, §<section>.<cell>
```

`NORMAL_FORM_VANISHES: true` means xAct's `ToCanonical` / `ContractMetric` /
`SortCovDs` pipeline returns the zero tensor on `LHS - RHS`.

The `REWRITE_CHAIN` records the named steps in the order they are applied; it
does not need to be machine-parseable by `CertificateFormat.lean` in the current
version (that is the Phase 7 stretch goal), but it must be complete enough that
a human can reproduce the computation by hand.

---

## 5. xAct notebook conventions

In `Experiment4_Certificates.wl` (and any future project script):

- **Manifold**: `DefManifold[M, n+2, {a,b,c,d,e,i,j,k,l,m,...}]` with `n` a
  symbolic positive integer.
- **Null frame bundle**: declared as a vector bundle `NullFrameBundle[M]` with
  sections `e3`, `e4`, `eA` satisfying the metric axioms from `NullFrameData`.
- **Metric**: `DefMetric[-1, g[-a,-b], CD, PrintAs -> "g"]` (Lorentzian).
- **Ricci coefficients**: declared as abstract tensors with the symmetry
  decorations that match `NullFrame/RicciCoefficients.lean` (e.g., `chi` is
  symmetric in its two tangential indices).
- **Verification cell pattern**: each oracle section ends with a cell that
  evaluates `ToCanonical[LHS - RHS] === 0` and prints `"VERIFIED"` or raises
  `Message[...]` otherwise.
- **Export call**: each oracle section contains a `CertificateExport["oracle_<name>", ...]`
  call that writes the certificate text block to `Mathematica/certs/<name>.cert`.

---

## 6. Mapping between xAct index slots and Lean arguments

| xAct expression         | Lean argument        | Notes                                      |
|-------------------------|----------------------|--------------------------------------------|
| `R[-a,-b,-c,-d]`        | `Riem : Tensor4`     | All-down Riemann in tangential frame       |
| `chi[-a,-b]`            | `F.chi`              | Symmetric; `chi[a,-b]` raises with `gamma` |
| `chiBar[-a,-b]`         | `F.chiBar`           |                                            |
| `eta[-a]`               | `F.eta`              |                                            |
| `etaBar[-a]`            | `F.etaBar`           |                                            |
| `zeta[-a]`              | `F.zeta`             |                                            |
| `omega[]`               | `F.omega`            | Scalar                                     |
| `omegaBar[]`            | `F.omegaBar`         |                                            |
| `alpha[-a,-b]`          | `α : Alpha`          | Symmetric                                  |
| `alphaBar[-a,-b]`       | `uα : UAlpha`        |                                            |
| `beta[-a]`              | `β : Beta`           |                                            |
| `betaBar[-a]`           | `uβ : UBeta`         |                                            |
| `sigma[-a,-b]`          | `σ : Sigma`          | Antisymmetric                              |
| `tau[-a,-b]`            | `τ : Tau`            | Symmetric                                  |
| `nu[-a,-b,-c]`          | `ν : Nu`             | Antisym in first two indices               |
| `nuBar[-a,-b,-c]`       | `uν : UNu`           |                                            |
| `nabla4[T[...]]`        | `F.nabla4.on... T`   | Frame derivative along e₄                 |
| `nabla3[T[...]]`        | `F.nabla3.on... T`   | Frame derivative along e₃                 |
| `nablaA[a][T[...]]`     | `F.nablaA a T`       | Tangential covariant derivative            |
