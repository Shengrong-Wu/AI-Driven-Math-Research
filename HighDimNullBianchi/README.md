# Hybrid Formalization of Null Bianchi Equations

**A Lean 4 + Mathematica/xAct certificate pipeline for Proposition 3.6 of the higher-dimensional double-null structure equations.**

> **Reference:** [arXiv:1705.09674](https://arxiv.org/abs/1705.09674) — *The Asymptotically Self-Similar Regime for the Einstein Vacuum Equations*

---

## Overview

This experiment formalizes **Proposition 3.6** of the above paper: the complete frame-expanded Bianchi system (equations **(B1)–(B14)**) for an $(n+2)$-dimensional vacuum Lorentzian manifold in double-null gauge, with $n \geq 2$ kept as a free parameter throughout.

The central research question is:

> *How far can a hybrid Lean + symbolic-computation workflow go in machine-verifying a complex differential-geometric proposition, without requiring Lean to absorb the full CAS computation?*

The answer pursued here is a **certificate pipeline**: Mathematica/xAct performs the heavy tensor algebra, exports JSON evidence certificates, and Lean checks the exported normal forms. This cleanly separates what the Lean kernel can certify from what is delegated to the computer algebra system — and makes both layers auditable.

**This is not a claim that Lean replaces xAct.** The intended deliverable is:

1. A Lean development that defines the null-frame objects and states Proposition 3.6 precisely, with all types and index-symmetry constraints kernel-checked.
2. A certificate-checked symbolic pipeline in which Mathematica/xAct expands the long tensor identities and Lean checks the exported normal forms.
3. A final audit that clearly distinguishes **kernel-checked**, **verified with certification of xAct**, and **deferred/oracle** steps.

---

## Repository Structure

```
NullFrame/          Phase 1 — null-frame algebra, index symmetries, Ricci coefficients
CovDeriv/           Phase 2 — frame derivative operators ∇₃, ∇₄, ∇_A
BianchiSeeds/       Phase 3 — Bianchi seed identities (imported claims; see below)
TauTransport/       Phase 4 — raw ∇₄τ identity; certificate pipeline prototype
Outgoing/           Phase 5 — equations (B1)–(B6), outgoing half of Prop. 3.6
Incoming/           Phase 6 — equations (B7)–(B14), incoming half of Prop. 3.6
Certificates/       Phase 7–9 — certificate format, parser, checker, oracle registry
Main/               Phase 8 — full Prop. 3.6 bundle and the kernel-checked equation
Mathematica/        xAct notebooks and exported JSON certificate evidence
```

**Build:** `lake build NullFrame` from this directory.
Full clean build ≈ 3132 jobs; incremental builds on an unchanged state complete in 0 jobs.

---

## Verification Status

### ✅ Lean Kernel — Full Proof (no axioms)

**Equation (B9): $\nabla_3\rho$** is proved entirely within the Lean kernel, with no `sorry` and no external oracle axiom. The derivation uses $\rho = -\tfrac{1}{2}\operatorname{tr}\tau$ and the linearity of $\nabla_3$:

$$\nabla_3\rho = \nabla_3\!\left(-\tfrac{1}{2}\operatorname{tr}\tau\right) = -\tfrac{1}{2}\operatorname{tr}\!\left(\nabla_3\tau\right)$$

Proved as a chain of `LinearMap.map_smul` rewrites. The kernel-only reference file is `Main/KernelProof.lean`.

### ✅ Lean Kernel — Statement Level (all 14 equations)

All **14 equation statements** (B1)–(B14) in `Main/Prop36.lean` are kernel-checked at the type level. This includes:

- **Symmetry** of $\chi_{AB}$, $\tau_{AB}$, $\bar\alpha_{AB}$, $\alpha_{AB}$: enforced via `Matrix.IsSymm`.
- **Antisymmetry** of $\sigma_{AB}$ and of $\nu_{ABC}$ in the first two indices: enforced via `Matrix.IsAntiSymm` and `AntisymmetricFirstTwoTensor`.
- **Tracefree decomposition** $k = \hat{k} + \tfrac{1}{n}(\operatorname{tr}k)\gamma$ using exact rational arithmetic via `invDim n = (1 : 𝕜) / n`, with no integer division.
- **Null-frame metric relations** $g(e_3, e_4) = -2$, $g(e_3,e_3) = g(e_4,e_4) = 0$, $g(e_A,e_B) = \gamma_{AB}$ as axiom fields of the `NullFrameData` structure, propagated through every phase.

### ✅ Verified with Certification of xAct (18 of 19 certificates)

The `Certificates/` directory contains a JSON certificate checker and an oracle registry. 18 of 19 certificate files record `normalFormVanishes: true`, derived from component verification in `Prop36BianchiExpandedChecks.nb` and `HigherDimCombinedChecks.nb`:

| Oracle key        | Equation / identity                                             |
| ----------------- | --------------------------------------------------------------- |
| `tau4`            | $\nabla_4\tau$ transport (Phase 4 seed)                         |
| `b1_alpha3`       | (B1) $\nabla_3\alpha$                                           |
| `b2_beta4`        | (B2) $\nabla_4\beta$                                            |
| `b3_nu4`          | (B3) $\nabla_4\nu$                                              |
| `b4_nu3`          | (B4) $\nabla_3\nu$                                              |
| `b5_r4`           | (B5) $\nabla_4 R$                                               |
| `b6_sigma4`       | (B6) $\nabla_4\sigma$                                           |
| `b7_r3`           | (B7) $\nabla_3 R$                                               |
| `b8_tau3`         | (B8) $\nabla_3\tau$                                             |
| `b10_sigma3`      | (B10) $\nabla_3\sigma$                                          |
| `b11_unu4`        | (B11) $\nabla_4\bar\nu$                                         |
| `b12_unu3`        | (B12) $\nabla_3\bar\nu$                                         |
| `b13_ubeta3`      | (B13) $\nabla_3\bar\beta$                                       |
| `b14_ualpha4`     | (B14) $\nabla_4\bar\alpha$                                      |
| `bianchi_divfree` | Contracted/divergence-free Bianchi seed                         |
| `conn_rewrite_4`  | $D_4 R = \nabla_4 R + [\chi,\eta]$                              |
| `conn_rewrite_3`  | $D_3 R = \nabla_3 R + [\bar\chi,\bar\eta]$                      |
| `conn_rewrite_A`  | $D_A R = \nabla_A R + [\zeta,\cdots]$ algebraic commutator core |

These certificates are **audit evidence**, checked by the Lean IO validators `validateOracleCertificates` / `allOracleCertificatesValid`. The `tau4` entry additionally has a theorem-level checked-certificate proof object (`tau4_expansion_certificate_ok`). The semantic bridge that would let a certificate formally discharge a Lean `axiom` and replace it with a `theorem` is the remaining open work; until that bridge is instantiated, all oracle entries remain `axiom` declarations at the kernel level.

### ⏳ Remaining Work

- **`bianchi_second`** (1 stub certificate): its xAct verification uses `RiemannYoungProject` rather than the current exporter's `ToCanonical`-based normalization path; it is the sole certificate outside the exporter's current pipeline.
- **Semantic bridge**: instantiating the mechanism that turns a checked certificate into a Lean `theorem` replacing an `axiom`, for each of the 18 verified oracle entries.

---

## Trust Ledger

| Category                            | Count    | Status                                      |
| ----------------------------------- | -------- | ------------------------------------------- |
| Lean kernel proofs (no axioms)      | 1        | B9 ($\nabla_3\rho$) — fully kernel-checked  |
| Equation statements (type-level)    | 14       | B1–B14 — all kernel-checked                 |
| Verified with certification of xAct | 18 of 19 | Audit evidence; semantic bridge in progress |
| Stub certificates                   | 1 of 19  | `bianchi_second`                            |
| Imported seed axioms                | 2        | `bianchi_second`, `bianchi_divfree`         |
| Additional infrastructure axioms    | 6        | Connection rewrites, $\tau$ transport seed  |

---

## Mathematical Background

### Setting

Let $(\mathcal{M}^{n+2}, g)$ be a Lorentzian manifold in double-null coordinates $(u, v, \theta^1, \dots, \theta^n)$ with metric

$$g = -2\Omega^2(du \otimes dv + dv \otimes du) + \gamma_{AB}(d\theta^A - b^A du)(d\theta^B - b^B du).$$

The adapted null frame is

$$e_4 = \Omega^{-1}\partial_v, \qquad e_3 = \Omega^{-1}(\partial_u + b^A \partial_A), \qquad e_A \in TS_{u,v},$$

with $g(e_3, e_4) = -2$, $g(e_A, e_B) = \gamma_{AB}$, $g(e_A, e_3) = g(e_A, e_4) = 0$. Tangential indices are raised/lowered by $\gamma$.

### Ricci Coefficients

$$\chi_{AB} = g(D_A e_4, e_B), \quad \underline\chi_{AB} = g(D_A e_3, e_B), \quad \eta_A = -\tfrac{1}{2}g(D_3 e_A, e_4), \quad \underline\eta_A = -\tfrac{1}{2}g(D_4 e_A, e_3),$$

$$\omega = -\tfrac{1}{4}g(D_4 e_3, e_4), \qquad \underline\omega = -\tfrac{1}{4}g(D_3 e_4, e_3), \qquad \zeta_A = \tfrac{1}{4}g([e_3, e_4], e_A).$$

### Curvature Components

$$\alpha_{AB} = R_{A4B4}, \quad \underline\alpha_{AB} = R_{A3B3}, \quad \beta_A = \tfrac{1}{2}R_{A434}, \quad \underline\beta_A = \tfrac{1}{2}R_{A334},$$

$$\rho = \tfrac{1}{4}R_{3434}, \quad \sigma_{AB} = \tfrac{1}{2}R_{34AB}, \quad \tau_{AB} = \tfrac{1}{2}(R_{3A4B} + R_{3B4A}), \quad \nu_{ABC} = R_{ABC4}, \quad \underline\nu_{ABC} = R_{ABC3}.$$

Here $\tau_{AB}$ is symmetric, $\sigma_{AB}$ is antisymmetric, and $\nu_{ABC}$, $\underline\nu_{ABC}$ are antisymmetric in the first two indices. For any symmetric tangential 2-tensor $k$: $k = \hat{k} + \tfrac{1}{n}(\operatorname{tr}k)\gamma$.

### Imported Seeds (Axioms)

The derivation of (B1)–(B14) from first principles uses two deep identities imported as `axiom` declarations in `BianchiSeeds/BianchiSeeds.lean`, marked `-- ORACLE`. Both are classical results well-known in the smooth-manifold setting; the statements formalized here are their null-frame projections.

**Seed 1 — Second Bianchi identity (cyclic form):**

$$\nabla_3 R_{\alpha\beta\gamma\delta} + \nabla_4 R_{\alpha\beta\gamma\delta} + \nabla_A R_{\alpha\beta\gamma\delta} = 0$$

(after appropriate index cycling). In Lean: `axiom bianchi_second`.

**Seed 2 — Contracted/divergence-free consequence:**

$$D^i R_{ijkl} = 0$$

used in its null-frame projection form. In Lean: `axiom bianchi_divfree`. This is now verified with certification of xAct via the contracted-Bianchi reduction in `HigherDimCombinedChecks.nb`; `bianchi_second` remains the sole unresolved seed.

---

## Full Equation Statements — Proposition 3.6

Assume the vacuum Einstein condition $\operatorname{Ric}(g) = 0$. Write $\nabla^A = \gamma^{AB}\nabla_B$ and $\operatorname{Sym}_{AB}[X_{AB}] = \tfrac{1}{2}(X_{AB} + X_{BA})$.

The auxiliary $\nabla_4\tau$ transport identity (Phase 4 seed) is

$$\nabla_4\tau_{AB} = -2\chi^{CD}R_{CADB} + \gamma^{CD}\Big[-\nabla_C\nu_{DBA} + \nabla_A\nu_{DBC} - (2\zeta_C+\eta_C)\nu_{DBA} + (2\zeta_A+\eta_A)\nu_{DBC}$$

$$\quad -\eta_D\nu_{CAB} + \eta_B\nu_{CAD} + \chi_C{}^E R_{AEDB} + \chi_A{}^E R_{ECDB} - \tfrac{1}{2}\chi_{CD}(\tau_{BA}+\sigma_{BA}) - \tfrac{1}{2}\underline\chi_{CD}\alpha_{AB}$$

$$\quad + \tfrac{1}{2}\chi_{CB}(\tau_{DA}+\sigma_{DA}) + \tfrac{1}{2}\underline\chi_{CB}\alpha_{AD} + \tfrac{1}{2}\chi_{AD}(\tau_{BC}+\sigma_{BC}) + \tfrac{1}{2}\underline\chi_{AD}\alpha_{BC}$$

$$\quad - \tfrac{1}{2}\chi_{AB}(\tau_{DC}+\sigma_{DC}) - \tfrac{1}{2}\underline\chi_{AB}\alpha_{CD}\Big].$$

Tracing yields the $\nabla_4\rho$ law. The full system (B1)–(B14) is:

$$\nabla_3\alpha_{AB} = 4\underline\omega\,\alpha_{AB} - 2\underline\eta^C\nu_{C(AB)} - 2\underline\eta_{(A}\beta_{B)} - \nabla_4\tau_{AB} + 2\operatorname{Sym}_{AB}\Big[-\nabla^C\nu_{CAB} - \zeta^C\nu_{CAB}$$
$$\quad - \tfrac{1}{2}\operatorname{tr}\chi\,(\tau_{AB}+\sigma_{AB}) - \tfrac{1}{2}\operatorname{tr}\underline\chi\,\alpha_{AB} + \tfrac{1}{2}\chi_A{}^C(\tau_{CB}+\sigma_{CB}) + \tfrac{1}{2}\underline\chi_A{}^C\alpha_{CB} - \chi^{CD}R_{CADB} + \chi_B{}^C\sigma_{CA}\Big] \tag{B1}$$

$$\nabla_4\beta_A = \nabla^B\alpha_{BA} + (2\zeta^B+\eta^B)\alpha_{BA} - \hat\chi_A{}^B\beta_B - \hat\chi^{BC}\nu_{ABC} - \Big(1+\tfrac{2}{n}\Big)\operatorname{tr}\chi\,\beta_A - 2\omega\,\beta_A \tag{B2}$$

$$\nabla_4\nu_{ABC} = -2\nabla_{[A}\alpha_{B]C} - (2\zeta_A+\eta_A)\alpha_{BC} + (2\zeta_B+\eta_B)\alpha_{AC} + \chi_{AC}\beta_B - \chi_{BC}\beta_A$$
$$\quad + \chi_A{}^D(\nu_{BDC}+\nu_{CDB}) + \chi_B{}^D\nu_{DAC} - \chi_B{}^D\nu_{CDA} - 2\omega\,\nu_{ABC} \tag{B3}$$

$$\nabla_3\nu_{ABC} = -\nabla_A(\tau_{BC}+\sigma_{BC}) + \nabla_B(\tau_{AC}+\sigma_{AC}) - \underline\eta_A(\tau_{BC}+\sigma_{BC}) + \underline\eta_B(\tau_{AC}+\sigma_{AC}) + 2\underline\eta_C\sigma_{AB}$$
$$\quad + 2\underline\omega\,\nu_{ABC} + 2\underline\eta^D R_{ABCD} + \chi_{AC}\underline\beta_B - \chi_{BC}\underline\beta_A + \underline\chi_A{}^D\nu_{BDC} + \underline\chi_B{}^D\nu_{DAC} + \chi_A{}^D\underline\nu_{CDB} - \chi_B{}^D\underline\nu_{CDA} \tag{B4}$$

$$\nabla_4 R_{ABCD} = -\nabla_A\nu_{CDB} + \nabla_B\nu_{CDA} - (2\zeta_A+\eta_A)\nu_{CDB} + (2\zeta_B+\eta_B)\nu_{CDA} - \eta_C\nu_{ABD} + \eta_D\nu_{ABC}$$
$$\quad + \chi_A{}^E R_{BECD} + \chi_B{}^E R_{EACD} - \tfrac{1}{2}\chi_{AC}(\tau_{DB}+\sigma_{DB}) + \tfrac{1}{2}\chi_{AD}(\tau_{CB}+\sigma_{CB})$$
$$\quad + \tfrac{1}{2}\chi_{BC}(\tau_{DA}+\sigma_{DA}) - \tfrac{1}{2}\chi_{BD}(\tau_{CA}+\sigma_{CA}) - \tfrac{1}{2}\underline\chi_{AC}\alpha_{BD} + \tfrac{1}{2}\underline\chi_{AD}\alpha_{BC} + \tfrac{1}{2}\underline\chi_{BC}\alpha_{AD} - \tfrac{1}{2}\underline\chi_{BD}\alpha_{AC} \tag{B5}$$

$$\nabla_4\sigma_{AB} = \nabla^C\nu_{ABC} + (\zeta^C+\eta^C)\nu_{ABC} - \operatorname{tr}\chi\,\sigma_{AB} + \eta_B\beta_A - \eta_A\beta_B$$
$$\quad + \tfrac{1}{2}\chi_A{}^C(\tau_{BC}+\sigma_{BC}) - \tfrac{1}{2}\chi_B{}^C(\tau_{AC}+\sigma_{AC}) + \tfrac{1}{2}\underline\chi_A{}^C\alpha_{CB} - \tfrac{1}{2}\underline\chi_B{}^C\alpha_{CA} \tag{B6}$$

$$\nabla_3 R_{ABCD} = -\nabla_A\underline\nu_{CDB} + \nabla_B\underline\nu_{CDA} + (\zeta_A-\underline\eta_A)\underline\nu_{CDB} - (\zeta_B-\underline\eta_B)\underline\nu_{CDA} - \underline\eta_C\underline\nu_{ABD} + \underline\eta_D\underline\nu_{ABC}$$
$$\quad + \underline\chi_A{}^E R_{BECD} + \underline\chi_B{}^E R_{EACD} - \tfrac{1}{2}\chi_{AC}\underline\alpha_{BD} + \tfrac{1}{2}\chi_{AD}\underline\alpha_{BC} + \tfrac{1}{2}\chi_{BC}\underline\alpha_{AD} - \tfrac{1}{2}\chi_{BD}\underline\alpha_{AC}$$
$$\quad - \tfrac{1}{2}\underline\chi_{AC}(\tau_{BD}+\sigma_{BD}) + \tfrac{1}{2}\underline\chi_{AD}(\tau_{BC}+\sigma_{BC}) + \tfrac{1}{2}\underline\chi_{BC}(\tau_{AD}+\sigma_{AD}) - \tfrac{1}{2}\underline\chi_{BD}(\tau_{AC}+\sigma_{AC}) \tag{B7}$$

$$\nabla_3\tau_{AB} = -2\underline\chi^{CD}R_{CADB} + \gamma^{CD}\Big[-\nabla_C\underline\nu_{DBA} + \nabla_A\underline\nu_{DBC} + (\zeta_C-\underline\eta_C)\underline\nu_{DBA} - (\zeta_A-\underline\eta_A)\underline\nu_{DBC}$$
$$\quad - \underline\eta_D\underline\nu_{CAB} + \underline\eta_B\underline\nu_{CAD} + \underline\chi_C{}^E R_{AEDB} + \underline\chi_A{}^E R_{ECDB} - \tfrac{1}{2}\chi_{CD}\underline\alpha_{AB} + \tfrac{1}{2}\chi_{CB}\underline\alpha_{AD} + \tfrac{1}{2}\chi_{AD}\underline\alpha_{BC} - \tfrac{1}{2}\chi_{AB}\underline\alpha_{CD}$$
$$\quad - \tfrac{1}{2}\underline\chi_{CD}(\tau_{AB}+\sigma_{AB}) + \tfrac{1}{2}\underline\chi_{CB}(\tau_{AD}+\sigma_{AD}) + \tfrac{1}{2}\underline\chi_{AD}(\tau_{CB}+\sigma_{CB}) - \tfrac{1}{2}\underline\chi_{AB}(\tau_{CD}+\sigma_{CD})\Big] \tag{B8}$$

$$\nabla_3\rho = -\tfrac{1}{2}\gamma^{AB}\nabla_3\tau_{AB} \tag{B9}$$

$$\nabla_3\sigma_{AB} = -\nabla^C\underline\nu_{ABC} + (\zeta^C-\underline\eta^C)\underline\nu_{ABC} - \operatorname{tr}\underline\chi\,\sigma_{AB} - \underline\eta_A\underline\beta_B + \underline\eta_B\underline\beta_A$$
$$\quad - \tfrac{1}{2}\chi_A{}^C\underline\alpha_{CB} + \tfrac{1}{2}\chi_B{}^C\underline\alpha_{CA} - \tfrac{1}{2}\underline\chi_A{}^C(\tau_{CB}+\sigma_{CB}) + \tfrac{1}{2}\underline\chi_B{}^C(\tau_{CA}+\sigma_{CA}) \tag{B10}$$

$$\nabla_4\underline\nu_{ABC} = -\nabla_A(\tau_{CB}+\sigma_{CB}) + \nabla_B(\tau_{CA}+\sigma_{CA}) - \eta_A(\tau_{CB}+\sigma_{CB}) + \eta_B(\tau_{CA}+\sigma_{CA}) - 2\eta_C\sigma_{AB}$$
$$\quad + 2\omega\,\underline\nu_{ABC} + 2\eta^D R_{ABCD} + \chi_A{}^D\underline\nu_{BDC} + \chi_B{}^D\underline\nu_{DAC} - \underline\chi_{AC}\beta_B + \underline\chi_{BC}\beta_A + \underline\chi_A{}^D\nu_{CDB} - \underline\chi_B{}^D\nu_{CDA} \tag{B11}$$

$$\nabla_3\underline\nu_{ABC} = -2\nabla_{[A}\underline\alpha_{B]C} + (2\zeta_A-\underline\eta_A)\underline\alpha_{BC} - (2\zeta_B-\underline\eta_B)\underline\alpha_{AC} - 2\underline\omega\,\underline\nu_{ABC}$$
$$\quad - \underline\chi_{AC}\underline\beta_B + \underline\chi_{BC}\underline\beta_A + \underline\chi_A{}^D(\underline\nu_{BDC}+\underline\nu_{CDB}) + \underline\chi_B{}^D\underline\nu_{DAC} - \underline\chi_B{}^D\underline\nu_{CDA} \tag{B12}$$

$$\nabla_3\underline\beta_A = -\nabla^B\underline\alpha_{BA} + (2\zeta^B-\underline\eta^B)\underline\alpha_{BA} + \hat{\underline\chi}^{BC}\underline\nu_{ABC} - \hat{\underline\chi}_A{}^B\underline\beta_B - \operatorname{tr}\underline\chi\,\underline\beta_A - 2\underline\omega\,\underline\beta_A \tag{B13}$$

$$\nabla_4\underline\alpha_{AB} = 4\omega\,\underline\alpha_{AB} - 2\eta^C\underline\nu_{C(AB)} - 2\eta_{(A}\underline\beta_{B)} - \nabla_3\tau_{AB} + 2\operatorname{Sym}_{AB}\Big[-\nabla^C\underline\nu_{CAB} + \zeta^C\underline\nu_{CAB}$$
$$\quad - \tfrac{1}{2}\operatorname{tr}\chi\,\underline\alpha_{AB} - \tfrac{1}{2}\operatorname{tr}\underline\chi\,\tau_{AB} + \tfrac{1}{2}\chi_A{}^C\underline\alpha_{CB} + \tfrac{1}{2}\underline\chi_A{}^C(\tau_{BC}+\sigma_{BC}) - \underline\chi^{CD}R_{CADB} - \underline\chi_B{}^C\sigma_{CA}\Big] \tag{B14}$$

This explicit frame-expanded form — not the compressed schematic — is the object formalized in the Lean package. Underlined components correspond to `UAlpha`, `UBeta`, `UNu` in the Lean source.

---

## Notation Reference

| Symbol                        | Lean name                 | Rank                           | Symmetry                            |
| ----------------------------- | ------------------------- | ------------------------------ | ----------------------------------- |
| $\alpha_{AB}$                 | `Alpha`                   | symmetric 2-tensor             | $\alpha_{AB} = \alpha_{BA}$         |
| $\bar\alpha_{AB}$             | `UAlpha`                  | symmetric 2-tensor             | $\bar\alpha_{AB} = \bar\alpha_{BA}$ |
| $\beta_A$                     | `Beta`                    | 1-tensor                       | —                                   |
| $\bar\beta_A$                 | `UBeta`                   | 1-tensor                       | —                                   |
| $\rho$                        | scalar                    | scalar                         | —                                   |
| $\sigma_{AB}$                 | `Sigma`                   | antisymmetric 2-tensor         | $\sigma_{AB} = -\sigma_{BA}$        |
| $\tau_{AB}$                   | `Tau`                     | symmetric 2-tensor             | $\tau_{AB} = \tau_{BA}$             |
| $\nu_{ABC}$                   | `Nu`                      | 3-tensor, antisym in first two | $\nu_{BAC} = -\nu_{ABC}$            |
| $\bar\nu_{ABC}$               | `UNu`                     | 3-tensor, antisym in first two | $\bar\nu_{BAC} = -\bar\nu_{ABC}$    |
| $R_{\alpha\beta\gamma\delta}$ | `Tensor4 𝕜 n`             | abstract 4-tensor              | —                                   |
| $\nabla_3,\nabla_4$           | `FrameDerivData.nabla3/4` | frame derivative               | —                                   |
| $\nabla_A$                    | `FrameDerivData.nablaA`   | tangential derivative          | —                                   |
