## Method Card
- **Short tag:** finite-flux annular ALF refinement
- **Full name:** Finite-flux and annular-energy refinement of Hermitian ALF Teukolsky control.
- **Input setting:** A Hermitian non-Kähler ALF instanton with weighted Teukolsky field χ, explicit inverse Weyl asymptotics, and profile or annular decay assumptions.
- **New object / driver:** The finite boundary-flux criterion and the annular interpolation package at the Teukolsky-field level.
- **Obstruction resolved:** The original mode-stability proof did not separate finite-flux control, endpoint decay, and annular-energy criteria, so the sharp boundary threshold remained hidden.
- **Expected outputs:** Finite-flux identities, profile-weighted vanishing theorems including endpoint logarithmic cases, an annular-energy rigidity theorem, and explicit verification on Kerr and related families.
- **Transfer targets:** Other ALF stability or critical-decay energy arguments where one needs a boundary criterion finer than a single power law.
- **Main technical risk:** The endpoint regimes are genuinely sharp, so the interpolation between boundary area growth, profile weights, and bulk energy must be exact.
- **Mechanism type:** boundary-layer, spectral cancellation, asymptotic matching
- **Tags:** finite-flux, annular-energy, Teukolsky, ALF-instanton, profile-weight, mode-stability
- **Method link:** ../methods/finite_flux_annular_alf_refinement.md

**Condensation.** The new viewpoint is to analyze Hermitian ALF mode stability first at the Teukolsky-field level, where finite flux and annular energy can be stated cleanly before being transferred back to perturbations. This overcomes the obstruction that the original theorem mixed the geometric perturbation decay with the actual boundary criterion and obscured the endpoint behavior. The operative mechanism is a positive boundary-flux identity sharpened by profile weights and dyadic annular estimates, all under the explicit inverse Weyl asymptotic needed to control the boundary density. If it works, it yields finite-flux conservation, vanishing theorems at and above the critical threshold, and practical rigidity criteria that can be checked on explicit ALF families.

# Finite-Flux, Profile-Weighted, and Annular-Energy Refinements of Hermitian ALF Mode Stability

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

Let $(M,g,J)$ be a Hermitian non-Kähler ALF gravitational instanton and let
$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0
$$
be the weighted linearized extreme Weyl scalar associated with a linearized vacuum perturbation $h$.
The mode-stability theorem of Andersson--Araneda--Dahl is based on a positive boundary-flux identity for $\chi$.
We revisit that identity under the explicit inverse Weyl asymptotic
$$
\Psi_2^{-1}=O(r^3),
$$
which is the precise background input needed to control the factor $\Psi_2^{-4/3}$ in the boundary term.

Our first result is a profile-controlled finite-flux theorem at the Teukolsky-field level.
If
$$
\chi=O\bigl(r^{-2-\gamma}\omega(r)\bigr),
\qquad
\nabla\chi=O\bigl(r^{-3-\gamma}\omega(r)\bigr),
$$
and
$$
\sup_{R\ge R_0} R^{1-2\gamma}\omega(R)^2<\infty,
$$
then the boundary flux is real, nonnegative, monotone, and converges to a finite limit equal to the bulk Teukolsky energy.
If in addition
$$
R^{1-2\gamma}\omega(R)^2\to 0,
$$
then $\chi\equiv 0$.
This isolates the exact boundary criterion behind the positive-flux method.

Transferring the estimate through the linearized Weyl formula yields a profile-weighted mode-stability theorem for perturbations.
In particular, if
$$
\nabla^k h=O(r^{-\gamma-k}),
\qquad
0\le k\le 3,
$$
for some $\gamma>\tfrac12$, then $\vartheta\Psi_0=0$.
We also obtain the endpoint consequences
$$
\nabla^k h=o(r^{-1/2-k})
\quad\Longrightarrow\quad
\vartheta\Psi_0=0
$$
and
$$
\nabla^k h=O\bigl(r^{-1/2-k}(\log r)^{-s}\bigr),\ s>0
\quad\Longrightarrow\quad
\vartheta\Psi_0=0.
$$
At the critical rate $\gamma=\tfrac12$, the theorem yields finite flux rather than automatic vanishing.

Our second main result is an annular interpolation theorem.
For $p\in[\tfrac13,1]$, if
$$
\int_M \Psi_2^{-4/3}|C\chi|^2\,d\mu<\infty
$$
and
$$
2^{3(1-p)j}\int_{\{2^j<r<2^{j+1}\}}\Psi_2^{-p}|\chi|^2\,d\mu\to 0,
$$
then $\chi\equiv 0$.
The case $p=1$ recovers the dyadic energy theorem from the source notes, while $p=\tfrac13$ makes precise the gap to the natural bulk norm suggested by the basic positive identity.

Finally, we verify directly that $\Psi_2^{-1}=O(r^3)$ on the explicit Euclidean Kerr and Taub-bolt families, and we record the corresponding $r^{-3}$ asymptotic for Chen--Teo from its explicit coordinate formula.

## 1. Introduction

Hermitian gravitational instantons form a very rigid corner of four-dimensional Einstein geometry.
They are complete Ricci-flat manifolds, but they also carry enough complex and conformal structure that curvature perturbations can be encoded in a distinguished scalar Teukolsky field.
In the Hermitian ALF setting, Andersson, Araneda, and Dahl proved mode stability by showing that the weighted scalar
$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0
$$
satisfies a positive flux identity whose boundary term vanishes under the standard ALF perturbation decay
$$
\nabla^k h=O(r^{-1-k}).
$$

The purpose of the present article is to extract the exact threshold carried by that identity and to push the same method in two further directions.
The first direction is boundary-theoretic: instead of working with a fixed power law, we isolate the profile
$$
R^{1-2\gamma}\omega(R)^2
$$
as the single quantity governing the boundary argument.
This yields not only vanishing theorems but also a critical finite-flux statement at $\gamma=\tfrac12$.
The second direction is energetic: we prove an annular interpolation theorem that extends the dyadic energy argument appearing in the source notes and measures exactly how far the natural bulk norm is from closing the flux estimate by itself.

There is one background issue that must be stated explicitly.
The boundary identity contains the factor $\Psi_2^{-4/3}$.
From the one-sided curvature decay $\Psi_2=O(r^{-3})$ one cannot conclude any upper bound on $\Psi_2^{-4/3}$.
Thus every weighted argument of the present type requires a genuine inverse asymptotic, and we assume throughout that
$$
\Psi_2^{-1}=O(r^3).
$$
This is not an artificial embellishment; it is the precise extra hypothesis needed to turn the heuristic power count into a proof.

Our main theorems may be summarized as follows.

1. At the scalar Teukolsky level, profile control of $\chi$ and $\nabla\chi$ gives a finite monotone boundary flux, and vanishing follows exactly when that flux tends to zero.
2. At the perturbation level, the linearized Weyl formula transfers the decay of $h$ to the decay of $\chi$, giving the sharp power-law theorem $\gamma>\tfrac12$, together with endpoint little-$o$ and logarithmic refinements.
3. At the bulk level, annular shell control of $\Psi_2^{-p}|\chi|^2$ interpolates between the dyadic theorem at $p=1$ and the natural bulk weight $p=\tfrac13$ suggested by the positive identity.

The article is organized as follows.
Section 2 recalls the geometric setup, the positive flux identity, and the basic decay lemmas.
Section 3 proves the profile-controlled finite-flux theorem for Teukolsky fields.
Section 4 transfers that theorem to linearized vacuum perturbations.
Section 5 proves the annular interpolation theorem and its dyadic corollary.
Section 6 verifies the inverse Weyl asymptotic on explicit families.
Section 7 discusses the critical regime and several remaining open directions.

## 2. Setup and Basic Lemmas

We retain the notation of [AAD].
Let $(M,g,J)$ be a Hermitian non-Kähler ALF gravitational instanton.
Let $r$ be a smooth radius function on the end, and let
$$
V_R=\{r<R\}
$$
for $R$ sufficiently large.
We use only the following standard asymptotic information:
$$
\operatorname{Area}(\partial V_R)=O(R^2),
\qquad
|\operatorname{Rm}|=O(r^{-3}),
\qquad
|\nabla\operatorname{Rm}|=O(r^{-4}).
$$
We also assume throughout that
$$
\Psi_2>0,
\qquad
\Psi_2^{-1}=O(r^3)
$$
on the end.

Let
$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0.
$$
By Corollary 2.4 of [AAD], $\chi$ satisfies the Teukolsky equation
$$
L[\chi]=0.
$$
If $V\subset M$ is a compact domain with smooth boundary, the positive identity of [AAD, Lemma 2.6] reads
$$
0
=
\int_{\partial V}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
-
\int_V \Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$
Here $C_a$ is the GHP connection, $n$ is the outer unit normal to $\partial V$, and the scalar $\chi$ has weights $(-3,4)$.

For later use we define the boundary flux
$$
\mathcal F(R):=
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
$$
for large regular values of $R$.

### Lemma 2.1

Under the standing assumptions,
$$
\Psi_2^{-4/3}=O(r^4),
\qquad
\Psi_2^{-1/3}=O(r).
$$

#### Proof

The assumption $\Psi_2^{-1}=O(r^3)$ implies
$$
\Psi_2^{-4/3}
=
\bigl(\Psi_2^{-1}\bigr)^{4/3}
=
O(r^4)
$$
and
$$
\Psi_2^{-1/3}
=
\bigl(\Psi_2^{-1}\bigr)^{1/3}
=
O(r).
$$
$\square$

### Lemma 2.2

Let $f_a$ be the Lee form of the conformally Kähler structure.
Then
$$
f=O(r^{-1}).
$$

#### Proof

By [AAD, Remark 2.1(5)], there exists a scalar $\varphi$ of weights $(-1,0)$ such that
$$
C_a\varphi=0,
\qquad
\varphi\propto\Psi_2^{1/3}.
$$
Since the weight formula for $C_a$ on a $(-1,0)$ scalar is
$$
C_a\varphi=\nabla_a\varphi-f_a\varphi,
$$
we obtain
$$
f_a=\nabla_a\log\varphi=\frac13\nabla_a\log\Psi_2.
$$
Now $\Psi_2$ is a curvature component, so $|\nabla\Psi_2|=O(r^{-4})$ follows from $|\nabla\operatorname{Rm}|=O(r^{-4})$.
Combining this with $\Psi_2^{-1}=O(r^3)$ gives
$$
|f|
\le \frac13 |\nabla\Psi_2|\,|\Psi_2|^{-1}
=
O(r^{-4})\,O(r^3)
=
O(r^{-1}).
$$
$\square$

### Lemma 2.3

For the scalar $\chi$ of weights $(-3,4)$,
$$
\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)
=
\operatorname{Re}\!\bigl(\overline{\chi}\,n^a\nabla_a\chi\bigr)-3(n\cdot f)|\chi|^2.
$$

#### Proof

The GHP connection on a scalar of weights $(-3,4)$ has the form
$$
C_a\chi=\nabla_a\chi-3f_a\chi+4P_a\chi,
$$
where $P_a$ is purely imaginary.
Therefore
$$
\overline{\chi}\,n^aC_a\chi
=
\overline{\chi}\,n^a\nabla_a\chi
-3(n\cdot f)|\chi|^2
+4(n\cdot P)|\chi|^2,
$$
and the last term has zero real part.
$\square$

### Lemma 2.4

Let $\chi$ satisfy the Teukolsky equation.
If there exists an exhaustion $R_j\to\infty$ such that
$$
\mathcal F(R_j)\to 0,
$$
then
$$
\chi\equiv 0.
$$

#### Proof

Apply the positive identity on $V_{R_j}$:
$$
\mathcal F(R_j)
=
\int_{V_{R_j}}\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$
Passing to the limit and using $\mathcal F(R_j)\to 0$ gives
$$
0=
\int_M\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$
Because $\Psi_2>0$, the integrand is pointwise nonnegative and therefore vanishes identically.
In particular, $\chi\equiv 0$.
$\square$

## 3. Profile-Controlled Boundary Flux

We first work directly with the Teukolsky field.

### Theorem 3.1 (Profile-Controlled Finite Flux)

Let $(M,g,J)$ satisfy the standing assumptions of Section 2.
Let $\chi$ be a scalar of weights $(-3,4)$ satisfying the Teukolsky equation.
Assume that for some $\gamma\in\mathbb R$ and some positive function $\omega$,
$$
\chi=O\bigl(r^{-2-\gamma}\omega(r)\bigr),
\qquad
\nabla\chi=O\bigl(r^{-3-\gamma}\omega(r)\bigr).
$$
Assume moreover that
$$
\sup_{R\ge R_0} R^{1-2\gamma}\omega(R)^2<\infty
$$
for some $R_0$.
Then the following hold.

1. $\mathcal F(R)$ is real, nonnegative, and monotone increasing for large regular values of $R$.
2. One has the boundary estimate
   $$
   \mathcal F(R)=O\bigl(R^{1-2\gamma}\omega(R)^2\bigr).
   $$
   In particular, $\mathcal F(R)$ is bounded.
3. The limit
   $$
   \mathcal F_\infty:=\lim_{R\to\infty}\mathcal F(R)
   $$
   exists and satisfies
   $$
   \mathcal F_\infty
   =
   \int_M\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu<\infty.
   $$
4. If, in addition,
   $$
   R^{1-2\gamma}\omega(R)^2\to 0,
   $$
   then
   $$
   \chi\equiv 0.
   $$

#### Proof

By Lemma 2.3 and the assumed decay of $\chi$ and $\nabla\chi$,
$$
\operatorname{Re}\!\bigl(\overline{\chi}\,n^a\nabla_a\chi\bigr)
=
O\bigl(r^{-5-2\gamma}\omega(r)^2\bigr).
$$
Lemma 2.2 gives $f=O(r^{-1})$, so
$$
(n\cdot f)|\chi|^2
=
O(r^{-1})\,O\bigl(r^{-4-2\gamma}\omega(r)^2\bigr)
=
O\bigl(r^{-5-2\gamma}\omega(r)^2\bigr).
$$
Hence Lemma 2.3 yields
$$
\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)
=
O\bigl(r^{-5-2\gamma}\omega(r)^2\bigr).
$$
After multiplying by Lemma 2.1,
$$
\Psi_2^{-4/3}\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)
=
O\bigl(r^{-1-2\gamma}\omega(r)^2\bigr).
$$
Since $\mathcal F(R)$ is real by the positive identity,
$$
\mathcal F(R)
=
\int_{\partial V_R}\Psi_2^{-4/3}\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)\,d\Sigma.
$$
Using $\operatorname{Area}(\partial V_R)=O(R^2)$, we obtain
$$
\mathcal F(R)
=
O(R^2)\,O\bigl(R^{-1-2\gamma}\omega(R)^2\bigr)
=
O\bigl(R^{1-2\gamma}\omega(R)^2\bigr).
$$
This proves part 2.

Applying the positive identity on $V_R$ gives
$$
\mathcal F(R)
=
\int_{V_R}\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$
The right-hand side is real and nonnegative, and it is monotone increasing in $R$ because the domains $V_R$ are nested.
This proves part 1.

Since part 2 shows that $\mathcal F(R)$ is bounded, the monotone limit
$$
\mathcal F_\infty=\lim_{R\to\infty}\mathcal F(R)
$$
exists and is finite.
Monotone convergence applied to the nonnegative bulk integrand yields part 3.

If the stronger condition
$$
R^{1-2\gamma}\omega(R)^2\to 0
$$
holds, then part 2 gives $\mathcal F(R)\to 0$.
Part 3 therefore implies
$$
\int_M\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu=0.
$$
As in Lemma 2.4, nonnegativity forces $\chi\equiv 0$.
$\square$

### Corollary 3.2 (Profile-Weighted Vanishing)

Under the hypotheses of Theorem 3.1, if
$$
R^{1-2\gamma}\omega(R)^2\to 0,
$$
then
$$
\chi\equiv 0.
$$

#### Proof

This is part 4 of Theorem 3.1.
$\square$

### Corollary 3.3 (Little-$o$ Endpoint)

Under the standing assumptions, if
$$
\chi=o(r^{-5/2}),
\qquad
\nabla\chi=o(r^{-7/2}),
$$
then
$$
\chi\equiv 0.
$$

#### Proof

The same calculation as in Theorem 3.1 gives
$$
\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)=o(r^{-6}).
$$
Multiplying by $\Psi_2^{-4/3}=O(r^4)$ yields
$$
\Psi_2^{-4/3}\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)=o(r^{-2}).
$$
After integrating over $\partial V_R$ and using $\operatorname{Area}(\partial V_R)=O(R^2)$, we obtain
$$
\mathcal F(R)=o(1).
$$
Lemma 2.4 now implies $\chi\equiv 0$.
$\square$

### Corollary 3.4 (Logarithmically Improved Endpoint)

Under the standing assumptions, suppose that for some $s>0$,
$$
\chi=O\bigl(r^{-5/2}(\log r)^{-s}\bigr),
\qquad
\nabla\chi=O\bigl(r^{-7/2}(\log r)^{-s}\bigr).
$$
Then
$$
\chi\equiv 0.
$$

#### Proof

Apply Theorem 3.1 with $\gamma=\tfrac12$ and $\omega(r)=(\log r)^{-s}$.
Then
$$
R^{1-2\gamma}\omega(R)^2=(\log R)^{-2s}\to 0,
$$
so Corollary 3.2 applies.
$\square$

### Remark 3.5 (The Master Power Count)

The proof of Theorem 3.1 uses only the three quantities
$$
\operatorname{Area}(\partial V_R),
\qquad
\Psi_2^{-4/3},
\qquad
\overline{\chi}\,n^aC_a\chi.
$$
If on some other end one had
$$
\operatorname{Area}(\partial V_R)=O(R^\alpha),
\qquad
\Psi_2^{-4/3}=O(R^\beta),
$$
and
$$
\overline{\chi}\,n^aC_a\chi
=
O\bigl(R^{-5-2\gamma}\omega(R)^2\bigr),
$$
then the same argument would produce the threshold condition
$$
R^{\alpha+\beta-5-2\gamma}\omega(R)^2\to 0.
$$
In the Hermitian ALF case, $(\alpha,\beta)=(2,4)$, which is exactly why the critical power is $\gamma=\tfrac12$.

## 4. Transfer from Metric Perturbations

We now return to linearized vacuum perturbations.
The relevant curvature formula is
$$
\vartheta\Psi_{ABCD}
=
\frac12\nabla_{A'(A}\nabla_{B'}{}_{B}h_{CD)}{}^{A'B'}
+\frac14(\operatorname{tr}_gh)\Psi_{ABCD}.
$$

### Proposition 4.1 (Decay Transfer to the Teukolsky Field)

Let $h$ be a linearized vacuum perturbation, so $\vartheta\operatorname{Ric}=0$.
Define
$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0.
$$
Assume that for some $\gamma\in\mathbb R$ and some positive function $\omega$,
$$
\nabla^k h=O\bigl(r^{-\gamma-k}\omega(r)\bigr),
\qquad
0\le k\le 3.
$$
Then
$$
\chi=O\bigl(r^{-2-\gamma}\omega(r)\bigr),
\qquad
\nabla\chi=O\bigl(r^{-3-\gamma}\omega(r)\bigr).
$$

#### Proof

The second-derivative term in the linearized Weyl formula gives
$$
\nabla^2 h=O\bigl(r^{-2-\gamma}\omega(r)\bigr).
$$
The zeroth-order curvature term is lower order:
$$
(\operatorname{tr}_g h)\Psi_{ABCD}
=
O\bigl(r^{-\gamma}\omega(r)\bigr)\,O(r^{-3})
=
O\bigl(r^{-3-\gamma}\omega(r)\bigr).
$$
Hence
$$
\vartheta\Psi_{ABCD}=O\bigl(r^{-2-\gamma}\omega(r)\bigr),
$$
and therefore
$$
\chi=O\bigl(r^{-2-\gamma}\omega(r)\bigr).
$$

Differentiate the formula once.
The leading term comes from $\nabla^3 h$, which satisfies
$$
\nabla^3h=O\bigl(r^{-3-\gamma}\omega(r)\bigr).
$$
Differentiating the curvature term produces
$$
\nabla h * \Psi + h * \nabla\Psi
=
O\bigl(r^{-1-\gamma}\omega(r)\bigr)\,O(r^{-3})
+O\bigl(r^{-\gamma}\omega(r)\bigr)\,O(r^{-4}),
$$
so both contributions are
$$
O\bigl(r^{-4-\gamma}\omega(r)\bigr),
$$
which is lower order.
Thus
$$
\nabla(\vartheta\Psi_{ABCD})
=
O\bigl(r^{-3-\gamma}\omega(r)\bigr),
$$
and the same is true for $\nabla\chi$.
$\square$

### Theorem 4.2 (Profile-Weighted Mode Stability and Critical Flux)

Let $(M,g,J)$ be a Hermitian non-Kähler ALF gravitational instanton satisfying the standing assumptions of Section 2.
Let $h$ be a linearized vacuum perturbation.
Assume that for some $\gamma\in\mathbb R$ and some positive function $\omega$,
$$
\nabla^k h=O\bigl(r^{-\gamma-k}\omega(r)\bigr),
\qquad
0\le k\le 3,
$$
and
$$
\sup_{R\ge R_0} R^{1-2\gamma}\omega(R)^2<\infty.
$$
Then the boundary flux associated with
$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0
$$
has a finite limit
$$
\mathcal F_\infty
=
\int_M\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$
If, in addition,
$$
R^{1-2\gamma}\omega(R)^2\to 0,
$$
then
$$
\vartheta\Psi_0=0.
$$

#### Proof

By [AAD, Corollary 2.4], the field $\chi=\dot\Omega^{-1}\vartheta\Psi_0$ satisfies the Teukolsky equation.
Proposition 4.1 supplies the decay assumptions needed in Theorem 3.1.
Therefore Theorem 3.1 applies directly.
If the stronger limit condition holds, Theorem 3.1 gives $\chi\equiv 0$, hence $\vartheta\Psi_0=0$.
$\square$

### Corollary 4.3 (The $\gamma>\tfrac12$ Theorem)

Under the hypotheses of Theorem 4.2, if
$$
\nabla^k h=O(r^{-\gamma-k}),
\qquad
0\le k\le 3,
$$
for some $\gamma>\tfrac12$, then
$$
\vartheta\Psi_0=0.
$$

#### Proof

Take $\omega\equiv 1$.
Then
$$
R^{1-2\gamma}\omega(R)^2=R^{1-2\gamma}\to 0
$$
because $\gamma>\tfrac12$.
Apply Theorem 4.2.
$\square$

### Corollary 4.4 (Endpoint Little-$o$ Theorem)

Under the hypotheses of Theorem 4.2, if
$$
\nabla^k h=o(r^{-1/2-k}),
\qquad
0\le k\le 3,
$$
then
$$
\vartheta\Psi_0=0.
$$

#### Proof

Proposition 4.1 with little-$o$ in place of $O$ gives
$$
\chi=o(r^{-5/2}),
\qquad
\nabla\chi=o(r^{-7/2}).
$$
Corollary 3.3 now yields $\chi\equiv 0$.
$\square$

### Corollary 4.5 (Endpoint Logarithmic Theorem)

Under the hypotheses of Theorem 4.2, suppose that for some $s>0$,
$$
\nabla^k h=O\bigl(r^{-1/2-k}(\log r)^{-s}\bigr),
\qquad
0\le k\le 3.
$$
Then
$$
\vartheta\Psi_0=0.
$$

#### Proof

Proposition 4.1 gives
$$
\chi=O\bigl(r^{-5/2}(\log r)^{-s}\bigr),
\qquad
\nabla\chi=O\bigl(r^{-7/2}(\log r)^{-s}\bigr).
$$
Apply Corollary 3.4.
$\square$

### Corollary 4.6 (Critical Finite Flux)

Under the hypotheses of Theorem 4.2, assume
$$
\nabla^k h=O(r^{-1/2-k}),
\qquad
0\le k\le 3.
$$
Then the limit
$$
\mathcal F_\infty[h]
:=
\lim_{R\to\infty}
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
$$
exists in $[0,\infty)$ and satisfies
$$
\mathcal F_\infty[h]
=
\int_M\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$
Moreover,
$$
\vartheta\Psi_0=0
\quad\Longleftrightarrow\quad
\mathcal F_\infty[h]=0.
$$

#### Proof

Apply Theorem 4.2 with $\gamma=\tfrac12$ and $\omega\equiv 1$.
This gives the existence of $\mathcal F_\infty[h]$ and the bulk identity.
If $\vartheta\Psi_0=0$, then $\chi\equiv 0$, so clearly $\mathcal F_\infty[h]=0$.
Conversely, if $\mathcal F_\infty[h]=0$, then the bulk integral vanishes, and the nonnegative integrand forces $\chi\equiv 0$.
$\square$

## 5. Annular Interpolation and Dyadic Energy Vanishing

The positive identity suggests the bulk norm
$$
\int_M \Psi_2^{-4/3}\bigl(|C\chi|^2+\Psi_2|\chi|^2\bigr)\,d\mu,
$$
but the boundary term involves the heavier quantity $\Psi_2^{-4/3}|\chi|^2$.
The result below makes precise how much additional shell control bridges that gap.

### Theorem 5.1 (Annular Interpolation Toward the Natural Energy)

Let $(M,g,J)$ satisfy the standing assumptions of Section 2, and let $\chi$ solve the Teukolsky equation.
Fix $p\in[\tfrac13,1]$.
Assume
$$
\int_M \Psi_2^{-4/3}|C\chi|^2\,d\mu<\infty
$$
and
$$
2^{3(1-p)j}\int_{A_j}\Psi_2^{-p}|\chi|^2\,d\mu\to 0
\qquad
(j\to\infty),
$$
where
$$
A_j:=\{2^j<r<2^{j+1}\}.
$$
Then
$$
\chi\equiv 0.
$$

#### Proof

For large $j$, define
$$
a(s):=\int_{\partial V_s}\Psi_2^{-4/3}|C\chi|^2\,d\Sigma,
\qquad
c_p(s):=\int_{\partial V_s}\Psi_2^{-p}|\chi|^2\,d\Sigma
$$
for regular values $s$ of $r$.
Since the ALF radius may be chosen with $|\nabla r|$ bounded above and below on the end, the coarea formula shows that, up to harmless constants,
$$
\int_{2^j}^{2^{j+1}} a(s)\,ds
\asymp
\int_{A_j}\Psi_2^{-4/3}|C\chi|^2\,d\mu,
$$
and
$$
\int_{2^j}^{2^{j+1}} c_p(s)\,ds
\asymp
\int_{A_j}\Psi_2^{-p}|\chi|^2\,d\mu.
$$
In particular,
$$
\int_{2^j}^{2^{j+1}} a(s)\,ds\to 0
$$
because $\Psi_2^{-4/3}|C\chi|^2\in L^1(M)$.

By Lemma 2.1, on the annulus $A_j$ we have
$$
\Psi_2^{-4/3}
=
\Psi_2^{-p}\Psi_2^{-(4/3-p)}
\le
C\,2^{j(4-3p)}\Psi_2^{-p}.
$$
Hence for $s\in[2^j,2^{j+1}]$,
$$
\int_{\partial V_s}\Psi_2^{-4/3}|\chi|^2\,d\Sigma
\le
C\,2^{j(4-3p)}c_p(s).
$$

Choose $s_j\in[2^j,2^{j+1}]$ so that
$$
a(s_j)+C\,2^{j(4-3p)}c_p(s_j)
$$
is bounded by the average over $[2^j,2^{j+1}]$:
$$
a(s_j)+C\,2^{j(4-3p)}c_p(s_j)
\le
2^{-j}\int_{2^j}^{2^{j+1}} a(s)\,ds
+C\,2^{-j}2^{j(4-3p)}\int_{2^j}^{2^{j+1}} c_p(s)\,ds.
$$
Using the coarea comparability above, the right-hand side is
$$
o(1)+C\,2^{j(3-3p)}\int_{A_j}\Psi_2^{-p}|\chi|^2\,d\mu,
$$
which tends to $0$ by hypothesis.
Therefore
$$
a(s_j)+C\,2^{j(4-3p)}c_p(s_j)\to 0.
$$

Now estimate the boundary flux by the elementary inequality $2|uv|\le |u|^2+|v|^2$:
$$
\left|\mathcal F(s_j)\right|
\le
\frac12\int_{\partial V_{s_j}}\Psi_2^{-4/3}\bigl(|\chi|^2+|n^aC_a\chi|^2\bigr)\,d\Sigma.
$$
Since $|n^aC_a\chi|^2\le |C\chi|^2$, we obtain
$$
\left|\mathcal F(s_j)\right|
\le
\frac12 a(s_j)
+\frac12\int_{\partial V_{s_j}}\Psi_2^{-4/3}|\chi|^2\,d\Sigma
\le
\frac12 a(s_j)+\frac C2\,2^{j(4-3p)}c_p(s_j).
$$
The right-hand side tends to $0$.
Hence
$$
\mathcal F(s_j)\to 0.
$$
Lemma 2.4 implies $\chi\equiv 0$.
$\square$

### Corollary 5.2 (Dyadic Energy Vanishing)

Under the hypotheses of Theorem 5.1, if
$$
\int_M \Psi_2^{-4/3}|C\chi|^2\,d\mu<\infty
$$
and
$$
\int_M \Psi_2^{-1}|\chi|^2\,d\mu<\infty,
$$
then
$$
\chi\equiv 0.
$$

#### Proof

Take $p=1$ in Theorem 5.1.
Then
$$
2^{3(1-p)j}\int_{A_j}\Psi_2^{-p}|\chi|^2\,d\mu
=
\int_{A_j}\Psi_2^{-1}|\chi|^2\,d\mu\to 0
$$
because $\Psi_2^{-1}|\chi|^2\in L^1(M)$.
$\square$

### Corollary 5.3 (Energy Version for Perturbations)

Let $h$ be a linearized vacuum perturbation and let
$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0.
$$
If
$$
\int_M \Psi_2^{-4/3}|C\chi|^2\,d\mu<\infty
$$
and
$$
\int_M \Psi_2^{-1}|\chi|^2\,d\mu<\infty,
$$
then
$$
\vartheta\Psi_0=0.
$$

#### Proof

Immediate from Corollary 5.2.
$\square$

### Remark 5.4 (The Natural Energy Gap)

The case $p=\tfrac13$ of Theorem 5.1 reads
$$
2^{2j}\int_{A_j}\Psi_2^{-1/3}|\chi|^2\,d\mu\to 0
\quad\Longrightarrow\quad
\chi\equiv 0
$$
under the bulk assumption
$$
\int_M \Psi_2^{-4/3}|C\chi|^2\,d\mu<\infty.
$$
Equivalently,
$$
R^2\int_{\{R<r<2R\}}\Psi_2^{-1/3}|\chi|^2\,d\mu\to 0
$$
is precisely the extra shell condition needed to close the argument at the natural weight suggested by the positive identity.

## 6. Explicit Families and Inverse Weyl Asymptotics

The weighted results above require the inverse asymptotic $\Psi_2^{-1}=O(r^3)$.
For explicit Hermitian backgrounds, this can be checked directly from formulas for $\Psi_2$.

### Proposition 6.1 (Kerr and Taub-Bolt)

For the Euclidean Kerr family,
$$
\Psi_2^{\pm}=\frac{m}{(r\pm a\cos\theta)^3}.
$$
For the Taub-bolt family,
$$
\Psi_2^{-}=\frac{n}{4(r-n)^3},
\qquad
\Psi_2^{+}=\frac{9n}{4(r+n)^3}.
$$
Consequently, on either Hermitian side of these families,
$$
\Psi_2\asymp r^{-3},
$$
and in particular
$$
\Psi_2^{-1}=O(r^3).
$$

#### Proof

For Kerr, once $r\ge 2|a|$,
$$
\frac r2\le r\pm a\cos\theta\le \frac{3r}{2}
$$
uniformly in $\theta$.
Therefore
$$
\frac{8m}{27}r^{-3}
\le
\Psi_2^{\pm}
\le
8m\,r^{-3}.
$$

For Taub-bolt, once $r\ge 2n$,
$$
\frac r2\le r-n\le r+n\le \frac{3r}{2}.
$$
Hence
$$
\frac{n}{4(3r/2)^3}
\le
\Psi_2^{-}
\le
\frac{n}{4(r/2)^3},
$$
and similarly
$$
\frac{9n}{4(3r/2)^3}
\le
\Psi_2^{+}
\le
\frac{9n}{4(r/2)^3}.
$$
Thus $\Psi_2\asymp r^{-3}$ in all cases.
$\square$

### Proposition 6.2 (Chen--Teo Asymptotic)

Assume the Chen--Teo Weyl scalar is given by
$$
\Psi_2=-\frac{\nu+1}{2k}\left(\frac{x-y}{\nu x+y}\right)^3,
$$
and that on the asymptotic end one has the coordinate expansion
$$
x=x_2-\frac{x_2\sqrt{k(1-\nu^2)}}{r}\cos^2\frac{\theta}{2},
\qquad
y=x_2+\frac{x_2\sqrt{k(1-\nu^2)}}{r}\sin^2\frac{\theta}{2},
$$
with parameters
$$
k>0,
\qquad
x_2<0,
\qquad
-1<\nu<-\tfrac12.
$$
Then
$$
\Psi_2
=
\frac{\sqrt{k}(1-\nu^2)^{3/2}}{2(\nu+1)^2}\,r^{-3}
+O(r^{-4}),
$$
and in particular
$$
\Psi_2^{-1}=O(r^3).
$$

#### Proof

Subtracting the two asymptotic expansions gives
$$
x-y
=
-\frac{x_2\sqrt{k(1-\nu^2)}}{r}.
$$
Also,
$$
\nu x+y
=
(\nu+1)x_2
+\frac{x_2\sqrt{k(1-\nu^2)}}{r}\left(\sin^2\frac{\theta}{2}-\nu\cos^2\frac{\theta}{2}\right).
$$
Since $(\nu+1)x_2\neq 0$, this shows uniformly in $\theta$ that
$$
\nu x+y=(\nu+1)x_2+O(r^{-1}),
$$
hence
$$
\frac{1}{\nu x+y}
=
\frac{1}{(\nu+1)x_2}+O(r^{-1}).
$$
Therefore
$$
\frac{x-y}{\nu x+y}
=
-\frac{\sqrt{k(1-\nu^2)}}{(\nu+1)r}+O(r^{-2}).
$$
Cubing gives
$$
\left(\frac{x-y}{\nu x+y}\right)^3
=
-\frac{k^{3/2}(1-\nu^2)^{3/2}}{(\nu+1)^3}\,r^{-3}
+O(r^{-4}).
$$
Substituting into the formula for $\Psi_2$ yields
$$
\Psi_2
=
-\frac{\nu+1}{2k}
\left(
-\frac{k^{3/2}(1-\nu^2)^{3/2}}{(\nu+1)^3}\,r^{-3}
+O(r^{-4})
\right),
$$
which simplifies to
$$
\Psi_2
=
\frac{\sqrt{k}(1-\nu^2)^{3/2}}{2(\nu+1)^2}\,r^{-3}
+O(r^{-4}).
$$
The coefficient is positive because $k>0$ and $-1<\nu<-\tfrac12$.
Thus $\Psi_2\asymp r^{-3}$ and $\Psi_2^{-1}=O(r^3)$.
$\square$

### Corollary 6.3 (Unconditional ALF Applications on Explicit Families)

Theorem 4.2 and Corollaries 4.3--4.6 apply without any additional background assumption on the Euclidean Kerr and Taub-bolt Hermitian instantons.

#### Proof

Combine Proposition 6.1 with the standing arguments of Sections 3 and 4.
$\square$

### Remark 6.4

Proposition 6.2 is included for completeness because the Chen--Teo asymptotic was left open in the source notes.
It is not used in the proofs of the ALF theorems above, but it closes the same inverse-Weyl bookkeeping problem on that explicit background.

## 7. Discussion and Open Directions

The proofs above sharpen the source notes in three specific ways.

1. The boundary method is governed by a finite-flux theorem, not only by a vanishing theorem.
   At the critical rate $\gamma=\tfrac12$, the flux need not vanish, but it remains finite, nonnegative, and monotone.
2. The bulk argument is no longer confined to the single dyadic theorem at $p=1$.
   The annular interpolation theorem shows exactly how shell-smallness at weight $\Psi_2^{-p}$ interacts with the boundary term.
3. The explicit-family discussion is no longer limited to Kerr and Taub-bolt; the same inverse-Weyl asymptotic can be checked on Chen--Teo from its asymptotic coordinates.

Several natural questions remain.

### Question 7.1

Can one derive
$$
\Psi_2^{-1}=O(r^3)
$$
abstractly for every Hermitian non-Kähler ALF instanton, without using explicit formulas for individual families?

### Question 7.2

Can one prove vanishing from the lighter bulk norm
$$
\int_M \Psi_2^{-4/3}\bigl(|C\chi|^2+\Psi_2|\chi|^2\bigr)\,d\mu<\infty
$$
without adding the shell hypothesis from Theorem 5.1?
Equivalently, is there a weighted Hardy or trace inequality adapted to the Teukolsky connection that supplies the missing two powers of $r$ in the boundary term?

### Question 7.3

What is the geometric meaning of the critical finite flux
$$
\mathcal F_\infty
=
\lim_{R\to\infty}
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
$$
at the threshold $\gamma=\tfrac12$?
The present article shows that this is a genuine nonnegative boundary observable, but it does not identify it with a known linearized charge.

## References

- **[AAD]** L. Andersson, B. Araneda, and M. Dahl, *Mode stability of Hermitian instantons*, SIGMA **21** (2025), Paper No. 022.
- **[AA]** L. Andersson and B. Araneda, *Charges, complex structures, and perturbations of instantons*, preprint.
- **[AA2]** B. Araneda and L. Andersson, *Infinitesimal rigidity of Hermitian gravitational instantons*, preprint.
- **[AADS]** S. Aksteiner, L. Andersson, M. Dahl, G. Nilsson, and W. Simon, *Gravitational instantons with $S^1$ symmetry*, J. Reine Angew. Math. **826** (2025), 45--90.
- **[BG]** O. Biquard and P. Gauduchon, *On toric Hermitian ALF gravitational instantons*, Comm. Math. Phys. **399** (2023), 389--422.
- **[BGL]** O. Biquard, P. Gauduchon, and C. LeBrun, *Gravitational instantons, Weyl curvature, and conformally Kähler geometry*, Int. Math. Res. Not. IMRN **2024** (2024), no. 20, 13295--13311.
- **[Li]** M. Li, *Classification results for conformally Kähler gravitational instantons*, preprint.
- **[LS]** X. Li and S. Sun, *Gravitational instantons and harmonic maps*, preprint.







