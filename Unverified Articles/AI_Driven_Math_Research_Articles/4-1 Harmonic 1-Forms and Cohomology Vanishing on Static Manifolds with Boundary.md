## Method Card
- **Short tag:** weighted Robin Hodge vanishing
- **Full name:** Weighted Robin Hodge vanishing on static manifolds.
- **Input setting:** A compact static manifold with boundary, a one-sign static potential, and nonnegative scalar and boundary mean curvature with R + H > 0.
- **New object / driver:** A weighted Bochner-Hodge identity adapted from the horizon case to the Robin boundary condition, including the relative boundary complex.
- **Obstruction resolved:** Wang's cohomology-vanishing mechanism was designed for horizon-type boundary data and did not address the Robin static setting or relative cohomology.
- **Expected outputs:** Vanishing of absolute and relative harmonic 1-forms, hence H^1(M) = 0, H^1(M, boundary M) = 0, and connectedness of the boundary.
- **Transfer targets:** Static and electrostatic manifolds with boundary, boundary connectedness problems, and weighted Hodge rigidity arguments.
- **Main technical risk:** The Robin boundary term must retain the correct sign after weighting, especially for the relative boundary conditions.
- **Mechanism type:** spectral cancellation, rigidity, defect control
- **Tags:** weighted-Bochner, Robin-boundary, Hodge-vanishing, static-manifold, cohomology, spectral
- **Method link:** ../methods/weighted_robin_hodge_vanishing.md

**Condensation.** The new viewpoint is that Wang's weighted static vanishing argument can be transplanted from horizon boundaries to Robin boundaries without changing the core Hodge mechanism. This overcomes the obstruction that the natural static boundary condition no longer kills the boundary term automatically and had not been integrated into the cohomological picture. The operative mechanism is a weighted Bochner identity in which the Robin condition converts the boundary contribution into a nonnegative term for both absolute and relative harmonic fields. If it works, it kills the first absolute and relative cohomology and forces the boundary to be connected.

# Harmonic 1-Forms and Cohomology Vanishing on Static Manifolds with Boundary

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

We study compact static manifolds with boundary in the sense of the Robin-type boundary condition
$$
-(\Delta V)g+\operatorname{Hess} V - V\operatorname{Ric} =0 \quad \text{in }M,
\qquad
V_\nu g_{\partial M}=Vh \quad \text{on }\partial M.
$$

Assuming that the manifold admits a nontrivial one-sign static potential and that the scalar curvature $R$ and boundary mean curvature $H$ satisfy $R\ge 0$, $H\ge 0$, and $R+H>0$, we prove that every absolute harmonic $1$-form and every relative harmonic $1$-form vanishes. Equivalently,
$$
H^1(M;\mathbb{R})=0,
\qquad
H^1(M,\partial M;\mathbb{R})=0.
$$

As a geometric consequence, the boundary is connected. The proof adapts Wang's weighted argument for horizon-type static triples to the Robin boundary setting and shows that the same mechanism also treats relative boundary conditions. We also record a charged companion statement for electrostatic manifolds with boundary under a coercive scalar-charge condition.

## Introduction

Static metrics with boundary arise naturally in the deformation theory of scalar curvature when the boundary mean curvature is prescribed simultaneously. A convenient formulation, used in recent work of Sheng, is the following: a compact manifold with boundary $(M^n,g)$ is called a *static manifold with boundary* if it admits a nontrivial function $V\in C^\infty(M)$ satisfying
$$
-(\Delta V)g+\operatorname{Hess} V - V\operatorname{Ric} =0 \quad \text{in }M,
\qquad
V_\nu g_{\partial M}=Vh \quad \text{on }\partial M,
\tag{eq:static-intro}
$$
where $\nu$ is the outward unit normal and $h$ is the second fundamental form of $\partial M$ with respect to $\nu$. In this setting, Sheng proved that the scalar curvature is constant, the boundary is umbilic, and the mean curvature is constant on each boundary component [Sheng, 2025, arXiv:2403.19169]. More recently, Sheng and Zhao studied compact simple static manifolds with boundary admitting a positive static potential and established an Obata-type rigidity theorem [Sheng–Zhao, 2026, arXiv:2601.01823].

A different but closely related direction was developed by Wang, who proved that if $(M,g,V)$ is a compact static triple with positive scalar curvature, $V=0$ on $\partial M$, and $V>0$ in the interior, then $H^1(M;\mathbb{R})=0$ [Wang, 2024, arXiv:2408.12180]. The boundary condition in Wang's theorem is of horizon type. In contrast, the natural boundary condition in (eq:static-intro) is Robin:
$$
V_\nu = \frac{H}{n-1}V.
$$

The main question addressed here is whether Wang's cohomological vanishing mechanism persists in this newer boundary-static setting.

Our main theorem gives an affirmative answer under the existence of a one-sign static potential.

**Theorem (Main Result):** Let $(M^n,g,V)$, $n\ge 2$, be a compact connected static manifold with boundary satisfying (eq:static-intro). Assume that $V\ge 0$ on $M$, that $V\not\equiv 0$, and that the scalar curvature $R$ of $g$ and the mean curvature $H$ of $\partial M$ satisfy
$$
R\ge 0,
\qquad
H\ge 0,
\qquad
R+H>0.
$$

Then
$$
H^1(M;\mathbb{R})=0,
\qquad
H^1(M,\partial M;\mathbb{R})=0.
$$

In particular, $\partial M$ is connected.

The novelty is twofold. First, the boundary condition is strictly broader than the horizon condition $V\vert_{\partial M}=0$ appearing in [Wang, 2024, arXiv:2408.12180]. Second, the same argument also annihilates the *relative* first cohomology group, which immediately forces connectedness of the boundary by the long exact sequence of the pair $(M,\partial M)$. To the best of our knowledge, such a cohomological vanishing statement has not been recorded for compact static manifolds with boundary in the sense of (eq:static-intro).

### Why this target was chosen

Among nearby note-sized problems, the most immediate one would have been to remain in the horizon setting $V\vert_{\partial M}=0$, where Wang's argument already applies. The Robin condition $V_\nu=\frac{H}{n-1}V$ is, however, the intrinsic boundary condition in the scalar-curvature/mean-curvature deformation problem and produces a genuinely different boundary term. Establishing vanishing in this regime, together with the relative statement and the boundary connectedness corollary, therefore extracts a new structural consequence from the recent static-boundary framework without leaving the range of arguments that can still be checked completely.

The proof is short once the correct weighted identity is written down. The point is that the Robin condition does not simply erase the boundary contribution, as happens when $V=0$ on $\partial M$; instead it turns the boundary term into a nonnegative multiple of $V|X|^2$ for an absolute harmonic field $X$, and into an even stronger nonnegative multiple for a relative harmonic field. The argument is therefore rigid enough to survive the new boundary condition.

The paper is organized as follows. Section 2 recalls the static boundary equation and the Hodge-theoretic boundary conditions we use. Section 3 states the main theorem and its first corollary. Section 4 proves the theorem. Section 5 records a charged companion proposition for electrostatic manifolds with boundary, indicating a natural second-stage project. Section 6 discusses sharpness and formulates open questions.

## Background and Preliminaries

Let $(M^n,g)$ be a compact connected smooth Riemannian manifold with nonempty smooth boundary. We write $\nu$ for the outward unit normal, $g_{\partial M}$ for the induced metric on $\partial M$, and
$$
h(X,Y)=-\langle \nu, \nabla_XY\rangle
$$

for the second fundamental form of $\partial M$. The corresponding mean curvature is $H=\operatorname{tr}_{g_{\partial M}}h$.

**Definition:** A triple $(M^n,g,V)$ is a *static manifold with boundary* if $V\in C^\infty(M)$ is nontrivial and satisfies
$$
-(\Delta V)g+\operatorname{Hess} V - V\operatorname{Ric} =0 \quad \text{in }M,
\qquad
V_\nu g_{\partial M}=Vh \quad \text{on }\partial M.
\tag{eq:static}
$$

A basic structural result from [Sheng, 2025, arXiv:2403.19169] is the following.

**Proposition (Sheng):** If $(M^n,g,V)$ is a static manifold with boundary, then the scalar curvature $R$ is constant, the boundary is umbilic, and the mean curvature $H$ is constant on $\partial M$.

Taking the trace in (eq:static) therefore yields
$$
\Delta V + \frac{R}{n-1}V =0 \quad \text{in }M,
\qquad
V_\nu - \frac{H}{n-1}V =0 \quad \text{on }\partial M.
\tag{eq:trace}
$$

We next fix the Hodge-theoretic boundary conditions for $1$-forms. Write $\mathcal H_A^1(M)$ for the space of smooth $1$-forms $\omega$ satisfying
$$
d\omega=0,
\qquad
\delta\omega=0 \quad \text{in }M,
\qquad
\iota_\nu\omega=0 \quad \text{on }\partial M,
$$

and write $\mathcal H_R^1(M)$ for the space of smooth $1$-forms $\eta$ satisfying
$$
d\eta=0,
\qquad
\delta\eta=0 \quad \text{in }M,
\qquad
\nu\wedge \eta=0 \quad \text{on }\partial M.
$$

These are respectively the absolute and relative harmonic $1$-forms. By the Hodge–Morrey–Friedrichs decomposition on manifolds with boundary [Schwarz, 1995, Lecture Notes in Mathematics 1607],
$$
\mathcal H_A^1(M)\cong H^1(M;\mathbb{R}),
\qquad
\mathcal H_R^1(M)\cong H^1(M,\partial M;\mathbb{R}).
\tag{eq:hodge}
$$

If $\omega\in\mathcal H_A^1(M)$ or $\eta\in\mathcal H_R^1(M)$, we denote the metric-dual vector field by $X=\omega^\sharp$ or $Y=\eta^\sharp$. The equations $d\omega=0$ and $\delta\omega=0$ (or similarly for $\eta$) imply
$$
\nabla_i X_j = \nabla_j X_i,
\qquad
\operatorname{div} X=0,
\tag{eq:symmetric-divfree}
$$

and the same formulas hold for $Y$. In particular, the covariant derivative of the dual vector field is symmetric.

The following elementary identity is the analytic heart of the argument.

**Lemma:** Let $Z$ be a smooth vector field on $M$ such that $\operatorname{div} Z=0$ and $\nabla_i Z_j=\nabla_j Z_i$. Then
$$
\operatorname{div}(\nabla_ZZ)=\operatorname{Ric}(Z,Z)+|\nabla Z|^2.
$$

*Proof:* At a fixed point choose a local orthonormal frame and use index notation. Then
$$
\operatorname{div}(\nabla_ZZ)=\nabla_i(Z^j\nabla_jZ^i)
=(\nabla_iZ^j)(\nabla_jZ^i)+Z^j\nabla_i\nabla_jZ^i.
$$

Since $\operatorname{div} Z=\nabla_i Z^i=0$, the Ricci identity gives
$$
Z^j\nabla_i\nabla_jZ^i
=Z^j\bigl(\nabla_j\nabla_iZ^i + R^i{}_{kij}Z^k\bigr)
=\operatorname{Ric}(Z,Z).
$$

Because $\nabla_iZ_j=\nabla_jZ_i$, the first term is exactly $|\nabla Z|^2$. This proves the claim. ∎

## Main Result

We now state the main theorem in the form proved below.

**Theorem:** Let $(M^n,g,V)$, $n\ge 2$, be a compact connected static manifold with boundary satisfying (eq:static). Assume
$$
V\ge 0 \text{ on }M,
\qquad
V\not\equiv 0,
\qquad
R\ge 0,
\qquad
H\ge 0,
\qquad
R+H>0.
$$

Then every absolute harmonic $1$-form and every relative harmonic $1$-form on $M$ vanishes. Equivalently,
$$
H^1(M;\mathbb{R})=0,
\qquad
H^1(M,\partial M;\mathbb{R})=0.
$$

**Corollary:** Under the hypotheses of the preceding theorem, the boundary $\partial M$ is connected.

## Proof of the Main Result

We begin with the positivity of a one-sign static potential.

**Lemma:** Under the hypotheses of the main theorem, one has $V>0$ on $M\cup\partial M$.

*Proof:* By (eq:trace), the function $V$ solves
$$
\Delta V + cV=0 \quad \text{in }M,
\qquad
V_\nu - bV=0 \quad \text{on }\partial M,
$$

where $c=R/(n-1)\ge 0$ and $b=H/(n-1)\ge 0$ are constants. Since $V\ge 0$ and $V\not\equiv 0$, the strong maximum principle [Gilbarg–Trudinger, 1998, Springer] implies that $V$ cannot vanish at an interior point unless $V\equiv 0$. Hence $V>0$ in the interior.

If $V(p)=0$ for some $p\in\partial M$, then $p$ is a boundary minimum and $V$ is nonconstant. The Hopf boundary point lemma [Gilbarg–Trudinger, 1998, Springer] gives $V_\nu(p)<0$ with respect to the outward unit normal. On the other hand, the Robin boundary condition yields $V_\nu(p)=bV(p)=0$, a contradiction. Thus $V>0$ on all of $\overline M$. ∎

### Absolute harmonic 1-forms

**Proposition:** Let $\omega\in\mathcal H_A^1(M)$ and let $X=\omega^\sharp$. Then
$$
0=
\int_M V\left(|\nabla X|^2+\frac{R}{n-1}|X|^2\right)\,d\mu_g
+\frac{H}{n-1}\int_{\partial M}V|X|^2\,d\sigma_g.
\tag{eq:absolute-identity}
$$

In particular, $X\equiv 0$.

*Proof:* Because $\omega\in\mathcal H_A^1(M)$, we have (eq:symmetric-divfree) and $\langle X, \nu\rangle=0$ on $\partial M$. Set
$$
I:=\int_M \operatorname{Hess} V(X,X)\,d\mu_g.
$$

Using $\operatorname{div} X=0$ and integrating by parts,
$$
\begin{align}
I
&=\int_M \langle \nabla_X\nabla V, X\rangle \,d\mu_g \\
&=\int_M \operatorname{div}\bigl(\langle \nabla V, X\rangle X\bigr)\,d\mu_g - \int_M \langle \nabla V, \nabla_XX\rangle \,d\mu_g \\
&=\int_{\partial M}\langle \nabla V, X\rangle \langle X, \nu\rangle \,d\sigma_g - \int_M \langle \nabla V, \nabla_XX\rangle \,d\mu_g \\
&=-\int_M \langle \nabla V, \nabla_XX\rangle \,d\mu_g.
\end{align}
$$

A second integration by parts gives
$$
\begin{align}
I
&=-\int_{\partial M}V\langle \nabla_XX, \nu\rangle \,d\sigma_g + \int_M V\operatorname{div}(\nabla_XX)\,d\mu_g \\
&=\int_{\partial M}Vh(X,X)\,d\sigma_g + \int_M V\bigl(\operatorname{Ric}(X,X)+|\nabla X|^2\bigr)\,d\mu_g,
\end{align}
$$

where we used the sign convention for $h$ and the lemma above.

Now contract the interior static equation in (eq:static) with $X\otimes X$ and integrate:
$$
0=\int_M \bigl(\operatorname{Hess} V(X,X) - (\Delta V)|X|^2 - V\operatorname{Ric}(X,X)\bigr)\,d\mu_g.
$$

Substituting the preceding formula for $I$ yields
$$
0=
\int_M V|\nabla X|^2\,d\mu_g - \int_M (\Delta V)|X|^2\,d\mu_g
+\int_{\partial M}Vh(X,X)\,d\sigma_g.
$$

By (eq:trace),
$$
-\Delta V = \frac{R}{n-1}V,
\qquad
Vh(X,X)=V_\nu|X|^2 = \frac{H}{n-1}V|X|^2
\quad \text{on }\partial M,
$$

so we obtain (eq:absolute-identity).

Since $V>0$ on $\overline M$ by the lemma above, all terms in (eq:absolute-identity) are nonnegative. If $R>0$, then necessarily $X\equiv 0$. If $R=0$, then $H>0$ by hypothesis, so (eq:absolute-identity) implies $\nabla X\equiv 0$ and $X\vert_{\partial M}=0$; hence $X\equiv 0$ on connected $M$. This proves the proposition. ∎

### Relative harmonic 1-forms

**Proposition:** Let $\eta\in\mathcal H_R^1(M)$ and let $Y=\eta^\sharp$. Then
$$
0=
\int_M V\left(|\nabla Y|^2+\frac{R}{n-1}|Y|^2\right)\,d\mu_g
+\frac{nH}{n-1}\int_{\partial M}V|Y|^2\,d\sigma_g.
\tag{eq:relative-identity}
$$

In particular, $Y\equiv 0$.

*Proof:* Because $\eta\in\mathcal H_R^1(M)$, the tangential component of $Y$ vanishes on $\partial M$. Thus along the boundary we may write
$$
Y=f\nu
$$

for a smooth function $f$ on $\partial M$. As above, (eq:symmetric-divfree) holds for $Y$.

Set
$$
J:=\int_M \operatorname{Hess} V(Y,Y)\,d\mu_g.
$$

Integrating by parts once,
$$
\begin{align}
J
&=\int_M \langle \nabla_Y\nabla V, Y\rangle \,d\mu_g \\
&=\int_{\partial M}\langle \nabla V, Y\rangle \langle Y, \nu\rangle \,d\sigma_g - \int_M \langle \nabla V, \nabla_YY\rangle \,d\mu_g \\
&=\int_{\partial M}V_\nu|Y|^2\,d\sigma_g - \int_M \langle \nabla V, \nabla_YY\rangle \,d\mu_g.
\end{align}
$$

A second integration by parts yields
$$
J=
\int_{\partial M}V_\nu|Y|^2\,d\sigma_g
-\int_{\partial M}V\langle \nabla_YY, \nu\rangle \,d\sigma_g
+\int_M V\operatorname{div}(\nabla_YY)\,d\mu_g.
$$

By the lemma above, the interior divergence term equals
$$
\int_M V\bigl(\operatorname{Ric}(Y,Y)+|\nabla Y|^2\bigr)\,d\mu_g.
$$

It remains to compute the boundary contribution. Extend $\nu$ geodesically near $\partial M$ so that $\nabla_\nu\nu=0$ along the boundary. Since $Y=f\nu$ on $\partial M$,
$$
\langle \nabla_YY, \nu\rangle =f\nu(f).
$$

On the other hand, because $\operatorname{div} Y=0$, along the boundary we have
$$
0=\operatorname{div} Y = \sum_{\alpha=1}^{n-1}\langle \nabla_{e_\alpha}(f\nu), e_\alpha\rangle +\langle \nabla_\nu(f\nu), \nu\rangle
=Hf+\nu(f),
$$

where $\{e_1,\dots,e_{n-1}\}$ is any local orthonormal frame tangent to $\partial M$. Hence $\nu(f)=-Hf$, so
$$
\langle \nabla_YY, \nu\rangle =-H|Y|^2.
$$

Substituting into the equation above gives
$$
J=
\int_{\partial M}(V_\nu+VH)|Y|^2\,d\sigma_g
+\int_M V\bigl(\operatorname{Ric}(Y,Y)+|\nabla Y|^2\bigr)\,d\mu_g.
$$

Now contract the interior static equation in (eq:static) with $Y\otimes Y$ and integrate:
$$
0=\int_M \bigl(\operatorname{Hess} V(Y,Y) - (\Delta V)|Y|^2 - V\operatorname{Ric}(Y,Y)\bigr)\,d\mu_g.
$$

Using (eq:trace), we conclude that
$$
0=
\int_M V\left(|\nabla Y|^2+\frac{R}{n-1}|Y|^2\right)\,d\mu_g
+\int_{\partial M}\left(\frac{H}{n-1}+H\right)V|Y|^2\,d\sigma_g,
$$

which is precisely (eq:relative-identity).

Again every term is nonnegative because $V>0$, $R\ge 0$, and $H\ge 0$. If $R>0$, then $Y\equiv 0$. If $R=0$, then $H>0$, hence (eq:relative-identity) implies $\nabla Y\equiv 0$ and $Y\vert_{\partial M}=0$, so $Y\equiv 0$ on connected $M$. ∎

**Proof of Theorem:** The propositions above show that
$$
\mathcal H_A^1(M)=0,
\qquad
\mathcal H_R^1(M)=0.
$$

The cohomological conclusion now follows from (eq:hodge). ∎

**Proof of Corollary:** Because $\partial M\neq\varnothing$, one has $H^0(M,\partial M;\mathbb{R})=0$. The long exact sequence of the pair $(M,\partial M)$ therefore contains
$$
0=H^0(M,\partial M;\mathbb{R})\longrightarrow H^0(M;\mathbb{R})\longrightarrow H^0(\partial M;\mathbb{R})
\longrightarrow H^1(M,\partial M;\mathbb{R})=0.
$$

Since $M$ is connected, $H^0(M;\mathbb{R})\cong\mathbb{R}$, and thus $H^0(\partial M;\mathbb{R})\cong\mathbb{R}$. Hence $\partial M$ is connected. ∎

## Further Directions

The weighted identities above are robust enough to survive a charged perturbation. Demurov and Medvedev introduced electrostatic manifolds with boundary by replacing (eq:static) with
$$
-(\Delta V)g+\operatorname{Hess} V - V\operatorname{Ric} = 2V\bigl(E^\flat\otimes E^\flat - |E|^2g\bigr)
\quad \text{in }M,
\qquad
V_\nu g_{\partial M}=Vh
\quad \text{on }\partial M,
\tag{eq:electro}
$$

where $E$ is the electric field [Demurov–Medvedev, 2025, arXiv:2505.05581]. Taking the trace gives
$$
\Delta V + \left(\frac{R}{n-1}-2|E|^2\right)V =0 \quad \text{in }M,
\qquad
V_\nu - \frac{H}{n-1}V =0 \quad \text{on }\partial M.
\tag{eq:electro-trace}
$$

Thus the same proof yields the following companion statement.

**Proposition:** Let $(M^n,g,V,E)$ be a compact connected electrostatic manifold with boundary satisfying (eq:electro). Assume that $V\ge 0$ on $M$, that $V\not\equiv 0$, and that
$$
H\ge 0,
\qquad
q:=\frac{R}{n-1}-2|E|^2\ge 0 \quad \text{on }M.
$$

If either $q\not\equiv 0$ or $H$ is positive at some boundary point, then
$$
H^1(M;\mathbb{R})=0,
\qquad
H^1(M,\partial M;\mathbb{R})=0.
$$

In particular, $\partial M$ is connected.

*Proof:* Since $q\ge 0$, the argument of the earlier lemma, with (eq:electro-trace) in place of (eq:trace), shows that $V>0$ on $\overline M$.

Let $\omega\in\mathcal H_A^1(M)$ and $X=\omega^\sharp$. Repeating the proof of the absolute harmonic proposition, but contracting (eq:electro) with $X\otimes X$, gives
$$
0=
\int_M V\Bigl(|\nabla X|^2+q|X|^2+2\bigl(|E|^2|X|^2-\langle E, X\rangle^2\bigr)\Bigr)\,d\mu_g
+\frac{H}{n-1}\int_{\partial M}V|X|^2\,d\sigma_g.
$$

All terms are nonnegative. Hence $\nabla X\equiv 0$, $q|X|^2\equiv 0$, and $|E|^2|X|^2-\langle E, X\rangle^2\equiv 0$. If $q\not\equiv 0$, then $X=0$ at some point, and since $\nabla X\equiv 0$, we obtain $X\equiv 0$. If instead $q\equiv 0$ but $H$ is positive at some boundary point, then the boundary integral forces $X$ to vanish on the boundary; since $X$ is parallel, this again gives $X\equiv 0$. Thus $\mathcal H_A^1(M)=0$.

The relative case is identical, using the proof of the relative harmonic proposition. For $\eta\in\mathcal H_R^1(M)$ and $Y=\eta^\sharp$ one obtains
$$
0=
\int_M V\Bigl(|\nabla Y|^2+q|Y|^2+2\bigl(|E|^2|Y|^2-\langle E, Y\rangle^2\bigr)\Bigr)\,d\mu_g
+\frac{nH}{n-1}\int_{\partial M}V|Y|^2\,d\sigma_g.
$$

The same reasoning shows $Y\equiv 0$, hence $\mathcal H_R^1(M)=0$. The cohomological conclusion follows from Hodge–Morrey–Friedrichs, and boundary connectedness follows exactly as in the boundary-connected corollary. ∎

Proposition above is not intended as the main result of this note; rather, it shows that the method is flexible enough to extend to a genuinely new geometric setting. A natural next step would be to replace the coercive condition $q\ge 0$ by a weaker integrated hypothesis, or to treat the more general $V$-static-type equations considered by Andrade [Andrade, 2026, arXiv:2602.21075].

## Remarks and Open Questions

**Remark (Sharpness of the hypothesis $R+H>0$):** The condition $R+H>0$ cannot be removed. Let
$$
M=[0,1]\times T^{n-1}
$$

with the flat product metric and let $V\equiv 1$. Then (eq:static) holds, while $R=0$ and $H=0$. However, $H^1(M;\mathbb{R})\cong\mathbb{R}^n\neq 0$, and the boundary has two connected components. Thus both the cohomological and the boundary-connectedness conclusions fail when $R=H=0$.

**Remark (Why the one-sign assumption enters):** The present proof uses the static potential itself as a positive weight. If $V$ changes sign, one may try to integrate over nodal domains of $V$, but additional interior boundary terms appear on the nodal set and are not controlled by the present argument. In this sense, the one-sign assumption is not merely cosmetic; it is built into the current proof architecture.

**Question:** Can the conclusion of the main theorem be proved without assuming that the static potential has one sign?

**Question:** Is there a version of the main theorem under weaker hypotheses on $(R,H)$, for example when $H$ is allowed to change sign but a suitable bulk-boundary coercivity inequality still holds?

**Question:** Can the cohomological vanishing theorem be extended to the general $V$-static-type equations of [Andrade, 2026, arXiv:2602.21075], where the interior equation contains a nonzero multiple of the metric and the boundary equation acquires an inhomogeneous term?

## References

- [Andrade, 2026, arXiv:2602.21075] M. Andrade, *Integral inequalities and rigidity for $V$-static-type equations on manifolds with boundary*, arXiv:2602.21075, 2026.

- [Demurov–Medvedev, 2025, arXiv:2505.05581] S. Demurov and V. Medvedev, *On electrostatic manifolds with boundary*, arXiv:2505.05581, 2025.

- [Gilbarg–Trudinger, 1998, Springer] D. Gilbarg and N. S. Trudinger, *Elliptic Partial Differential Equations of Second Order*, 2nd ed., rev. 3rd printing, Springer, 1998.

- [Schwarz, 1995, LNM 1607] G. Schwarz, *Hodge Decomposition—A Method for Solving Boundary Value Problems*, Lecture Notes in Mathematics 1607, Springer, 1995.

- [Sheng, 2025, arXiv:2403.19169] H. Sheng, *Static manifolds with boundary and rigidity of scalar curvature and mean curvature*, arXiv:2403.19169, 2025.

- [Sheng–Zhao, 2026, arXiv:2601.01823] H. Sheng and K.-W. Zhao, *Obata-type rigidity on static manifolds with boundary*, arXiv:2601.01823, 2026.

- [Wang, 2024, arXiv:2408.12180] Z. Wang, *Riccati equation for static spaces and its applications*, arXiv:2408.12180, 2024.


