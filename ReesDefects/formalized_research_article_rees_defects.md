# Conductor-Reduced Defect Decompositions for Rees Algebras and a Fiber-Corrected Bridge to Linear Type

**Shengrong Wu**

_Automatic Research With GenAI_

## Abstract

This article rewrites `research_article_rees_defects.md` in the order imposed by the Lean package
`ReesDefects`. The mathematical story is therefore organized by formal layer: foundations, algebra,
Rees and symmetric interfaces, intermediate defect packages, normalized and first-coefficient
systems, fiber-cone constructions, asymptotic wrappers, and the final theorem layer. Whenever Lean
proves a statement only relative to an abstract package of hypotheses, the corresponding statement
below is recorded in that same conditional form. Whenever Lean introduces an axiomatized placeholder
rather than a construction, that fact is stated explicitly.

The central output remains the same. The formal development isolates degreewise quotients
$$
D_n = U_n/I^n,\qquad C_n = N_n/U_n,\qquad B_n = N_n/I^n,
$$
packages the reduced comparison map, and proves the defect identity
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n),
$$
together with the index formula
$$
\lambda(\ker \phi_n^r)=\lambda(\operatorname{coker}\phi_n^r)+\lambda(E_n).
$$
In the concrete first-coefficient layer one specializes $U_n$ to the first coefficient ideal
$(I^n)_1$, interprets $N_n$ as the chosen closure-power system, and obtains the formal versions
of Theorem A, the fiber-corrected bridge theorem, and the linear-type corollary.

## Introduction

The original research article presents a single mathematical narrative. The Lean package does not.
Instead, it builds the argument through a sequence of interfaces. This rewritten article follows
that formal architecture exactly. Each directory of the package becomes a section, and each file is
translated into mathematical prose using definition-theorem-proposition-lemma blocks.

Unless otherwise stated, $A$ is a commutative ring and $I \subseteq A$ is an ideal. Later
sections introduce stronger hypotheses, such as domain hypotheses for normalized Rees algebras or
abstract first-coefficient packages encoding the $R_1$ criterion. We state these hypotheses where
they appear in Lean rather than moving them elsewhere.

## 1. `ReesDefects/Foundations`

### 1.1. `FiniteLengthNat.lean`

**Definition.** For an $R$-module $M$, define the nat-valued finite length
$$
\operatorname{finLengthNat}_R(M):=\operatorname{toNat}(\operatorname{length}_R(M)).
$$
This is the paper-facing version of module length used throughout the package.

**Theorem.** $M$ has finite length if and only if $\operatorname{length}_R(M)\neq \top$.

**Proposition.** If $M$ has finite length, then $\operatorname{finLengthNat}_R(M)$ viewed in
$\mathbb N_\infty$ is exactly $\operatorname{length}_R(M)$.

**Proposition.** If $M$ has finite length, then
$$
\operatorname{finLengthNat}_R(M)=0
\iff
M \text{ is subsingleton}.
$$

**Lemma.** Nat-valued finite length is invariant under linear equivalence.

**Theorem.** For an exact sequence
$$
0 \to N \xrightarrow{f} M \xrightarrow{g} P \to 0
$$
with $N$ and $P$ of finite length,
$$
\operatorname{finLengthNat}_R(M)
=
\operatorname{finLengthNat}_R(N)+\operatorname{finLengthNat}_R(P).
$$

### 1.2. `ExactLength.lean`

**Definition.** For a linear map $\phi:P\to Q$, the formal cokernel model is
$$
\operatorname{linearCokernel}(\phi):=Q/\operatorname{range}(\phi).
$$

**Proposition.** If $P$ has finite length, then
$$
\operatorname{finLengthNat}_R(P)
=
\operatorname{finLengthNat}_R(\ker \phi)
+\operatorname{finLengthNat}_R(\operatorname{range}\phi).
$$

**Proposition.** If $Q$ has finite length, then
$$
\operatorname{finLengthNat}_R(Q)
=
\operatorname{finLengthNat}_R(\operatorname{range}\phi)
+\operatorname{finLengthNat}_R(\operatorname{linearCokernel}(\phi)).
$$

**Theorem.** Suppose $P$ and $Q$ have finite length and $E$ is another finite-length module
such that
$$
\operatorname{finLengthNat}_R(P)
=
\operatorname{finLengthNat}_R(Q)+\operatorname{finLengthNat}_R(E).
$$
Then
$$
\operatorname{finLengthNat}_R(\ker \phi)
=
\operatorname{finLengthNat}_R(\operatorname{linearCokernel}(\phi))
+\operatorname{finLengthNat}_R(E).
$$
This is the abstract index calculation used later for the reduced comparison map.

### 1.3. `ScalarTorsion.lean`

**Definition.** For $r\in R$, the package defines the scalar endomorphism
$$
\mu_r:M\to M,\qquad x\mapsto rx.
$$

**Definition.** The $r$-torsion submodule is
$$
0:_M r = \ker(\mu_r).
$$

**Definition.** The scalar quotient is
$$
M/rM := M/\operatorname{range}(\mu_r).
$$

**Proposition.** If $M$ has finite length, then
$$
\operatorname{finLengthNat}_R(M)
=
\operatorname{finLengthNat}_R(0:_M r)
+\operatorname{finLengthNat}_R(rM).
$$

**Proposition.** If $M$ has finite length, then
$$
\operatorname{finLengthNat}_R(M)
=
\operatorname{finLengthNat}_R(rM)
+\operatorname{finLengthNat}_R(M/rM).
$$

**Theorem.** If $M$ has finite length, then
$$
\operatorname{finLengthNat}_R(0:_M r)
=
\operatorname{finLengthNat}_R(M/rM).
$$

### 1.4. `ScalarSnake.lean`

**Definition.** A linear map $f:D\to B$ induces a map on $r$-torsion
$$
f[r]:(0:_D r)\to(0:_B r)
$$
and a map on scalar quotients
$$
\overline f:D/rD\to B/rB.
$$

**Lemma.** Scalar multiplication commutes with every linear map. This is the compatibility needed
to invoke the snake lemma.

**Definition.** Given an exact sequence
$$
0\to D \xrightarrow{d} B \xrightarrow{q} C \to 0,
$$
the snake lemma produces a connecting map
$$
\delta:C[r]\to D/rD.
$$
In Lean this is `snakeDelta`.

**Lemma.** The induced sequence
$$
D[r]\to B[r]\to C[r]
$$
is exact.

**Lemma.** The induced sequence
$$
C[r]\xrightarrow{\delta} D/rD \to B/rB
$$
is exact.

**Theorem.** If $D,B,C$ all have finite length, then
$$
\lambda(B/rB)=\lambda(D[r])+\lambda(C[r])-\lambda(\operatorname{im}\delta).
$$
This is the scalar-snake identity that later becomes the defect decomposition
$\nu_r=d_r+\kappa_r-\tau_r$.

### 1.5. `SubquotientBounds.lean`

**Lemma.** A submodule of a finite-length module has length bounded by the ambient length.

**Lemma.** A quotient of a finite-length module has length bounded by the ambient length.

**Proposition.** Any subquotient of a finite-length module has length bounded by the ambient
length.

## 2. `ReesDefects/Algebra`

### 2.1. `ColonAnnihilator.lean`

**Definition.** For submodules $L,J\subseteq M$, the quotient $J/(L\cap J)$ is identified with
the image of $J$ in $M/L$.

**Theorem.** For submodules $L,J\subseteq M$,
$$
\operatorname{Ann}_R(J \text{ viewed in } M/L)=L:J.
$$

**Theorem.** If $L\subseteq J$, then
$$
\operatorname{Ann}_R(J/L)=L:J.
$$

**Corollary.** For ideals $L\subseteq J$ in a commutative ring,
$$
\operatorname{Ann}_R(J/L)=L:J.
$$
This is the formal conductor identity underlying the equation-defect side of the package.

### 2.2. `QuotientModulesOfIdeals.lean`

**Definition.** For ideals $L\subseteq J$, define the quotient module
$$
\operatorname{QuotientModule}(L,J):=J/L,
$$
realized internally as a quotient of submodules of the ambient ring.

**Theorem.** For ideals $L\subseteq J$,
$$
\operatorname{Ann}_R(\operatorname{QuotientModule}(L,J))=L:J.
$$

**Proposition.** The quotient module $J/L$ is nontrivial if and only if the inclusion is strict:
$$
J/L \neq 0 \iff L\neq J.
$$

### 2.3. `SupportDimension.lean`

**Definition.** The predicate `supportDimLEOne` means
$$
\operatorname{supportDim}_R(M)\le 1.
$$

**Lemma.** Support dimension at most one descends along injective maps.

**Lemma.** Support dimension at most one ascends along surjective maps.

**Theorem.** For an ideal $I$,
$$
\operatorname{supportDim}_R(R/I)=\dim(R/I).
$$

## 3. `ReesDefects/Rees` and `ReesDefects/Symmetric`

### 3.1. `Rees/Basic.lean`

**Definition.** The Rees algebra of $I$ is written as `ReesElem I`; mathematically this is
$\mathcal R(I)\subseteq A[X]$.

**Theorem.** A polynomial $f$ belongs to the Rees algebra if and only if each coefficient lies in
the matching power:
$$
f\in \mathcal R(I)
\iff
\forall n,\ \operatorname{coeff}_n(f)\in I^n.
$$

**Corollary.** A monomial $rX^n$ lies in $\mathcal R(I)$ if and only if $r\in I^n$.

**Theorem.** The Rees algebra is generated by degree-one monomials coming from $I$, and it is
finitely generated whenever $I$ is finitely generated.

### 3.2. `Rees/DegreePieces.lean`

**Definition.** The degree-$n$ piece of the Rees algebra is represented by the ideal power
$$
\mathcal R(I)_n \cong I^n.
$$

**Definition.** There is a coefficient map
$$
\mathcal R(I)\to I^n
$$
and an insertion map
$$
I^n\to \mathcal R(I),\qquad x\mapsto xX^n.
$$

**Lemma.** The insertion map has coefficient $x$ in degree $n$ and coefficient $0$ in every
other degree.

### 3.3. `Rees/CanonicalGenerators.lean`

**Definition.** For $x\in I$, the canonical degree-one generator is the monomial $xX$.

**Proposition.** Its degree-one coefficient is $x$, and every other coefficient is $0$.

**Theorem.** The range of the canonical degree-one generators is exactly the standard degree-one
submodule used by Mathlib to generate the Rees algebra.

**Theorem.** The Rees algebra is generated by these degree-one generators.

### 3.4. `Symmetric/Basic.lean`

**Definition.** The symmetric algebra on an $R$-module $M$ is written
$\operatorname{Sym}_R(M)$.

**Theorem.** If $f:M\to A$ is linear, then the universal algebra map
$\operatorname{Sym}_R(M)\to A$ evaluates on generators exactly as $f$.

**Definition.** A `DegreewiseData` package for an ideal $I$ consists of modules `piece n` for
each degree $n$ together with distinguished degree-one generators indexed by elements of $I$.

### 3.5. `Symmetric/DegreeModel.lean`

**Definition.** A `DegreeModel` for $I$ consists of:
$$
\text{degreewise modules } S_n,\qquad
S_n \twoheadrightarrow I^n,
$$
with a specified kernel `defect n`, surjectivity in every degree, and compatibility between
degree-one generators on the symmetric side and canonical generators on the Rees side.

**Proposition.** For each $n$, membership in the defect piece is equivalent to vanishing under the
map $S_n\to I^n$.

**Theorem.** For each $n$, the sequence
$$
0\to \operatorname{defect}_n \to S_n \to I^n \to 0
$$
is exact.

### 3.6. `Symmetric/FreeCoverPresentation.lean`

**Definition.** A `FreeCoverPresentation` of $I$ is a free $R$-module $F$ together with a
surjection $F\twoheadrightarrow I$.

**Proposition.** The universal map from $F$ into $\operatorname{Sym}_R(F)$ behaves on
generators exactly as expected.

**Lemma.** Every element of $I$ has a preimage in the chosen free cover.

### 3.7. `Rees/SymmToRees.lean`

**Definition.** From a degree model one obtains a degreewise map
$$
S_n\to I^n.
$$

**Proposition.** This map preserves zero and addition.

**Theorem.** In degree one it sends the chosen symmetric generators to the canonical Rees
generators.

### 3.8. `Rees/EquationDefectKernel.lean`

**Definition.** The degree-$n$ equation defect piece is the kernel of the degreewise map from the
symmetric model to $I^n$.

**Proposition.** An element lies in the equation defect piece if and only if its degreewise image in
$I^n$ vanishes.

**Theorem.** For each degree $n$, the equation defect piece sits in an exact sequence
$$
0\to E_n \to S_n\to I^n\to 0.
$$

## 4. `ReesDefects/Intermediate`

### 4.1. `SandwichedPowerFamily.lean`

**Definition.** A sandwiched power family consists of two ideal families $(U_n)$ and $(N_n)$
such that
$$
I^n \subseteq U_n \subseteq N_n,
$$
with multiplicative compatibility
$$
U_mU_n\subseteq U_{m+n},\qquad N_mN_n\subseteq N_{m+n}.
$$

**Definition.** The three degreewise defect quotients are
$$
D_n := U_n/I^n,\qquad
C_n := N_n/U_n,\qquad
B_n := N_n/I^n.
$$

**Definition.** For $r\in A$, the package introduces
$$
I^n+rU_n,\qquad I^n+rN_n,\qquad U_n\cap (I^n+rN_n),
$$
and defines the explicit intersection quotient
$$
\tau^{\mathrm{int}}_r(n)
\cong
\frac{U_n\cap (I^n+rN_n)}{I^n+rU_n}.
$$

### 4.2. `DegreewiseDefects.lean`

**Definition.** A `DegreewiseDefectPackage` is a sandwiched power family together with exact
degreewise maps
$$
D_n \xrightarrow{} B_n \xrightarrow{} C_n
$$
such that
$$
0\to D_n\to B_n\to C_n\to 0
$$
is exact in every degree, each module has finite length, and the snake-lemma boundary image is
identified with the explicit intersection quotient above.

**Definition.** For $r\in A$, define
$$
d_r(n):=\lambda(D_n[r]),\qquad
\kappa_r(n):=\lambda(C_n[r]),\qquad
\nu_r(n):=\lambda(B_n/rB_n),
$$
and
$$
\tau_r(n):=\lambda(\operatorname{im}\partial_n^r).
$$

**Theorem.** For every $n$ and $r$,
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n).
$$

**Theorem.** The interaction term equals the explicit intersection length:
$$
\tau_r(n)
=
\lambda\!\left(
\frac{U_n\cap (I^n+rN_n)}{I^n+rU_n}
\right).
$$

**Corollary.** Hence
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r^{\mathrm{int}}(n).
$$

### 4.3. `ReducedComparisonData.lean`

**Definition.** A `ReducedComparisonData` package extends a degreewise defect package by
introducing, for each $n$ and $r$, a comparison map
$$
\phi_n^r:\operatorname{source}_n \to B_n/rB_n,
$$
finite-length hypotheses on its kernel and cokernel, and a sequence of integers
$\lambda(E_n)$ encoding equation-defect lengths.

**Theorem.** The package proves the abstract index formula
$$
\lambda(\ker \phi_n^r)
=
\lambda(\operatorname{coker}\phi_n^r)+\lambda(E_n).
$$

**Corollary.** If one separately identifies $\operatorname{coker}\phi_n^r$ with $\nu_r(n)$,
then
$$
\lambda(\ker \phi_n^r)=\nu_r(n)+\lambda(E_n).
$$

## 5. `ReesDefects/Normalized`

### 5.1. `ClosurePower.lean`

**Definition.** A `ClosurePowerSystem` is a family of ideals $\operatorname{closurePow}(n)$
satisfying
$$
I^n \subseteq \operatorname{closurePow}(n),\qquad
\operatorname{closurePow}(m)\operatorname{closurePow}(n)
\subseteq
\operatorname{closurePow}(m+n).
$$

**Definition.** If $A$ is a domain, the package maps these ideals into the fraction field and
defines the normalized Rees algebra to be the polynomial subalgebra
$$
\mathcal R_N(I)
:=
\left\{
f\in \operatorname{Frac}(A)[X] \mid
\operatorname{coeff}_n(f)\in \operatorname{closurePow}(n)\operatorname{Frac}(A)
\text{ for all } n
\right\}.
$$

**Theorem.** Membership in the normalized Rees algebra is coefficientwise membership in the mapped
closure ideals.

**Corollary.** A monomial $xX^n$ lies in the normalized Rees algebra if and only if
$x$ lies in the mapped closure ideal in degree $n$.

**Lemma.** The mapped ideal power $I^n\operatorname{Frac}(A)$ lies inside the mapped closure
ideal in degree $n$.

### 5.2. `DegreePieces.lean`

**Definition.** The degree-$n$ piece of the normalized Rees algebra is represented by the mapped
closure ideal in degree $n$.

**Definition.** There are coefficient and insertion maps
$$
\mathcal R_N(I)\to N_n,\qquad N_n \to \mathcal R_N(I),\quad x\mapsto xX^n.
$$

**Lemma.** The insertion map has coefficient $x$ in degree $n$ and coefficient $0$ in the
other degrees.

### 5.3. `Basic.lean`

**Definition.** A `BasicSystem` consists of a closure-power system together with an intermediate
family $U_n$ satisfying
$$
I^n \subseteq U_n \subseteq \operatorname{closurePow}(n).
$$

**Proposition.** Such a system induces a sandwiched power family with lower terms $U_n$ and upper
terms $\operatorname{closurePow}(n)$.

## 6. `ReesDefects/FirstCoefficient`

### 6.1. `Axioms.lean`

**Definition.** `ReesR1 A I` is the abstract predicate expressing that the Rees algebra of $I$
satisfies Serre's $R_1$ condition.

**Definition.** A `FirstCoefficientLike` package extends a normalized basic system by requiring:

1. finite length of
   $$
   D_n=U_n/I^n,\qquad C_n=\operatorname{closurePow}(n)/U_n;
   $$
2. support-dimension control
   $$
   \operatorname{supportDim}(D_n)\le 1;
   $$
3. a dichotomy for the correction term
   $$
   \operatorname{supportDim}(C_n)=0 \text{ or } \top;
   $$
4. the $R_1$ criterion
   $$
   \operatorname{ReesR1}(A,I)
   \iff
   \forall n,\ \operatorname{closurePow}(n)=U_n.
   $$

**Definition.** A `DegreewiseDefectAxioms` package extends the first-coefficient interface by
providing exact sequences
$$
0\to D_n\to B_n\to C_n\to 0
$$
and an explicit equivalence between the snake-lemma image and the intersection quotient defining
$\tau_r(n)$.

**Definition.** A `ReducedComparisonAxioms` package extends this further by specifying the reduced
comparison maps, finite-length kernel and cokernel data, equation-defect lengths, and the index
formula.

### 6.2. `ConcreteDefinition.lean`

**Axiom.** The package introduces an axiomatized family
$$
(I^n)_1
:
\mathbb N\to \{\text{ideals of }A\},
$$
called `puthenpurakalFirstCoefficientIdeal`.

**Definition.** A `ConcreteDefinition` is a `FirstCoefficientLike` package for which
$$
U_n=(I^n)_1
$$
for every $n$.

**Axiom.** The file postulates a concrete instance
$$
\operatorname{concreteDefinition}(A,I).
$$
This is a placeholder until the full first-coefficient ideal construction is internalized in Lean.

### 6.3. `GlobalPackage.lean`

**Definition.** A `GlobalPackage` is the full first-coefficient package: it contains all axioms
needed for the degreewise defect package and the reduced comparison package.

**Proposition.** Every global package forgets to:

1. a first-coefficient interface;
2. a degreewise defect package;
3. a reduced comparison package.

**Theorem.** The global package inherits the criterion
$$
\operatorname{ReesR1}(A,I)
\iff
\forall n,\ \operatorname{closurePow}(n)=U_n.
$$

## 7. `ReesDefects/Fiber`

### 7.1. `ResidueFieldBaseChange.lean`

**Definition.** A `ResidueFieldBaseChange` package consists of a field $k$ with an $A$-algebra
structure. It serves as the abstract residue field in the fiber layer.

**Definition.** For an $A$-module $M$, its base change is
$$
k\otimes_A M.
$$

**Definition.** There is a canonical tensor inclusion
$$
M\to k\otimes_A M,\qquad m\mapsto 1\otimes m.
$$

### 7.2. `FiberCone.lean`

**Definition.** The fiber cone is
$$
F(I):=k\otimes_A \mathcal R(I).
$$

**Definition.** The canonical map from the Rees algebra to the fiber cone is
$$
\mathcal R(I)\to F(I),\qquad x\mapsto 1\otimes x.
$$

### 7.3. `SymmetricBaseChange.lean`

**Definition.** The file isolates the assertion that symmetric algebra commutes with base change:
$$
\operatorname{Sym}_A(M)\otimes_A k
\cong
\operatorname{Sym}_k(M\otimes_A k).
$$

**Remark.** In Lean this appears as an abstract typeclass `HasEquiv`; the equivalence is used
downstream but is not constructed in this file.

### 7.4. `FiberEquationIdeal.lean`

**Definition.** A `FiberEquationData` package consists of residue-field base-change data, a chosen
$k$-vector space $V$, a model of the fibered equation defect $E/\mathfrak mE$, a chosen
carrier for the fiber cone, and a presentation map
$$
\operatorname{Sym}_k(V)\to F(I).
$$

**Definition.** The fiber equation ideal is
$$
J_{\mathrm{fib}}
:=
\ker(\operatorname{Sym}_k(V)\to F(I)).
$$

**Definition.** Proposition A.1 is recorded abstractly as the existence of a right-exact sequence
$$
\operatorname{Tor}_1^A(k,\mathcal R(I)) \to E/\mathfrak mE \to J_{\mathrm{fib}} \to 0.
$$

### 7.5. `RightExactBridge.lean`

**Definition.** A `HasRightExactBridge` package is a surjective map
$$
E/\mathfrak mE \twoheadrightarrow J_{\mathrm{fib}}.
$$

**Remark.** This is the part of the bridge presently formalized directly and used by the main
theorem layer.

### 7.6. `TorSequenceFuture.lean`

**Definition.** A `FutureTorSequenceData` package records the missing Tor$_1$-term and the exact
segment
$$
\operatorname{Tor}_1^A(k,\mathcal R(I)) \to E/\mathfrak mE \to J_{\mathrm{fib}} \to 0
$$
as future data.

**Remark.** The file explicitly states that current Mathlib infrastructure does not yet provide the
Tor long exact sequence needed for a direct proof. Accordingly, this layer is a placeholder for
future completion rather than a fake proof.

## 8. `ReesDefects/Asymptotics`

### 8.1. `GradedSupport.lean`

**Definition.** For a first-coefficient package $F$, define
$$
d\operatorname{Support}(n):=\operatorname{supportDim}(D_n),\qquad
c\operatorname{Support}(n):=\operatorname{supportDim}(C_n).
$$

**Theorem.** One has
$$
\operatorname{supportDim}(D_n)\le 1.
$$

**Theorem.** For each $n$,
$$
\operatorname{supportDim}(C_n)=0
\quad\text{or}\quad
\operatorname{supportDim}(C_n)=\top.
$$

### 8.2. `HilbertLength.lean`

**Definition.** A function $f:\mathbb N\to\mathbb N$ has polynomial growth of degree at most
$e$ if there exists $C\in \mathbb N$ such that
$$
f(n)\le C(n+1)^e
$$
for all $n$.

**Definition.** A function $f:\mathbb N\to\mathbb N$ is eventually polynomial of degree $e$ if
it agrees for all large $n$ with a polynomial of nat-degree $e$.

**Definition.** A `HilbertGrowth` package for dimension parameter $d$ consists of:

1. a bound
   $$
   \lambda(D_n)=O(n^{d-2});
   $$
2. eventual polynomial behavior of the torsion slices
   $$
   \lambda(C_n[r])
   \text{ has eventual degree } d-1
   $$
   for each $r\in A$.

**Theorem.** These two conclusions are extracted directly from the `HilbertGrowth` structure.

### 8.3. `DegreeBounds.lean`

**Definition.** The package introduces the paper-facing functions
$$
d(n):=\lambda(D_n),\qquad
\kappa_r(n):=\lambda(C_n[r]).
$$

**Theorem.** Under a `HilbertGrowth` hypothesis,
$$
d(n)=O(n^{d-2}).
$$

**Theorem.** Under the same hypothesis, $\kappa_r(n)$ is eventually polynomial of degree
$d-1$.

## 9. `ReesDefects/Main`

### 9.1. `AbstractDefectDecomposition.lean`

**Theorem.** For any degreewise defect package,
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r(n).
$$

**Theorem.** The interaction term equals the explicit intersection quotient.

**Corollary.** Therefore
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r^{\mathrm{int}}(n).
$$

This file simply repackages the intermediate-layer result into the language used by the main
theorem statements.

### 9.2. `AbstractIndexFormula.lean`

**Theorem.** For any reduced comparison package,
$$
\lambda(\ker \phi_n^r)
=
\lambda(\operatorname{coker}\phi_n^r)+\lambda(E_n).
$$

**Corollary.** If $\operatorname{coker}\phi_n^r$ is identified with $\nu_r(n)$, then
$$
\lambda(\ker \phi_n^r)=\nu_r(n)+\lambda(E_n).
$$

### 9.3. `ConcreteTheoremA123.lean`

**Definition.** A `ConcretePackage` is a global first-coefficient package in which the lower family
really is the first coefficient family:
$$
U_n=(I^n)_1.
$$

**Definition.** The hypothesis class `HasCokernelNuIdentification` asserts that
$$
\lambda(\operatorname{coker}\phi_n^r)=\nu_r(n)
$$
for all $n$ and $r$.

**Theorem A(1).** For every $n$ and $r$,
$$
\lambda(\ker \phi_n^r)
=
\lambda(\operatorname{coker}\phi_n^r)+\lambda(E_n).
$$

**Theorem A(2), first clause.** Under the cokernel identification hypothesis,
$$
\lambda(\operatorname{coker}\phi_n^r)=\nu_r(n).
$$

**Theorem A(2), second clause.** For every $n$ and $r$,
$$
\nu_r(n)=d_r(n)+\kappa_r(n)-\tau_r^{\mathrm{int}}(n).
$$

**Theorem A(3).** The interaction term $\tau_r(n)$ equals the explicit intersection quotient
length.

### 9.4. `ConcreteTheoremA45.lean`

**Definition.** The class `HasAsymptoticDetection` packages the two asymptotic implications
appearing in Theorem A(4):

1. if $\mathcal R(I)$ is $R_1$, then $\nu_r(n)$ has growth degree at most $d-2$;
2. if $\mathcal R(I)$ is not $R_1$, then $\nu_r(n)$ is eventually polynomial of degree
   $d-1$.

**Definition.** The class `HasTrivialDConsequences` packages the consequences of the vanishing of
$\mathcal D$: namely
$$
d_r(n)=0,\qquad \tau_r^{\mathrm{int}}(n)=0.
$$

**Theorem A(4), $R_1$ direction.** Under `HasAsymptoticDetection`,
$$
\mathcal R(I)\text{ is }R_1 \implies \deg \nu_r(n)\le d-2.
$$

**Theorem A(4), non-$R_1$ direction.** Under `HasAsymptoticDetection`,
$$
\mathcal R(I)\text{ not }R_1 \implies \nu_r(n)
\text{ is eventually polynomial of degree } d-1.
$$

**Theorem A(5).** Under `HasTrivialDConsequences`,
$$
d_r(n)=0,\qquad \tau_r^{\mathrm{int}}(n)=0,\qquad \nu_r(n)=\kappa_r(n).
$$

### 9.5. `FiberCorrectedBridge.lean`

**Definition.** Fix a concrete first-coefficient package $P$, fiber equation data $F$, a
dimension parameter $d$, and an element $r\in A$. A `FiberCorrectionData` package consists of:

1. a right-exact bridge $E/\mathfrak mE \twoheadrightarrow J_{\mathrm{fib}}$;
2. future Tor-sequence data for Proposition A.1;
3. the vanishing hypothesis $J_{\mathrm{fib}}=0$;
4. a constant $C$ such that
   $$
   \lambda(E_n)\le C\,\lambda(D_n)
   $$
   for all $n$;
5. the growth bound
   $$
   \lambda(E_n)=O(n^{d-2});
   $$
6. error functions $\varepsilon_{\ker},\varepsilon_{\operatorname{coker}}$ of degree at most
   $d-2$ such that
   $$
   \lambda(\ker \phi_n^r)=\kappa_r(n)+\varepsilon_{\ker}(n),
   $$
   $$
   \lambda(\operatorname{coker}\phi_n^r)=\kappa_r(n)+\varepsilon_{\operatorname{coker}}(n).
   $$

**Theorem B, bound.** Any such package yields
$$
\lambda(E_n)\le C\,\lambda(D_n)
$$
for all $n$.

**Theorem B, growth.** Any such package yields
$$
\lambda(E_n)=O(n^{d-2}).
$$

**Theorem B, kernel asymptotic form.** The kernel length differs from $\kappa_r(n)$ by an error
term of degree at most $d-2$.

**Theorem B, cokernel asymptotic form.** The cokernel length differs from $\kappa_r(n)$ by an
error term of degree at most $d-2$.

This is the formal version of the fiber-corrected bridge: it is not an unconditional theorem in the
current package, but rather a theorem extracted from an explicit bridge-data interface.

### 9.6. `CorollaryLinearType.lean`

**Definition.** `EquationDefectVanishes P` means
$$
\lambda(E_n)=0\qquad\text{for all }n.
$$

**Definition.** A `LinearTypeCriterion` packages a proposition `linearType` together with the
equivalence
$$
\text{linearType}
\iff
\forall n,\ \lambda(E_n)=0.
$$

**Proposition.** Under the fiber-corrected bridge, if $\lambda(D_n)=0$ for all $n$, then
$\lambda(E_n)=0$ for all $n$.

**Corollary C.** If one is given:

1. a linear-type criterion for $P$;
2. fiber-correction data;
3. degreewise vanishing $\lambda(D_n)=0$;

then the package concludes that the ideal is of linear type.

## 10. Formal Status

**Remark.** This rewritten article follows the actual Lean structure rather than the informal order
of discovery. As a result, several statements appear as conditional theorem interfaces instead of
fully unconditional theorems.

**Remark.** Two points are especially important.

1. The first coefficient ideal $(I^n)_1$ is still introduced through an axiomatized placeholder
   in `FirstCoefficient/ConcreteDefinition.lean`.
2. The Tor exact sequence behind Proposition A.1 is recorded as future data in
   `Fiber/TorSequenceFuture.lean`; the presently formalized downstream bridge uses only the
   right-exact surjection $E/\mathfrak mE \twoheadrightarrow J_{\mathrm{fib}}$.

Within those declared interfaces, the package proves the full formal defect decomposition and the
main theorem wrappers with no `sorry`.
