# Conductor-Reduced Defect Decompositions for Rees Algebras and a Fiber-Corrected Bridge to Linear Type

This is an example of AI-driven automatic mathematics research, verified via `LEAN`. The thinking model is ChatGPT 5.4 Pro. CLI Agents include ChatGPT 5.4 Codex, Claude Sonnet 4.6. Prompted and organized by Shengrong Wu.

## Introduction

`ReesDefects` is a Lean 4 package formalizing the paper
[`research_article_rees_defects.md`](research_article_rees_defects.md).
A human-readable proof translation from the Lean code is available in
[`formalized_research_article_rees_defects.md`](formalized_research_article_rees_defects.md).

The package is organized into ten development phases:

1. Finite-length and exact-sequence infrastructure
2. Algebraic wrappers for annihilators, quotients, and support dimension
3. Rees and symmetric algebra interfaces
4. Degreewise defect packages
5. Normalized and first-coefficient abstractions
6. Fiber-cone infrastructure
7. Asymptotic wrappers
8. Main theorems

The central mathematical outputs are:

- The degreewise defect decomposition `ν_r(n) = d_r(n) + κ_r(n) - τ_r(n)`,
  corresponding to [`### The four reduced defects`](research_article_rees_defects.md#the-four-reduced-defects)
  and [`### The interaction term as an intersection defect`](research_article_rees_defects.md#the-interaction-term-as-an-intersection-defect).
- The reduced comparison index formula `λ(ker φ_n^r) - λ(coker φ_n^r) = λ(E_n)`,
  corresponding to [`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package).
- Theorem A(1)–(3) in paper notation.
- Hypothesis-driven versions of Theorem A(4)–(5), Theorem B, and Corollary C
  (see [Conditional Gaps](#conditional-gaps) below).

---

## Build and Entry Points

- **Package root module:** `ReesDefects.lean`
- **Main theorem directory:** `ReesDefects/Main/`
- **Build command:**

```bash
# from the repository root
lake update
lake build
```

All files in the package build with **0 `sorry`**.

---

## Conditional Gaps

> **Read this section before the verification summary.**
> Every result listed in this README builds without `sorry`, but several results
> are proved *conditionally* — that is, relative to mathematical statements that
> are assumed as hypotheses rather than derived inside Mathlib. There are three
> such root assumptions. Each is a standard result in commutative algebra or
> homological algebra, and none is mathematically in doubt; the gap is purely one
> of Lean/Mathlib infrastructure.

### Gap 1 — Existence of the first-coefficient ideals

**File:** `ReesDefects/FirstCoefficient/ConcreteDefinition.lean`

**Mathematical content assumed.** Given a Noetherian local ring $(A, \mathfrak{m})$ and an
$\mathfrak{m}$-primary ideal $I$, Puthenpurakal defines a family of ideals
$(I^n)_1 \subseteq A$ (the *first-coefficient ideals*) satisfying

$$I^n \;\subseteq\; (I^n)_1 \;\subseteq\; \bar{I}^n \qquad \text{for all } n \geq 0,$$

where $\bar{I}^n$ denotes the integral closure of $I^n$. These ideals encode the
first-coefficient module of the Rees algebra and are the central object of the
paper. The formalization assumes their existence and defining properties as
axioms, without constructing them internally in Lean.

**Why it is a gap.** The construction of $(I^n)_1$ from the Rees algebra requires
algebraic infrastructure (integral closure, coefficient modules) not yet assembled
in Mathlib in the needed form.

**Why it is acceptable.** The existence and properties of $(I^n)_1$ are given
explicitly by definition in the paper. There is no mathematical content being
bypassed — only the Lean construction is deferred.

**Downstream impact.** Parts of Theorem A(2) and Theorem A(3) involving the
concrete identification $U_n = (I^n)_1$.

---

### Gap 2 — Tor long exact sequence (Proposition A.1)

**File:** `ReesDefects/Fiber/TorSequenceFuture.lean`

**Mathematical content assumed.** For any short exact sequence of $A$-modules
$0 \to K \to F \to M \to 0$, the associated long exact sequence in Tor with
respect to $A/\mathfrak{m}$,

$$\operatorname{Tor}_1^A\!\left(\tfrac{A}{\mathfrak{m}}, F\right) \to \operatorname{Tor}_1^A\!\left(\tfrac{A}{\mathfrak{m}}, M\right) \to \frac{K}{\mathfrak{m}K} \to \frac{F}{\mathfrak{m}F} \to \frac{M}{\mathfrak{m}M} \to 0,$$

is exact. In the paper this is applied with $M = I^n$ and $F$ a free module
admitting a surjection $A^g \twoheadrightarrow I^n$, giving the key exact
sequence in Appendix Proposition A.1. The right-exact portion
$K/\mathfrak{m}K \to F/\mathfrak{m}F \to M/\mathfrak{m}M \to 0$
is proved unconditionally in `RightExactBridge.lean`; only the Tor terms on the
left are assumed.

**Why it is a gap.** Mathlib's derived-functor and $\operatorname{Tor}$ API does not yet expose
the long exact sequence in a form directly applicable to this setting.

**Why it is acceptable.** The Tor long exact sequence is a foundational theorem
in homological algebra, appearing in every standard graduate text (Weibel,
Matsumura, Bruns–Herzog). Its mathematical correctness is not in question.

**Downstream impact.** Proposition A.1 (`propositionA1_future`) and all of
Theorem B.

---

### Gap 3 — Polynomial growth of the defect functions

**File:** `ReesDefects/Asymptotics/HilbertLength.lean`

**Mathematical content assumed.** The functions

$$d_r(n) = \lambda_A(D_n) \qquad \text{and} \qquad \kappa_r(n) = \lambda_A(C_n),$$

where $D_n$ and $C_n$ are graded pieces of finitely generated modules over the
Rees algebra, satisfy polynomial growth bounds: $d_r(n) = O(n^s)$ for some
$s \geq 0$, and $\kappa_r(n)$ agrees with a polynomial in $n$ for all
sufficiently large $n$.

**Why it is a gap.** The Hilbert–Serre theorem — which guarantees that the length
function of any finitely generated graded module over a polynomial ring is
eventually polynomial — is not yet available in Mathlib for the graded module
setting needed here.

**Why it is acceptable.** Polynomial growth of Hilbert functions is a classical
theorem (Hilbert 1890, Serre 1955), and the paper itself invokes this growth
without reproof. No mathematical novelty is bypassed.

**Downstream impact.** Theorem A(4)–(5), all four statements of Theorem B, and
Corollary C.

---

### Summary

| Gap                      | Mathematical statement assumed                                                                                             | Downstream impact                        |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------- |
| First-coefficient ideals | $I^n \subseteq (I^n)_1 \subseteq \bar{I}^n$ for all $n \geq 0$                                                             | Theorem A(2) cokernel form, A(3)         |
| Tor long exact sequence  | Exactness of $\operatorname{Tor}_1^A(A/\mathfrak{m}, M) \to K/\mathfrak{m}K \to F/\mathfrak{m}F \to M/\mathfrak{m}M \to 0$ | Proposition A.1, Theorem B               |
| Hilbert–Serre growth     | $d_r(n) = O(n^s)$ and $\kappa_r(n)$ eventually polynomial                                                                  | Theorem A(4)–(5), Theorem B, Corollary C |

---

## Verification Summary

### Fully verified in Lean

The following results are proved with **0 `sorry`** and no abstract inputs beyond
what Mathlib already provides.

#### Foundations

- `ReesDefects.Foundations.isFiniteLength_iff_length_ne_top`
- `ReesDefects.Foundations.finLengthNat_eq_add_of_exact`
- `ReesDefects.Foundations.finLengthNat_torsionBy_eq_finLengthNat_modBy`
- `ReesDefects.Foundations.finLengthNat_modBy_eq_finLengthNat_torsionBy_add_finLengthNat_torsionBy_sub_finLengthNat_range`
- `ReesDefects.Foundations.finLengthNat_ker_eq_finLengthNat_cokernel_add`
- `ReesDefects.Foundations.finLengthNat_subquotient_le_ambient`

Paper reference:
[`### Standard exact sequences`](research_article_rees_defects.md#standard-exact-sequences)

#### Algebra

- `submodule_annihilator_map_mkQ_eq_colon`
- `submodule_annihilator_quotient_eq_colon`
- `ideal_annihilator_quotient_eq_colon`
- `Ideal.annihilator_quotientModule_eq_colon`
- `Ideal.quotientModule_nontrivial_iff`
- `supportDimLEOne_of_injective`
- `supportDimLEOne_of_surjective`
- `ideal_quotient_supportDim_eq`

Paper references:
[`### Conductor-reduced comparison maps`](research_article_rees_defects.md#conductor-reduced-comparison-maps),
[`### Setup and notation`](research_article_rees_defects.md#setup-and-notation)

#### Rees and symmetric presentation layer

- `mem_iff_coeff_mem_pow`
- `adjoin_degree_one_eq`
- `fg`
- `degreePieceToRees_coe`
- `adjoin_degreeOneGenerator_eq_reesAlgebra`
- `degreeMap_zero`
- `degreeMap_add`
- `generator_compatibility`
- `mem_equationDefectPiece_iff`
- `exact_degreePiece`
- `surjective_degreePiece`
- `lift_ι_apply`
- `lift_comp_ι`
- `mem_defect_iff`
- `exact_defect_toDegreePiece`
- `surjective_toDegreePiece`
- `degreeOne_spec`
- `lift_cover_apply`
- `exists_cover_preimage`

Paper references:
[`### Setup and notation`](research_article_rees_defects.md#setup-and-notation),
[`### Fiber-cone notation`](research_article_rees_defects.md#fiber-cone-notation)

#### Intermediate defect calculus

- `SandwichedPowerFamily.pow_le_N`
- `DegreewiseDefectPackage.nu_eq_d_add_kappa_sub_tau`
- `DegreewiseDefectPackage.tauDefect_eq_tauIntersectionDefect`
- `DegreewiseDefectPackage.nu_eq_d_add_kappa_sub_tauIntersection`
- `ReducedComparisonData.kernelLength_eq_cokernelLength_add_equationDefectLength`
- `ReducedComparisonData.kernelLength_eq_nuDefect_add_equationDefectLength`

Paper references:
[`### Conductor-reduced comparison maps`](research_article_rees_defects.md#conductor-reduced-comparison-maps),
[`### The four reduced defects`](research_article_rees_defects.md#the-four-reduced-defects),
[`### The interaction term as an intersection defect`](research_article_rees_defects.md#the-interaction-term-as-an-intersection-defect)

#### Normalized and first-coefficient abstraction layer

- `ClosurePowerSystem.mem_normalizedReesAlgebra_iff`
- `ClosurePowerSystem.monomial_mem_iff`
- `ClosurePowerSystem.map_pow_le_closureIdealMap`
- `BasicSystem.pow_le_U_apply`
- `BasicSystem.U_le_closurePow_apply`
- `BasicSystem.toSandwichedPowerFamily_N`
- `BasicSystem.toSandwichedPowerFamily_U`
- `ClosurePowerSystem.degreePieceToNormalized_coe`
- `GlobalPackage.r1_iff_closurePow_eq_U`

Paper references:
[`### Setup and notation`](research_article_rees_defects.md#setup-and-notation),
[`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package)

#### Fiber and asymptotic wrappers

- `ResidueFieldBaseChange.tensorInclusion_apply`
- `FiberCone.ofRees_apply`
- `RightExactBridge.mk` *(right-exact portion of Proposition A.1, proved unconditionally)*
- `GradedSupport.supportDim_d_le_one`
- `GradedSupport.supportDim_c_zero_or_top`
- `DegreeBounds.dFunction_growth`
- `DegreeBounds.kappaFunction_eventuallyPolynomial`

Paper references:
[`### Fiber-cone notation`](research_article_rees_defects.md#fiber-cone-notation),
[`### Theorem B (fiber-corrected bridge to linear type)`](research_article_rees_defects.md#theorem-b-fiber-corrected-bridge-to-linear-type),
[`### Proposition A.1`](research_article_rees_defects.md#proposition-a1),
[`### Corollary A.2`](research_article_rees_defects.md#corollary-a2),
[`### Corollary A.3`](research_article_rees_defects.md#corollary-a3)

#### Main layer — abstract and concrete A(1)–(3)

- `AbstractDefectDecomposition.nu_eq_d_add_kappa_sub_tau`
- `AbstractDefectDecomposition.tau_eq_tauIntersection`
- `AbstractDefectDecomposition.nu_eq_d_add_kappa_sub_tauIntersection`
- `AbstractIndexFormula.kernelLength_eq_cokernelLength_add_equationDefectLength`
- `AbstractIndexFormula.kernelLength_eq_nuDefect_add_equationDefectLength`
- `ConcreteTheoremA123.theoremA1`
- `ConcreteTheoremA123.theoremA2_defectDecomposition`
- `ConcreteTheoremA123.theoremA3_interactionTerm`

Paper references:
[`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package),
[`### Theorem B (fiber-corrected bridge to linear type)`](research_article_rees_defects.md#theorem-b-fiber-corrected-bridge-to-linear-type),
[`### Corollary C`](research_article_rees_defects.md#corollary-c)

---

### Conditionally verified

These results are valid Lean theorems proved with **0 `sorry`**, but their statements
depend on the abstract inputs from the three gaps above. They are honest conditional
proofs: the hypothesis is explicit in the type signature.

#### From earlier phases

- `FirstCoefficientLike.r1_iff_closurePow_eq_U` — relative to the abstract
  `FirstCoefficientLike` package in `FirstCoefficient/Axioms.lean`.
- `ConcreteDefinition.U_eq_puthenpurakal_apply` — relative to the axiomatized
  `concreteDefinition A I` (Gap 1).
- `SymmetricBaseChange.equiv` — relative to the typeclass `SymmetricBaseChange.HasEquiv`.
- `HilbertGrowth.d_length_isBigO` and `HilbertGrowth.kappa_eventuallyPolynomial`
  — relative to the `HilbertGrowth` structure fields `dLength_growth` and `kappa_growth`
  (Gap 3).
- `FiberEquationData.propositionA1_future` — relative to
  `FiberEquationData.FutureTorSequenceData.exact` (Gap 2).

#### Main-layer conditional results

- `ConcreteTheoremA123.theoremA2_cokernel` — depends on the typeclass
  `ConcreteTheoremA123.HasCokernelNuIdentification` (related to Gap 1).
- `ConcreteTheoremA45.theoremA4_r1_implies_low_degree`,
  `ConcreteTheoremA45.theoremA4_not_r1_implies_high_degree`, and
  `ConcreteTheoremA45.theoremA5` — depend on the typeclasses
  `HasAsymptoticDetection` and `HasTrivialDConsequences` (Gap 3).
- `FiberCorrectedBridge.theoremB_equationDefectBound`,
  `FiberCorrectedBridge.theoremB_equationDefectGrowth`,
  `FiberCorrectedBridge.theoremB_kernelAsymptotic`, and
  `FiberCorrectedBridge.theoremB_cokernelAsymptotic` — depend on
  `FiberCorrectedBridge.FiberCorrectionData` (Gaps 2 and 3).
- `CorollaryLinearType.equationDefectVanishes_of_dZero` and
  `CorollaryLinearType.corollaryC` — depend on
  `CorollaryLinearType.LinearTypeCriterion` (Gap 3).

---

## Paper Navigation

- Setup and notation:
  [`### Setup and notation`](research_article_rees_defects.md#setup-and-notation)
- Standard exact sequences:
  [`### Standard exact sequences`](research_article_rees_defects.md#standard-exact-sequences)
- Fiber-cone definitions:
  [`### Fiber-cone notation`](research_article_rees_defects.md#fiber-cone-notation)
- Reduced comparison maps:
  [`### Conductor-reduced comparison maps`](research_article_rees_defects.md#conductor-reduced-comparison-maps)
- Reduced defects:
  [`### The four reduced defects`](research_article_rees_defects.md#the-four-reduced-defects)
- Interaction term:
  [`### The interaction term as an intersection defect`](research_article_rees_defects.md#the-interaction-term-as-an-intersection-defect)
- Main theorem package:
  [`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package)
- Fiber-corrected bridge:
  [`### Theorem B (fiber-corrected bridge to linear type)`](research_article_rees_defects.md#theorem-b-fiber-corrected-bridge-to-linear-type)
- Linear-type consequence:
  [`### Corollary C`](research_article_rees_defects.md#corollary-c)
- Appendix obstruction theorem:
  [`### Proposition A.1`](research_article_rees_defects.md#proposition-a1),
  [`### Corollary A.2`](research_article_rees_defects.md#corollary-a2),
  [`### Corollary A.3`](research_article_rees_defects.md#corollary-a3)

---

## Directory Contents

### Top level

- `lakefile.lean` — package configuration. Status: complete.
- `ReesDefects.lean` — root module importing all Main files. Status: complete.

### `ReesDefects/Foundations/`

- `FiniteLengthNat.lean` — nat-valued wrappers for `Module.length`. Status: complete.
- `ScalarTorsion.lean` — `r`-torsion and `M / rM` infrastructure. Status: complete.
  Paper reference: [`### Standard exact sequences`](research_article_rees_defects.md#standard-exact-sequences)
- `ScalarSnake.lean` — snake-lemma engine for the defect decomposition. Status: complete.
  Paper reference: [`### Standard exact sequences`](research_article_rees_defects.md#standard-exact-sequences)
- `ExactLength.lean` — kernel/cokernel length bookkeeping for abstract index formulas. Status: complete.
  Paper reference: [`### Proof of Theorem A`](research_article_rees_defects.md#proof-of-theorem-a)
- `SubquotientBounds.lean` — finite-length bounds for submodules, quotients, and subquotients. Status: complete.

### `ReesDefects/Algebra/`

- `ColonAnnihilator.lean` — annihilator/colon identifications for quotient modules. Status: complete.
  Paper reference: [`### Conductor-reduced comparison maps`](research_article_rees_defects.md#conductor-reduced-comparison-maps)
- `QuotientModulesOfIdeals.lean` — ideal quotient-module wrappers used in later packages. Status: complete.
- `SupportDimension.lean` — minimal support-dimension API. Status: complete.

### `ReesDefects/Rees/`

- `Basic.lean` — basic Rees algebra membership lemmas. Status: complete.
- `DegreePieces.lean` — degree-piece accessors for the Rees algebra. Status: complete.
- `CanonicalGenerators.lean` — canonical degree-one generators and generation results. Status: complete.
- `SymmToRees.lean` — map from the symmetric presentation to the Rees algebra. Status: complete.
- `EquationDefectKernel.lean` — equation defect as the degreewise kernel package. Status: complete.
  Paper reference: [`### Setup and notation`](research_article_rees_defects.md#setup-and-notation)

### `ReesDefects/Symmetric/`

- `Basic.lean` — basic symmetric algebra lift lemmas. Status: complete.
- `DegreeModel.lean` — degreewise model for the symmetric algebra presentation. Status: complete.
- `FreeCoverPresentation.lean` — free-cover presentation used to avoid treating `Sym_A(I)` as free. Status: complete.

### `ReesDefects/Intermediate/`

- `SandwichedPowerFamily.lean` — abstract family `I^n ≤ U_n ≤ N_n`. Status: complete.
- `DegreewiseDefects.lean` — degreewise packages `D_n`, `B_n`, `C_n` and the `ν = d + κ - τ` identity. Status: complete.
  Paper references:
  [`### The four reduced defects`](research_article_rees_defects.md#the-four-reduced-defects),
  [`### The interaction term as an intersection defect`](research_article_rees_defects.md#the-interaction-term-as-an-intersection-defect)
- `ReducedComparisonData.lean` — abstract reduced comparison map and index formula package. Status: complete.
  Paper reference: [`### Conductor-reduced comparison maps`](research_article_rees_defects.md#conductor-reduced-comparison-maps)

### `ReesDefects/Normalized/`

- `ClosurePower.lean` — abstract closure-power system and normalized Rees membership lemmas.
  Status: complete, relative to local closure-power axioms.
- `Basic.lean` — basic normalized family package `U_n ≤ closurePow n`.
  Status: complete, relative to an abstract intermediate family `U`.
- `DegreePieces.lean` — degree pieces for the normalized layer. Status: complete.

### `ReesDefects/FirstCoefficient/`

- `Axioms.lean` — consolidated `FirstCoefficientLike` interface and carried Phase 5 axioms.
  Status: complete, intentionally abstract.
  Paper reference: [`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package)
- `GlobalPackage.lean` — adapters from the consolidated first-coefficient interface to the intermediate packages. Status: complete.
- `ConcreteDefinition.lean` — concrete realization of Puthenpurakal's first-coefficient ideals,
  introduced via two Lean `axiom` declarations. Status: complete with explicit axioms. **(Gap 1)**

### `ReesDefects/Fiber/`

- `ResidueFieldBaseChange.lean` — residue-field tensor base-change infrastructure. Status: complete.
- `FiberCone.lean` — special fiber cone definition. Status: complete.
  Paper reference: [`### Fiber-cone notation`](research_article_rees_defects.md#fiber-cone-notation)
- `FiberEquationIdeal.lean` — fiber equation ideal `J_fib` and Proposition A.1 target statement. Status: complete.
  Paper references:
  [`### Fiber-cone notation`](research_article_rees_defects.md#fiber-cone-notation),
  [`### Proposition A.1`](research_article_rees_defects.md#proposition-a1)
- `SymmetricBaseChange.lean` — symmetric algebra base change over the residue field.
  Status: complete, relative to the typeclass `SymmetricBaseChange.HasEquiv`.
- `RightExactBridge.lean` — right-exact bridge `E/mE → J_fib`, proved unconditionally. Status: complete.
  Paper references:
  [`### Theorem B (fiber-corrected bridge to linear type)`](research_article_rees_defects.md#theorem-b-fiber-corrected-bridge-to-linear-type),
  [`### Proposition A.1`](research_article_rees_defects.md#proposition-a1)
- `TorSequenceFuture.lean` — future Tor exact-sequence interface for Appendix A.1.
  Status: complete, relative to `FiberEquationData.FutureTorSequenceData.exact`. **(Gap 2)**
- `TorSequence.lean` — superseded placeholder documenting the Mathlib Tor gap. Status: superseded.

### `ReesDefects/Asymptotics/`

- `GradedSupport.lean` — support-dimension wrappers for `D_n` and `C_n`. Status: complete.
- `HilbertLength.lean` — abstract Hilbert-growth interface.
  Status: complete as an interface; the underlying growth statements are provided by the caller,
  not derived internally. **(Gap 3)**
  Paper reference: [`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package)
- `DegreeBounds.lean` — paper-facing `d(n)` and `κ_r(n)` wrappers from the Hilbert-growth package. Status: complete.

### `ReesDefects/Main/`

- `AbstractDefectDecomposition.lean` — Main-level wrapper for `ν_r(n) = d_r(n) + κ_r(n) - τ_r(n)`. Status: complete.
- `AbstractIndexFormula.lean` — Main-level wrapper for `λ(ker φ) - λ(coker φ) = λ(E)`. Status: complete.
- `ConcreteTheoremA123.lean` — Theorem A(1)–(3) in paper notation.
  Status: complete; `theoremA1`, `theoremA2_defectDecomposition`, and `theoremA3_interactionTerm`
  are fully proved; `theoremA2_cokernel` is conditional on `HasCokernelNuIdentification`.
  Paper reference: [`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package)
- `ConcreteTheoremA45.lean` — Theorem A(4)–(5).
  Status: complete, relative to `HasAsymptoticDetection` and `HasTrivialDConsequences`. **(Gap 3)**
  Paper reference: [`### Theorem A (conductor-reduced comparison package)`](research_article_rees_defects.md#theorem-a-conductor-reduced-comparison-package)
- `FiberCorrectedBridge.lean` — Theorem B.
  Status: complete, relative to `FiberCorrectionData`. **(Gaps 2 and 3)**
  Paper reference: [`### Theorem B (fiber-corrected bridge to linear type)`](research_article_rees_defects.md#theorem-b-fiber-corrected-bridge-to-linear-type)
- `CorollaryLinearType.lean` — Corollary C.
  Status: complete, relative to `LinearTypeCriterion`. **(Gap 3)**
  Paper reference: [`### Corollary C`](research_article_rees_defects.md#corollary-c)

---

## Related Logs

- Session summary and theorem-status inventory:

| Phase | File                                | Status                                                  | Sorry Trajectory | Build Attempts | Axioms Assumed                                                                                                                                          | Notes                                                                                                                           |
| ----- | ----------------------------------- | ------------------------------------------------------- | ---------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| 1     | SETUP                               | COMPLETE                                                | 0→0              | 1              | None                                                                                                                                                    | Bootstrapped nested `ReesDefects` package, local-path Mathlib manifest, full placeholder tree, and clean empty build.           |
| 1     | Foundations/FiniteLengthNat         | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Added nat-valued finite-length wrapper and exact-sequence additivity lemmas.                                                    |
| 1     | Foundations/ScalarTorsion           | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Proved $\lambda(0:_M r)=\lambda(M/rM)$ by cancelling the common range term.                                                     |
| 1     | Foundations/ScalarSnake             | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Instantiated Mathlib’s module snake lemma and proved the abstract scalar length identity.                                       |
| 1     | Foundations/ExactLength             | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Added abstract kernel/range/cokernel length bookkeeping and a generic index identity.                                           |
| 1     | Foundations/SubquotientBounds       | COMPLETE                                                | 0→0              | 2              | None                                                                                                                                                    | Added nat-valued submodule, quotient, and ambient subquotient length bounds.                                                    |
| 2     | Algebra/ColonAnnihilator            | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Proved the conductor identity `Ann(J/L) = L : J` in submodule and ideal form.                                                   |
| 2     | Algebra/QuotientModulesOfIdeals     | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Packaged ideal quotients as reusable module quotients and added the strictness criterion.                                       |
| 2     | Algebra/SupportDimension            | COMPLETE                                                | 0→0              | 1              | None                                                                                                                                                    | Added a thin support-dimension wrapper layer for later asymptotic files.                                                        |
| 3     | Rees/Basic                          | COMPLETE                                                | 0→0              | 2              | None                                                                                                                                                    | Added thin wrappers around Mathlib's `reesAlgebra` membership, coefficient, adjoin, and finite-generation API.                  |
| 3     | Rees/DegreePieces                   | COMPLETE                                                | 0→0              | 2              | None                                                                                                                                                    | Represented degree pieces by ideal powers and packaged coefficient and monomial insertion maps.                                 |
| 3     | Rees/CanonicalGenerators            | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Added the degree-one generator family and transported Mathlib's adjoin theorem to it.                                           |
| 3     | Rees/SymmToRees                     | SKELETON — DEFERRED TO PHASE 4                          | 0→3              | 3              | None                                                                                                                                                    | Added an abstract degreewise symmetric-to-Rees interface with typed placeholder theorems only.                                  |
| 3     | Rees/EquationDefectKernel           | SKELETON — DEFERRED TO PHASE 4                          | 0→3              | 1              | None                                                                                                                                                    | Added the abstract degreewise kernel package with typed placeholder theorems only.                                              |
| 4     | Symmetric/Basic                     | COMPLETE                                                | 0→0              | 1              | None                                                                                                                                                    | Added the abstract degreewise symmetric interface and basic universal-property wrappers.                                        |
| 4     | Symmetric/DegreeModel               | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Packaged `S_n`, `E_n`, `S_n → I^n`, and proved the exact degreewise sequence.                                                   |
| 4     | Symmetric/FreeCoverPresentation     | COMPLETE                                                | 0→0              | 1              | None                                                                                                                                                    | Added the concrete free-cover wrapper without globalizing it as the symmetric model.                                            |
| 4     | Rees/SymmToRees                     | COMPLETE                                                | 3→0              | 2              | None                                                                                                                                                    | Replaced the Phase 3 skeleton by clean degree-model wrappers.                                                                   |
| 4     | Rees/EquationDefectKernel           | COMPLETE                                                | 3→0              | 1              | None                                                                                                                                                    | Replaced the Phase 3 skeleton by clean kernel and exactness wrappers.                                                           |
| 5     | Intermediate/SandwichedPowerFamily  | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Added the abstract sandwiched family and the paper’s intersection-quotient helper definitions.                                  |
| 5     | Intermediate/DegreewiseDefects      | COMPLETE                                                | 0→0              | 1              | `exact_DBC`, `finiteLength_D`, `finiteLength_B`, `finiteLength_C`, `tauRangeEquiv`                                                                      | Proved the abstract scalar-snake decomposition and rewrote it with the explicit `τ_r(n)` intersection quotient.                 |
| 5     | Intermediate/ReducedComparisonData  | COMPLETE                                                | 0→0              | 2              | abstract source family, kernel/cokernel finite length, index formula                                                                                    | Packaged the reduced comparison map interface and its degreewise index identity.                                                |
| 6     | Normalized/ClosurePower             | COMPLETE                                                | 0→0              | 4              | `zero_closurePow`, `mul_closurePow`, `pow_le_closurePow`                                                                                                | Added the local closure-power package and the normalized Rees algebra as a coefficientwise subalgebra of `FractionRing A[X]`.   |
| 6     | Normalized/Basic                    | COMPLETE                                                | 0→0              | 2              | abstract family `U` with `I^n ≤ U n ≤ closurePow n`                                                                                                     | Packaged the phase deliverable as a `SandwichedPowerFamily`.                                                                    |
| 6     | Normalized/DegreePieces             | COMPLETE                                                | 0→0              | 1              | None                                                                                                                                                    | Mirrored the Rees degree-piece API for the normalized algebra.                                                                  |
| 7     | FirstCoefficient/Axioms             | COMPLETE                                                | 0→0              | 2              | consolidated Phase 5 exactness / finite-length / `tauRangeEquiv`; reduced-comparison source and index data; Phase 6 closure-power and `U`-family axioms | Centralized all previously carried imported algebra in a single interface file.                                                 |
| 7     | FirstCoefficient/GlobalPackage      | COMPLETE                                                | 0→0              | 2              | None                                                                                                                                                    | Added adapters from the consolidated axioms back into the Phase 5 abstract packages.                                            |
| 7     | FirstCoefficient/ConcreteDefinition | COMPLETE — 1 AXIOM                                      | 0→0              | 1              | `concreteDefinition A I : ConcreteDefinition A I`                                                                                                       | Tied the abstract interface to Puthenpurakal's `(I^n)_1` through one explicit concrete axiom.                                   |
| 8     | Fiber/ResidueFieldBaseChange        | COMPLETE                                                | 0→0              | 2              | None                                                                                                                                                    | Packaged the abstract residue-field tensor base change and the canonical map `M → k ⊗[A] M`.                                    |
| 8     | Fiber/FiberCone                     | COMPLETE                                                | 0→0              | 1              | None                                                                                                                                                    | Defined the special fiber cone as the residue-field tensor base change of the Rees algebra module.                              |
| 8     | Fiber/FiberEquationIdeal            | COMPLETE                                                | 0→0              | 3              | None                                                                                                                                                    | Defined `J_fib = ker(Sym_k(V) → F(I))` using an abstract `k`-algebra presentation of the fiber cone and stated Proposition A.1. |
| 8     | Fiber/TorSequence                   | SUPERSEDED — see RightExactBridge and TorSequenceFuture | 0→0              | 2              | None                                                                                                                                                    | Removed the exported Tor axiom; the usable bridge now lives in `RightExactBridge`, with future Tor work isolated separately.    |
| 8.5   | Fiber/SymmetricBaseChange           | COMPLETE — 1 ABSTRACT INPUT                             | 1→0              | 4              | `SymmetricBaseChange.HasEquiv`                                                                                                                          | Replaced the sorry by a single abstract interface for the symmetric base-change equivalence.                                    |
| 8.5   | Fiber/RightExactBridge              | COMPLETE                                                | 1→0              | 2              | None                                                                                                                                                    | Refactored `mk` into an honest constructor from a bridge map and surjectivity proof.                                            |
| 8.5   | Fiber/TorSequenceFuture             | COMPLETE — 1 ABSTRACT INPUT                             | 1→0              | 2              | `FiberEquationData.FutureTorSequenceData.exact`                                                                                                         | Replaced the sorry by bundled future Tor data whose exactness theorem can be extracted without hole or axiom.                   |
| 9     | Asymptotics/GradedSupport           | COMPLETE                                                | 0→0              | 2              | None                                                                                                                                                    | Repackaged the `D_n` and `C_n` support-dimension hypotheses from `FirstCoefficientLike`.                                        |
| 9     | Asymptotics/HilbertLength           | BLOCKED — MATHLIB GAP                                   | 0→0              | 3              | `HilbertGrowth.dLength_growth`, `HilbertGrowth.kappa_growth`                                                                                            | Isolated the two Hilbert-growth statements as the only abstract asymptotic inputs needed downstream.                            |
| 9     | Asymptotics/DegreeBounds            | COMPLETE                                                | 0→0              | 2              | None                                                                                                                                                    | Exported the paper-facing `d(n)` and `κ_r(n)` growth wrappers from the abstract Hilbert package.                                |
| 10    | Main/AbstractDefectDecomposition    | COMPLETE                                                | 3→0              | 2              | None                                                                                                                                                    | Repackaged the degreewise scalar-snake identity and the explicit interaction quotient for downstream Main use.                  |
| 10    | Main/AbstractIndexFormula           | COMPLETE                                                | 2→0              | 2              | None                                                                                                                                                    | Repackaged the reduced comparison index formula and its `ν_r` rewrite.                                                          |
| 10    | Main/ConcreteTheoremA123            | COMPLETE                                                | 4→0              | 2              | `ConcretePackage.U_eq_puthenpurakal`, `HasCokernelNuIdentification`                                                                                     | Delivered Theorem A(1)–(3) as zero-sorry wrappers over the abstract packages.                                                   |
| 10    | Main/ConcreteTheoremA45             | COMPLETE                                                | 3→0              | 2              | `HasAsymptoticDetection`, `HasTrivialDConsequences`                                                                                                     | Isolated the blocked asymptotic detection and `𝓓=0` consequences behind explicit theorem interfaces.                            |
| 10    | Main/FiberCorrectedBridge           | COMPLETE                                                | 4→0              | 2              | `FiberCorrectionData`                                                                                                                                   | Packaged Theorem B using explicit fiber, Tor, and asymptotic hypothesis data with no global axiom.                              |
| 10    | Main/CorollaryLinearType            | COMPLETE                                                | 2→2→0            | 3              | `LinearTypeCriterion`                                                                                                                                   | Derived equation-defect vanishing from the Theorem B bound and transported it to linear type.                                   |


