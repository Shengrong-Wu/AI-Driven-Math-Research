## Method Card
- **Short tag:** reflection transfer Allen-Cahn
- **Full name:** Reflection transfer for Neumann Allen--Cahn classifications.
- **Input setting:** Stable or finite-index Allen--Cahn solutions on flat product domains or orthants with homogeneous Neumann boundary conditions and controlled energy growth.
- **New object / driver:** The reflected entire extension that turns a boundary problem on a product domain into a whole-space classification problem.
- **Obstruction resolved:** Whole-space rigidity theorems do not automatically apply on Neumann product domains, especially when periodic directions or free faces are present.
- **Expected outputs:** Direct transfer of stable and finite-index classifications from Euclidean space to the flat Neumann setting, including an unconditional four-dimensional corollary and a periodic-direction obstruction.
- **Transfer targets:** Other semilinear elliptic classification results on reflection-compatible domains.
- **Main technical risk:** Reflection must preserve the relevant growth and Morse-index information, and periodic directions can obstruct a nontrivial finite-index extension.
- **Mechanism type:** transport, rigidity, comparison geometry
- **Tags:** reflection, Neumann, Allen-Cahn, finite-index, flat-domain, whole-space
- **Method link:** ../methods/reflection_transfer_allen_cahn.md

**Condensation.** The new viewpoint is that the flat Neumann product-domain problem should be solved by exporting it to the entire-space problem through reflection, rather than by rebuilding the classification from scratch. This overcomes the obstruction that existing Allen--Cahn rigidity theorems are formulated on Euclidean space while the domain geometry introduces boundary faces and periodic directions. The operative mechanism is to reflect the solution across each flat Neumann face and then invoke the known whole-space stable or finite-index classification on the resulting extension. If it works, it transfers the classification wholesale to the product-domain setting and explains why periodic directions are incompatible with nonzero finite Morse index.

# Stable and finite-index Allen–Cahn solutions on flat Neumann product domains

## Abstract

Recent work of Florit-Simon–Serra and Florit-Simon classifies, respectively, stable and finite Morse index entire solutions of the Allen–Cahn equation in $\R^4$ under bounded energy growth. We show that any whole-space classification of this type automatically transfers to flat product domains with homogeneous Neumann boundary conditions by a reflection argument. For stable solutions we treat

$$
\Omega_{m,\ell,p}(L)=\R^m\times (0,\infty)^\ell\times \prod_{j=1}^p (0,L_j),
\qquad m+\ell+p=n,
$$

under the natural growth $E(u;\Omega\cap B_R)=O(R^{m+\ell-1})$, and deduce an unconditional corollary in dimension $4$. For finite Morse index we obtain the analogous transfer on orthants, where only finitely many reflections are involved. We also record a simple obstruction showing that periodic directions are incompatible with any nonzero finite Morse index at the level of the reflected entire extension.

---

## 1. Introduction

The Allen–Cahn equation

$$
-\Delta u = u-u^3 \tag{1}
$$

is a basic phase-transition model and a standard analytic surrogate for codimension-one geometry. In recent work, Florit-Simon and Serra proved that stable entire solutions in $\R^4$ with bounded energy density are one-dimensional [FSSe25]. Shortly afterwards, Florit-Simon established the corresponding finite Morse index statement in $\R^4$ [FS26]. These results place dimension $4$ in a new regime for De Giorgi-type classification under natural energy-growth assumptions.

A natural boundary analogue is to ask what remains true on domains with homogeneous Neumann boundary condition. For smooth curved boundaries this is a genuinely geometric problem, tied to free-boundary limit interfaces and boundary layer analysis; see, for instance, Li–Parise–Sarnataro [LPS24] and Marx-Kuo [MK25]. For comparison with a different half-space rigidity statement in the entire setting, see Hamel–Liu–Sicbaldi–Wang–Wei [HLSWW19]. On the other hand, for flat faces one expects a much more rigid picture because homogeneous Neumann data are compatible with even reflection.

The purpose of this note is to isolate that reflection mechanism in a form which is reusable. Rather than recording only the half-space corollary of [FSSe25], we prove a transfer theorem for flat product domains with both half-space and slab factors, identify the correct effective growth exponent in the presence of bounded directions, and then add a finite-index orthant analogue. The proof is short, but it clarifies a structural point: stable classification passes through periodic directions, whereas finite-index classification does not, because an unstable periodic entire solution automatically has infinite Morse index.

**Why this target was chosen.** The safest nearby result would have been the single half-space corollary in dimension $4$. We chose the broader transfer theorem instead because it extracts a general mechanism from the recent whole-space breakthroughs, gives a genuinely new flat-boundary setting, and exposes a sharp difference between the stable and finite-index regimes. This produces a more useful theorem package while staying completely within a one-session proof budget.

To state the results, let

$$
\Omega_{m,\ell,p}(L):=\R^m\times (0,\infty)^\ell\times \prod_{j=1}^p (0,L_j),
\qquad m,\ell,p\in\mathbb{N}_0,
\qquad m+\ell+p=n. \tag{2}
$$

Here $m$ is the number of tangential Euclidean directions, $\ell$ the number of reflecting half-space directions, and $p$ the number of bounded slab directions. The point of the exponent $m+\ell-1=n-p-1$ is that it is the codimension-one growth rate in the unbounded variables. This is the exact rate which becomes $R^{n-1}$ after reflecting and periodically unfolding the bounded factors.

The main theorem is conditional on the corresponding whole-space classification in dimension $n$. Specializing to $n=4$ then yields unconditional corollaries by [FSSe25, FS26].

---

## 2. Background and Preliminaries

Fix $n\ge 2$ and let $\Omega=\Omega_{m,\ell,p}(L)$ be as in (2), with $m+\ell\ge 1$. Throughout, we consider classical bounded solutions

$$
-\Delta u = u-u^3 \quad\text{in }\Omega,
\qquad \partial_\nu u = 0 \quad\text{on }\partial\Omega, \tag{3}
$$

with $|u|\le 1$.

We use the Allen–Cahn energy

$$
E(u;A):=\int_A \left( \frac{1}{2} |\nabla u|^2 + \frac{1}{4}(1-u^2)^2\right)dx.
$$

The quadratic form associated with the second variation is

$$
Q_u(\varphi):=\int_\Omega \bigl(|\nabla \varphi|^2 + (3u^2-1)\varphi^2\bigr)\,dx,
\qquad \varphi\in C_c^1(\overline\Omega).
$$

We say that $u$ is *stable* if $Q_u(\varphi)\ge 0$ for all $\varphi\in C_c^1(\overline\Omega)$. Its Morse index is the maximal dimension of a subspace of $C_c^1(\overline\Omega)$ on which $Q_u$ is negative definite.

We will use the following dimension-$n$ whole-space hypotheses.

$(\mathcal{S}_n)$: Every stable solution $U:\R^n\to[-1,1]$ of (1) satisfying

$$
E(U;B_R)\le C R^{n-1}\qquad\text{for all }R\ge 1
$$

for some $C>0$ is one-dimensional.

$(\mathcal{F}_n)$: Every finite Morse index solution $U:\R^n\to[-1,1]$ of (1) satisfying

$$
E(U;B_R)\le C R^{n-1}\qquad\text{for all }R\ge 1
$$

for some $C>0$ is one-dimensional.

By [FSSe25], $(\mathcal{S}_4)$ holds. By [FS26], $(\mathcal{F}_4)$ holds as well.

To describe the reflected extension, define the folding map $\pi_L:\R\to [0,L]$ by

$$
\pi_L(t):=\min_{k\in\mathbb{Z}} |t-2kL|.
$$

It is the even $2L$-periodic fold onto $[0,L]$. For $x=(x',y,z)\in \R^m\times\R^\ell\times\R^p$ we set

$$
P(x',y,z):=\bigl(x',|y_1|,\dots,|y_\ell|,\pi_{L_1}(z_1),\dots,\pi_{L_p}(z_p)\bigr)\in \overline\Omega. \tag{4}
$$

Given $u$ on $\Omega$, its reflected extension is

$$
U(x):=u(P(x)). \tag{5}
$$

The space $\R^n$ is partitioned into coordinate cells on each of which $P$ is an affine isometry onto $\Omega$.

---

## 3. Main Result

Our first theorem is the transfer principle for stable solutions.

> **Theorem 3.1** (Stable transfer to flat Neumann product domains).
> Let $n\ge 2$, let $m,\ell,p\in\mathbb{N}_0$ with $m+\ell+p=n$ and $m+\ell\ge 1$, and let $L_j>0$. Set $\Omega=\Omega_{m,\ell,p}(L)$. Assume $(\mathcal{S}_n)$. Let $u\in C^2(\overline\Omega)$ satisfy (3), with $|u|\le 1$, and assume that $u$ is stable and
> $$
> E(u;\Omega\cap B_R)\le C R^{m+\ell-1}=C R^{n-p-1}
> \qquad\text{for all }R\ge 1. \tag{6}
> $$
> Then either $u\equiv \pm1$, or $m\ge 1$ and there exist $a\in S^{m-1}$ and $b\in\R$ such that
> $$
> u(x',y,z)=\tanh\!\left(\frac{a\cdot x'+b}{\sqrt{2}}\right)
> \qquad\text{for all }(x',y,z)\in\Omega.
> $$
> In particular, every nonconstant stable solution is independent of all reflecting and bounded directions.

> **Corollary 3.2** (Unconditional dimension-$4$ consequence).
> Let $m,\ell,p\in\mathbb{N}_0$ with $m+\ell+p=4$ and $m+\ell\ge 1$, and let $\Omega=\Omega_{m,\ell,p}(L)$. Then every stable solution $u\in C^2(\overline\Omega)$ of (3) with $|u|\le 1$ and
> $$
> E(u;\Omega\cap B_R)\le C R^{m+\ell-1}
> \qquad\text{for all }R\ge 1
> $$
> is either constant or of the form
> $$
> u(x',y,z)=\tanh\!\left(\frac{a\cdot x'+b}{\sqrt{2}}\right)
> $$
> for some $a\in S^{m-1}$ and $b\in \R$.

The next observation explains why finite Morse index behaves differently once periodic directions are present.

> **Proposition 3.3** (Periodic instability forces infinite index).
> Let $U:\R^n\to[-1,1]$ be a classical solution of (1). Assume that for some $T>0$ and some coordinate vector $e_j$ one has
> $$
> U(x+Te_j)=U(x)\qquad\text{for all }x\in\R^n.
> $$
> If $U$ is unstable, then $U$ has infinite Morse index.

For finite Morse index, the reflection method therefore applies cleanly only when the reflected extension uses finitely many copies, namely on orthants.

> **Proposition 3.4** (Finite-index transfer on orthants).
> Let $n\ge 2$, let $m,\ell\in\mathbb{N}_0$ with $m+\ell=n$, and set $\Omega=\R^m\times (0,\infty)^\ell$. Assume $(\mathcal{F}_n)$. Let $u\in C^2(\overline\Omega)$ satisfy (3), with $|u|\le 1$, and assume that $u$ has finite Morse index and
> $$
> E(u;\Omega\cap B_R)\le C R^{n-1}
> \qquad\text{for all }R\ge 1.
> $$
> Then either $u\equiv\pm1$, or $m\ge 1$ and there exist $a\in S^{m-1}$ and $b\in\R$ such that
> $$
> u(x',y)=\tanh\!\left(\frac{a\cdot x'+b}{\sqrt{2}}\right)
> \qquad\text{for all }(x',y)\in\Omega.
> $$
> In particular, every nonconstant finite-index solution is independent of all orthant directions.

> **Corollary 3.5** (Unconditional dimension-$4$ orthant consequence).
> Let $m+\ell=4$ and $\Omega=\R^m\times(0,\infty)^\ell$. Then every finite Morse index solution $u\in C^2(\overline\Omega)$ of (3) with $|u|\le 1$ and
> $$
> E(u;\Omega\cap B_R)\le C R^3
> \qquad\text{for all }R\ge 1
> $$
> is either constant or of the form
> $$
> u(x',y)=\tanh\!\left(\frac{a\cdot x'+b}{\sqrt{2}}\right)
> $$
> for some $a\in S^{m-1}$ and $b\in\R$.

---

## 4. Proof of the Main Result

We begin with the regularity of the reflected extension.

> **Lemma 4.1** (Regular reflected extension).
> Let $u\in C^2(\overline\Omega)$ satisfy (3). Then the function $U$ defined by (5) belongs to $C^2(\R^n)$ and solves
> $$
> -\Delta U = U-U^3 \qquad\text{in }\R^n.
> $$

*Proof.* On each coordinate cell the map $P$ is an affine isometry, so $U$ is $C^2$ there and solves the equation there. It remains to check regularity across reflection hyperplanes.

For a half-space face, the model case is $\Omega=\{x_n>0\}$ and $U(x',x_n)=u(x',|x_n|)$. Since $u\in C^2(\overline\Omega)$ and $\partial_{x_n}u(x',0)=0$, one has $\partial_{x_n}U(x',0^+)=\partial_{x_n}U(x',0^-)=0$. Tangential differentiation of the boundary condition gives $\partial_{x_i x_n}u(x',0)=0$ for $i<n$, hence the mixed second derivatives also match across $\{x_n=0\}$, and the pure second derivative $\partial_{x_nx_n}U$ matches by evenness. Thus the even reflection is $C^2$ across the face.

For an interval face $\{z_j=0\}$ or $\{z_j=L_j\}$ the argument is identical after translating the face to the origin. Since the coordinate faces are orthogonal, iterating the one-dimensional reflection argument gives $C^2$ regularity across corners as well. Therefore $U\in C^2(\R^n)$ and the equation extends across every reflection hyperplane. $\square$

> **Lemma 4.2** (Stability survives reflection and periodic unfolding).
> Under the hypotheses of Theorem 3.1, the reflected extension $U$ is stable in $\R^n$.

*Proof.* Let $\phi\in C_c^1(\R^n)$. Since $\operatorname{supp}\phi$ is compact, it meets only finitely many coordinate cells. On each such cell $C$, the restriction of $P$ is the inverse of an affine isometry $T_C:\Omega\to C$. By change of variables,

$$
\int_{C}\bigl(|\nabla\phi|^2+(3U^2-1)\phi^2\bigr)
=
\int_{\Omega}\bigl(|\nabla(\phi\circ T_C)|^2 + (3u^2-1)(\phi\circ T_C)^2\bigr).
$$

Summing over all cells meeting the support of $\phi$ yields

$$
Q_U(\phi)=\sum_C Q_u(\phi\circ T_C).
$$

Each pullback $\phi\circ T_C$ belongs to $C_c^1(\overline\Omega)$, so every summand is nonnegative by stability of $u$. Hence $Q_U(\phi)\ge 0$. $\square$

> **Lemma 4.3** (Growth transfer).
> Under the hypotheses of Theorem 3.1, the reflected extension $U$ satisfies
> $$
> E(U;B_R)\le C'R^{n-1}\qquad\text{for all }R\ge 1.
> $$

*Proof.* Let $\mathcal{C}_R$ be the collection of coordinate cells intersecting $B_R$. On each cell $C\in \mathcal{C}_R$, the folding map $P$ is an isometry and does not increase the Euclidean norm, so

$$
P(B_R\cap C)\subset \Omega\cap B_R.
$$

Therefore

$$
E(U;B_R)=\sum_{C\in\mathcal{C}_R} E(U;B_R\cap C)
=\sum_{C\in\mathcal{C}_R} E\bigl(u;P(B_R\cap C)\bigr)
\le |\mathcal{C}_R|\, E(u;\Omega\cap B_R).
$$

There are exactly $2^\ell$ possibilities in the reflecting half-space coordinates. In the $j$th bounded coordinate, the number of length-$L_j$ cells intersecting the interval $[-R,R]$ is bounded by $2+R/L_j$. Hence

$$
|\mathcal{C}_R|\le 2^\ell\prod_{j=1}^p\left(2+\frac{R}{L_j}\right)
\le C_\Omega (1+R)^p.
$$

Using (6),

$$
E(U;B_R)\le C_\Omega (1+R)^p \cdot C R^{n-p-1}
\le C'R^{n-1}
\qquad (R\ge 1),
$$

as claimed. $\square$

*Proof of Theorem 3.1.* Let $U$ be the reflected extension of $u$. By Lemmas 4.1, 4.2, and 4.3, the function $U$ is a stable entire solution of (1) with $E(U;B_R)\le C'R^{n-1}$. By $(\mathcal{S}_n)$, $U$ is one-dimensional. Thus either $U\equiv\pm1$, or there exist $\omega\in S^{n-1}$ and $b\in\R$ such that

$$
U(x)=\tanh\!\left(\frac{\omega\cdot x+b}{\sqrt{2}}\right).
$$

Assume now that $U$ is nonconstant.

For each reflecting half-space coordinate $y_i$, the extension is even: $U(x',y_1,\dots,y_i,\dots,z)=U(x',y_1,\dots,-y_i,\dots,z)$. Since $t\mapsto \tanh((t+b)/\sqrt{2})$ is injective, this symmetry forces the corresponding component of $\omega$ to vanish.

For each bounded coordinate $z_j$, the extension is $2L_j$-periodic in the $z_j$ variable. Hence

$$
\tanh\!\left(\frac{s+2L_j\omega_{m+\ell+j}}{\sqrt{2}}\right)=\tanh\!\left(\frac{s}{\sqrt{2}}\right)
\qquad\text{for all }s\in\R,
$$

which again implies $\omega_{m+\ell+j}=0$ by injectivity.

Therefore $\omega$ has no component in the reflecting or bounded directions, and lies entirely in the $\R^m$ factor. Restricting $U$ back to $\Omega$ yields the stated formula for $u$. $\square$

*Proof of Corollary 3.2.* This is Theorem 3.1 together with $(\mathcal{S}_4)$, proved by Florit-Simon and Serra [FSSe25]. $\square$

*Proof of Proposition 3.3.* Choose $\psi\in C_c^1(\R^n)$ with $Q_U(\psi)<0$. Let $R_0>0$ be such that $\operatorname{supp}\psi\subset B_{R_0}$. Pick integers $k_1<k_2<\cdots$ so far apart that the translates

$$
\psi_i(x):=\psi(x-k_iTe_j)
$$

have pairwise disjoint supports. By periodicity of $U$,

$$
Q_U(\psi_i)=Q_U(\psi)<0
\qquad\text{for every }i.
$$

Because the supports are disjoint, there are no cross terms, so for any finite linear combination $\sum_{i=1}^N a_i\psi_i$ one has

$$
Q_U\!\left(\sum_{i=1}^N a_i\psi_i\right)=\sum_{i=1}^N a_i^2 Q_U(\psi_i)<0
\qquad\text{unless all }a_i=0.
$$

Thus for every $N$ the span of $\{\psi_1,\dots,\psi_N\}$ is an $N$-dimensional negative subspace. Hence the Morse index is infinite. $\square$

*Proof of Proposition 3.4.* Let $U$ be the orthant reflection of $u$ to $\R^n$. Since $p=0$, only finitely many cells appear, namely $2^\ell$ orthants. By Lemma 4.1, $U$ is a classical entire solution, and the growth estimate transfers with no periodic factor:

$$
E(U;B_R)\le 2^\ell E(u;\Omega\cap B_R)\le C'R^{n-1}.
$$

It remains to show that $U$ has finite Morse index. Let $H=C_c^1(\overline\Omega)$, let $N=2^\ell$, and consider the finite direct sum $\mathcal{H}=H^N$ equipped with

$$
\mathcal{Q}(\varphi_1,\dots,\varphi_N):=\sum_{i=1}^N Q_u(\varphi_i).
$$

Since $Q_u$ has finite Morse index, so does the finite direct sum quadratic form $\mathcal{Q}$; equivalently, a finite direct sum of finite-index quadratic forms is again finite-index. The restriction map from $C_c^1(\R^n)$ to the $N$ reflected orthants is injective, and under this map the quadratic form of $U$ is precisely the restriction of $\mathcal{Q}$. Therefore $Q_U$ has finite Morse index as well.

Applying $(\mathcal{F}_n)$, we conclude that $U$ is one-dimensional. The same even-symmetry argument used in the proof of Theorem 3.1 eliminates all orthant directions, leaving only the $\R^m$ factor. Restricting back to $\Omega$ proves the claim. $\square$

*Proof of Corollary 3.5.* This is Proposition 3.4 together with $(\mathcal{F}_4)$, proved by Florit-Simon [FS26]. $\square$

---

## 5. Further Directions

The theorem proved here is a transfer principle rather than a new interior classification theorem, and that is precisely its value: once a whole-space rigidity statement is known, the flat Neumann analogue follows automatically after identifying the correct growth normalization. Several nearby directions seem natural.

First, one can replace coordinate orthants by more general flat reflection domains. For finite reflection groups this should lead to an analogous transfer theorem with essentially the same proof. For affine reflection groups one should expect a stable statement together with the same periodic obstruction for finite Morse index.

Second, the flatness assumption suggests a next-stage geometric problem: whether a similar inheritance principle holds for manifolds with totally geodesic boundary, or for domains whose boundary is a small perturbation of a union of flat faces. In such settings the exact reflection symmetry is lost, so one would need a quantitative replacement.

Third, the present argument is not tied to the dimension-$4$ breakthroughs except through $(\mathcal{S}_n)$ and $(\mathcal{F}_n)$. Thus every future improvement of whole-space De Giorgi-type classification in dimensions $5\le n\le 7$ would automatically imply the corresponding flat-boundary theorem for the classes considered here.

---

## 6. Remarks and Open Questions

> **Remark 6.1.** The exponent $m+\ell-1=n-p-1$ in (6) is not cosmetic. If one assumes only the ambient $R^{n-1}$ bound on the cell $\Omega_{m,\ell,p}(L)$ when $p>0$, the reflected extension can grow like $R^{n-1+p}$ and the whole-space theorem becomes unavailable. Thus the effective growth rate in the unbounded variables is the correct one for this transfer mechanism.

> **Remark 6.2.** Proposition 3.3 shows that periodic directions sharply separate the stable and finite-index theories. A periodic entire extension can have finite Morse index only if it is stable. This explains why Proposition 3.4 is formulated only for orthants.

> **Question 6.3.** Can one prove a finite Morse index classification on slabs or rectangular cylinders directly on the Neumann domain, without passing through the periodic entire extension? Even in dimension $4$, the present method does not address this.

> **Question 6.4.** Does an analogous transfer principle hold for semilinear equations on manifolds with totally geodesic boundary, perhaps after imposing a boundary-compatible energy density bound?

> **Question 6.5.** To what extent can one replace the coordinate-product geometry by affine Coxeter chambers, or by domains admitting a cocompact reflection tiling, while preserving the same effective-growth bookkeeping?

---

## References

[FS26] E. Florit-Simon, *Phase transitions with bounded index: Parallels to De Giorgi's conjecture*, 2026, arXiv:2602.03136.

[FSSe25] E. Florit-Simon and J. Serra, *On stable solutions to the Allen–Cahn equation with bounded energy density in $\R^4$*, 2025, arXiv:2509.02739.

[HLSWW19] F. Hamel, Y. Liu, P. Sicbaldi, K. Wang, and J. Wei, *Half space theorem for the Allen–Cahn equation and related problems*, 2019, arXiv:1901.07671.

[LPS24] M. M.-C. Li, D. Parise, and L. Sarnataro, *Boundary behavior of limit-interfaces for the Allen–Cahn equation on Riemannian manifolds with Neumann boundary condition*, *Arch. Ration. Mech. Anal.* **248** (2024), no. 6, Art. 124.

[MK25] J. Marx-Kuo, *A Dirichlet-to-Neumann map for the Allen–Cahn equation on manifolds with boundary*, *Interfaces Free Bound.* **27** (2025), no. 4, 575–618.



