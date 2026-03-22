## Method Card
- **Short tag:** sub-static threshold invariant
- **Full name:** Threshold invariant for separated sub-static line factors.
- **Input setting:** The separated sub-static ansatz on R x N with metric g = beta(y)^2 dt^2 + h(y) and potential V = A(t) beta(y).
- **New object / driver:** The slice tensor T_h(beta) and its threshold invariant kappa_* = inf lambda_min(T_h(beta)).
- **Obstruction resolved:** The full tensor inequality is hard to read directly, so there was no exact criterion for when bounded positive nonconstant line factors can exist.
- **Expected outputs:** An equivalence between the tensor inequality and the ODE A'' + kappa_* A >= 0, a sharp existence criterion kappa_* > 0, and local corollaries in terms of trace, directions, determinants, and collars.
- **Transfer targets:** Threshold-type rigidity questions for split or warped structures, especially in boundary collars and low-dimensional slice geometries.
- **Main technical risk:** The criterion is exact only inside the separated ansatz, and connecting it back to broader geometric frameworks requires additional pointwise input.
- **Mechanism type:** rigidity, defect control, comparison geometry
- **Tags:** sub-static, threshold-invariant, line-factor, ODE, slice-tensor, collar
- **Method link:** ../methods/sub_static_threshold_invariant.md

**Condensation.** The new viewpoint is to compress the full separated sub-static tensor inequality into a single threshold invariant on the slice, so the line factor is governed by one number instead of an opaque tensor system. This overcomes the obstruction that bounded nonconstant line factors were hard to detect or rule out from the original inequality. The operative mechanism is to identify the slice tensor T_h(beta), reduce the problem to the ODE A'' + kappa_* A >= 0, and then read off existence and rigidity directly from the sign of kappa_*. If it works, it gives an exact threshold criterion for nontrivial line dependence together with sharp local tests in compact, three-dimensional, and boundary-collar situations.

# Threshold Rigidity for Separated Sub-Static Splittings

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

We study the separated sub-static ansatz
$$
  g=\beta(y)^2dt^2+h(y),   V(t,y)=A(t)\beta(y),
$$
on $\mathbb{R}\times N^{n-1}$ under the inequality
$$
  S(V,g):=V\operatorname{Ric}_g+(\Delta_gV)g-\nabla^2_gV\ge 0.
$$
For this ansatz, we show that the full tensor inequality is equivalent to the
one-dimensional condition
$$
  A''(t)+\kappa_* A(t)\ge 0   \text{for all } t\in \mathbb{R},
$$
where
$$
  \kappa_*=\inf_{y\in N}\lambda_{\min}^h\bigl(\mathcal{T}_h(\beta)(y)\bigr),  
  \mathcal{T}_h(\beta)=\beta^2\operatorname{Ric}_h-2\beta\nabla^2_h\beta+(\beta\Delta_h\beta+|\nabla_h\beta|_h^2)h.
$$
This yields an exact criterion for bounded positive nonconstant line factors:
such an $A$ exists if and only if $\kappa_*>0$.

We derive sharp local corollaries. Strict negativity of the traced slice tensor
or of a single tensor direction implies nonexistence of bounded positive line factors,
while the borderline case forces constancy. On compact slices, the existence of a
bounded positive nonconstant line factor is equivalent to pointwise positive-definiteness
of $\mathcal{T}_h(\beta)$. In dimension three we obtain a critical-point determinant criterion:
at every critical point of $\beta$, nonconstant bounded line factors require
$$
  \beta K_h>|\lambda_1-\lambda_2|,
$$
where $K_h$ is the Gauss curvature and $\lambda_1,\lambda_2$ are the eigenvalues
of $\nabla^2_h\beta$.

We also prove a conformal reformulation of $\mathcal{T}_h(\beta)$, and use it to derive a
boundary-control theorem in a geodesic collar. Finally, we record a corrected formal
collar expansion clarifying what additional pointwise input would be needed to connect
the threshold invariant directly to Wang's Neumann-data framework.

**MSC 2020**: 53C21, 53C25, 58J60.
**Keywords**: sub-static manifold, splitting theorem, threshold invariant,
Bakry-Emery tensor, warped product, rigidity.

## Introduction

A Riemannian triple $(M^n,g,V)$ with $V>0$ is called *sub-static* if
$$
  S(V,g):=V\operatorname{Ric}_g+(\Delta_gV)g-\nabla^2_gV\ge 0.
$$
This condition appears naturally in the static Einstein setting and in recent
comparison, rigidity, and splitting results for weighted and conformally compact
geometries [WangRiccati, BF, CFMR, GSW]. A central structural question in the
sub-static splitting program is whether the presence of a line forces the potential
to be independent of the line direction.

In Wang's Riccati approach [WangRiccati], the unresolved part of the splitting
problem reduces to the separated ansatz
$$
  g=\beta(y)^2dt^2+h(y),   V(t,y)=A(t)\beta(y), \tag{ansatz}
$$
on $M=\mathbb{R}\times N^{n-1}$, with $\beta>0$ on the slice and $A>0$ on $\mathbb{R}$.
The remaining question is whether the sub-static inequality forces $A$ to be constant.
The purpose of this paper is to give an exact criterion for that question inside the
separated ansatz.

The key observation is that the slice block of $S(V,g)$ factors into a purely geometric
tensor and a one-dimensional term. This leads to the threshold tensor
$$
  \mathcal{T}_h(\beta):=\beta^2\operatorname{Ric}_h-2\beta\nabla^2_h\beta+(\beta\Delta_h\beta+|\nabla_h\beta|_h^2)h
$$
and the threshold invariant
$$
  \kappa_*:=\inf_{y\in N}\lambda_{\min}^h\bigl(\mathcal{T}_h(\beta)(y)\bigr).
$$
Our main result states that, for the separated ansatz, the condition $S\ge 0$
is equivalent to the scalar ODE inequality
$$
  A''+\kappa_* A\ge 0.
$$
The existence problem for bounded positive nonconstant line factors is therefore
completely determined by the sign of $\kappa_*$.

This reformulation has several immediate consequences. It upgrades the local trace and
tensor obstructions to sharp nonexistence/rigidity statements, yields a compact-slice
criterion in terms of pointwise positive-definiteness of $\mathcal{T}_h(\beta)$, and in dimension three
produces a clean determinant test at critical points of $\beta$. We also record a
conformal identity for $\mathcal{T}_h(\beta)$ and a boundary-control theorem in a geodesic collar,
followed by a corrected formal asymptotic lemma relevant to Wang's boundary expansions.

The strongest clean contribution of the paper is the exact threshold criterion together
with its corollaries. The later conformal and boundary sections are intended as a
geometric interface with the broader splitting program, rather than as a full solution
to the general conformally compact case.

### Main results

The paper is built around one exact structural theorem and several sharp corollaries.
The structural theorem is the Exact Threshold Criterion (Theorem 3.2 below): for the separated ansatz,
the tensor inequality $S(V,g)\ge 0$ is equivalent to the scalar inequality
$A''+\kappa_* A\ge 0$. This result is stronger than a rigidity statement alone because it
simultaneously gives an existence theorem in the positive-threshold regime.

The local consequences are recorded in the Sharp Trace Obstruction and Sharp Tensor Obstruction propositions.
They sharpen the usual convexity argument by distinguishing the strict
and borderline cases: strict negativity of a local obstruction yields nonexistence of
bounded positive line factors, while equality yields constancy. In the compact case,
the Compact Slices Corollary turns the global existence problem into a pointwise
positive-definiteness test for $\mathcal{T}_h(\beta)$.

The three-dimensional results show that the threshold theory has concrete geometric
content beyond the scalar ODE reduction. At critical points of $\beta$, positivity of the
slice tensor becomes an explicit inequality relating Gauss curvature and Hessian
anisotropy. The conformal and collar results then reinterpret the same threshold through
the compactified metric and show how boundary geometry can force rigidity.

### Context and comparison with the literature

The present paper should be read as a contribution to the separated-ansatz step in the
sub-static splitting program, rather than as a full new splitting theorem for arbitrary
sub-static manifolds. In Wang's line-based approach [WangRiccati], the unresolved
issue is the constancy of the line factor once the separated form (ansatz) has
been obtained. Our exact threshold criterion addresses precisely that point.

This perspective is complementary to other approaches in the literature. Colombo,
Freitas, Mari, and Rigoli [CFMR] obtain rigidity statements from stable minimal
hypersurfaces, while Borghini and Fogagnolo [BF] develop weighted comparison
geometry under the sub-static condition. The threshold invariant extracted here is
different in flavor: it is neither purely variational nor purely comparison-theoretic,
but instead an eigenvalue bound arising directly from the slice block of $S(V,g)$.

The conformal identity in the Conformal Reformulation section suggests that these viewpoints are
not unrelated. After conformal compactification, the threshold tensor becomes a
Bakry--\'Emery-type curvature quantity. This does not by itself solve the compactified
problem, but it indicates that the threshold invariant is geometrically natural and not
an artifact of the separated coordinates.

### Organization

Section 2 derives the slice decomposition.
Section 3 proves the exact threshold criterion and the bounded-solution criterion.
Section 4 explains how the threshold interacts with local tests and records model families.
Section 5 treats scaling and one-dimensional slices.
Section 6 proves the sharp local obstructions.
Section 7 treats the surface (dimension-three) case.
Section 8 contains the conformal reformulation and the collar theorem.
Section 9 records the corrected formal expansion relevant to Wang's boundary data.
The appendices collect the warped-product formulas, the ODE lemmas, and expanded model computations.

## The Separated Ansatz and Slice Decomposition

Throughout, $(N^m,h)$ denotes a connected smooth Riemannian manifold of dimension
$m=n-1\ge 1$. We write $R_h$, $\operatorname{Ric}_h$, $\Delta_h$, $\nabla_h$, and $\nabla^2_h$ for the
scalar curvature, Ricci tensor, Laplacian, gradient, and Hessian of $(N,h)$.
We fix $\beta\in C^\infty(N)$ with $\beta>0$, and $A\in C^\infty(\mathbb{R})$ with $A>0$.
All tensors are smooth.

The two slice tensors used throughout are
$$
\begin{aligned}
  \Theta_h(\beta) &:= \beta\operatorname{Ric}_h-2\nabla^2_h\beta+ \\
  \bigl(\Delta_h\beta+\beta^{-1}|\nabla_h\beta|_h^2\bigr)h, \\
  \mathcal{T}_h(\beta) &:= \beta\Theta_h(\beta) \\
  = \beta^2\operatorname{Ric}_h-2\beta\nabla^2_h\beta+
  \bigl(\beta\Delta_h\beta+|\nabla_h\beta|_h^2\bigr)h.
\end{aligned}
$$
The $h$-trace of $\Theta_h(\beta)$ is
$$
  \mathcal{Q}_h(\beta)=\beta R_h+(n-3)\Delta_h\beta+(n-1)\beta^{-1}|\nabla_h\beta|_h^2.
$$
The starting point is the following decomposition.

**Lemma 2.1 (Slice decomposition).**

Under the separated ansatz (ansatz),
$$
  S(\partial_t,\partial_t)=0, \qquad S(\partial_i,\partial_t)=0,
$$
and on the slice directions one has
$$
  S(\partial_i,\partial_j)=A\Theta_h(\beta)_{ij}+\beta^{-1}A''h_{ij}. \tag{Sij}
$$
In particular,
$$
  \operatorname{tr}_h\bigl(S|_{TN}\bigr)=A\mathcal{Q}_h(\beta)+(n-1)\beta^{-1}A''. \tag{traceid}
$$
**Proof.**

For $g=\beta^2dt^2+h$, the nonzero Christoffel symbols involving the $t$-direction are
$$
  \Gamma^t_{it}=\beta^{-1}\partial_i\beta, \qquad
  \Gamma^i_{tt}=-\beta\nabla_h^i\beta, \qquad
  \Gamma^k_{ij}=\Gamma^k_{ij}(h).
$$
With $V=A(t)\beta(y)$, the Hessian components are
$$
\begin{aligned}
  \nabla^2_gV(\partial_t,\partial_t)
  &=A''\beta+A\beta|\nabla_h\beta|_h^2, \\
  \nabla^2_gV(\partial_i,\partial_t)
  &=0, \\
  \nabla^2_gV(\partial_i,\partial_j)
  &=A\nabla^2_h\beta_{ij}.
\end{aligned}
$$
Hence
$$
  \Delta_gV=\beta^{-1}A''+A\Delta_h\beta+A\beta^{-1}|\nabla_h\beta|_h^2.
$$
The Ricci tensor of $g=\beta^2dt^2+h$ satisfies
$$
\begin{aligned}
  \operatorname{Ric}_g(\partial_t,\partial_t)&=-\beta\Delta_h\beta, \\
  \operatorname{Ric}_g(\partial_i,\partial_t)&=0, \\
  \operatorname{Ric}_g(\partial_i,\partial_j)&=\operatorname{Ric}_h{}_{ij}-\beta^{-1}\nabla^2_h\beta_{ij}.
\end{aligned}
$$
Substituting these identities into
$S(V,g)=V\operatorname{Ric}_g+(\Delta_gV)g-\nabla^2_gV$ gives $S_{tt}=0$, $S_{it}=0$, and
$$
\begin{aligned}
  S_{ij}
  &=A\beta\bigl(\operatorname{Ric}_h{}_{ij}-\beta^{-1}\nabla^2_h\beta_{ij}\bigr) \\
    +\bigl(\beta^{-1}A''+A\Delta_h\beta+A\beta^{-1}|\nabla_h\beta|_h^2\bigr)h_{ij}
    -A\nabla^2_h\beta_{ij} \\
  &=A\bigl(\beta\operatorname{Ric}_h{}_{ij}-2\nabla^2_h\beta_{ij} \\
    +(\Delta_h\beta+\beta^{-1}|\nabla_h\beta|_h^2)h_{ij}\bigr)
    +\beta^{-1}A''h_{ij},
\end{aligned}
$$
which is (Sij). Taking the $h$-trace yields (traceid). $\square$

**Remark.**

Lemma 2.1 shows that all sub-static information for the separated ansatz
lives in the slice block. In particular, the constancy problem for the line factor $A$
is entirely encoded by the slice geometry $(N,h,\beta)$.

## The Exact Threshold Criterion

We begin by noting that finiteness of the threshold invariant is automatic whenever
a separated sub-static solution exists.

**Lemma 3.1 (Automatic finiteness of $\kappa_*$).**

Assume the separated ansatz (ansatz) with $A>0$ and $S(V,g)\ge 0$.
Then
$$
  \kappa_*=\inf_{y\in N}\lambda_{\min}^h\bigl(\mathcal{T}_h(\beta)(y)\bigr)>-\infty.
$$
**Proof.**

Multiplying (Sij) by $\beta>0$ gives
$$
  A(t)\mathcal{T}_h(\beta)(y)+A''(t)h(y)\ge 0
    \qquad\text{for all } t\in\mathbb{R},\ y\in N. \tag{T-inequality}
$$
Fix $t_0\in\mathbb{R}$. For every $y\in N$ and every $h$-unit vector $X\in T_yN$,
$$
  0\le A(t_0)\mathcal{T}_h(\beta)(X,X)+A''(t_0).
$$
Since $A(t_0)>0$,
$$
  \mathcal{T}_h(\beta)(X,X)\ge -\frac{A''(t_0)}{A(t_0)}.
$$
Taking the infimum over all $y$ and all $h$-unit vectors $X$ yields
$$
  \kappa_*\ge -\frac{A''(t_0)}{A(t_0)}>-\infty. \qquad\square
$$
**Theorem 3.2 (Exact threshold criterion).**

Under the separated ansatz (ansatz) with $A>0$, the sub-static condition
$S(V,g)\ge 0$ is equivalent to
$$
  A''(t)+\kappa_* A(t)\ge 0   \qquad\text{for all } t\in\mathbb{R}. \tag{ode}
$$
**Proof.**

By Lemma 2.1, $S\ge 0$ is equivalent to
$$
  A(t)\mathcal{T}_h(\beta)(y)+A''(t)h(y)\ge 0
    \quad\text{as bilinear forms on }T_yN,\quad
    \forall t\in\mathbb{R},\ y\in N.
$$
Assume first that (ode) holds. For every $y\in N$ and every $h$-unit vector
$X\in T_yN$,
$$
  \mathcal{T}_h(\beta)(X,X)\ge \lambda_{\min}^h(\mathcal{T}_h(\beta)(y))\ge \kappa_*.
$$
Hence
$$
  A(t)\mathcal{T}_h(\beta)(X,X)+A''(t)\ge A(t)\kappa_*+A''(t)\ge 0,
$$
which proves (T-inequality), and therefore $S\ge 0$.

Conversely, assume (T-inequality). Fix $t\in\mathbb{R}$. Then for every $y\in N$ and
every $h$-unit vector $X\in T_yN$,
$$
  0\le A(t)\mathcal{T}_h(\beta)(X,X)+A''(t).
$$
Taking the infimum over $y$ and $X$ gives
$$
  0\le A(t)\kappa_* + A''(t),
$$
which is (ode). $\square$

**Corollary 3.3 (Bounded-solution criterion).**

Assume the separated ansatz (ansatz) with $A>0$ bounded on $\mathbb{R}$.
Then a bounded positive nonconstant line factor exists if and only if $\kappa_*>0$.

**Proof.**

If $\kappa_*>0$, choose $0<\omega^2<\kappa_*$ and $0<\varepsilon<1$, and set
$$
  A(t)=1+\varepsilon\sin(\omega t).
$$
Then $A$ is bounded, positive, and nonconstant, and
$$
  A''(t)+\kappa_* A(t)
  =\kappa_*+\varepsilon(\kappa_*-\omega^2)\sin(\omega t)
  \ge \kappa_*-\varepsilon(\kappa_*-\omega^2)>0.
$$
So Theorem 3.2 gives $S\ge 0$.

Conversely, suppose $A$ is bounded, positive, and nonconstant with $S\ge 0$.
By Theorem 3.2, $A''+\kappa_* A\ge 0$.
If $\kappa_*<0$, write $\kappa_*=-\mu$ with $\mu>0$. Then
$$
  A''(t)\ge \mu A(t)>0   \qquad\text{for all } t.
$$
Thus $A'$ is strictly increasing. Fix $t_0\in\mathbb{R}$.
If $A'(t_0)\ge 0$, then $A'(t)>0$ for all $t>t_0$, so $A(t)\to+\infty$ as
$t\to+\infty$. If $A'(t_0)<0$, then $A'(t)\le A'(t_0)<0$ for every $t<t_0$, hence
$$
  A(t)\ge A(t_0)-A'(t_0)(t_0-t)\to+\infty
    \quad(t\to-\infty).
$$
So $A$ cannot be bounded. If $\kappa_*=0$, then $A''\ge 0$, so $A$ is convex; a convex
function bounded above on all of $\mathbb{R}$ is constant. Both alternatives contradict the
assumption that $A$ is bounded and nonconstant. Therefore $\kappa_*>0$. $\square$

**Proposition 3.4 (Uniform spectral-gap criterion).**

For a fixed slice $(N,h,\beta)$, the following are equivalent.

(i) There exists a bounded positive nonconstant $A:\mathbb{R}\to(0,\infty)$ for which the
  separated ansatz is sub-static.

(ii) $\kappa_*>0$.

(iii) There exists $\kappa>0$ such that $\mathcal{T}_h(\beta)\ge \kappa h$ pointwise on $N$.

If $N$ is compact, these are further equivalent to:

(iv) $\mathcal{T}_h(\beta)$ is positive-definite at every point of $N$.

**Proof.**

The equivalence of (i) and (ii) is Corollary 3.3.
The equivalence of (ii) and (iii) is immediate from the definition of
$\kappa_*$ as the infimum of the smallest $h$-eigenvalue of $\mathcal{T}_h(\beta)$.

Assume now that $N$ is compact. If (iv) holds, the continuous function
$y\mapsto \lambda_{\min}^h(\mathcal{T}_h(\beta)(y))$ attains a positive minimum, so $\kappa_*>0$.
Conversely, if $\kappa_*>0$, then $\mathcal{T}_h(\beta)\ge \kappa_* h$, hence $\mathcal{T}_h(\beta)$ is
positive-definite everywhere. $\square$

**Example 3.5 (Three basic regimes).**

The sign possibilities for $\kappa_*$ are all realized.

(i) If $n\ge 3$, $N=S^{n-1}$ with the round metric of sectional curvature $1$, and
  $\beta\equiv 1$, then $\mathcal{T}_h(\beta)=(n-2)h$, so $\kappa_*=n-2>0$.

(ii) If $N=T^{n-1}$ is flat and $\beta\equiv c>0$, then $\mathcal{T}_h(\beta)=0$, so $\kappa_*=0$.

(iii) If $N=\mathbb{R}^m$ is Euclidean and $\beta(y)=1+(y^1)^2$, then
$$
  \mathcal{T}_h(\beta)
  =\bigl(-2+2(y^1)^2\bigr)dy^1\otimes dy^1
  +\bigl(2+6(y^1)^2\bigr)\sum_{\alpha=2}^m dy^\alpha\otimes dy^\alpha,
$$
and hence $\kappa_*=-2<0$.

## Qualitative Consequences and Model Families

The exact threshold criterion has a simple conceptual consequence: the separated theory
is controlled by the sign of a single spectral quantity. This section spells out how the
threshold interacts with the more local trace and tensor tests and explains why
$\kappa_*$ is the correct global invariant.

**Proposition 4.1 (Hierarchy of sign conditions).**

Assume the separated ansatz with $A>0$ bounded and $S\ge 0$.

(i) If $\kappa_*>0$, then $\Theta_h(\beta)$ is positive-definite at every point of $N$, and
  $\mathcal{Q}_h(\beta)>0$ everywhere.

(ii) If there exist $y_0\in N$ and $0\neq X\in T_{y_0}N$ such that
  $\Theta_h(\beta)(X,X)\le 0$, then $\kappa_*\le 0$.

(iii) If $N$ is compact, then $\kappa_*>0$ if and only if $\Theta_h(\beta)$ is positive-definite
  everywhere.

**Proof.**

If $\kappa_*>0$, then every eigenvalue of $\mathcal{T}_h(\beta)(y)$ is bounded below by $\kappa_*$, so
$\mathcal{T}_h(\beta)(y)$ is positive-definite for every $y$. Since $\mathcal{T}_h(\beta)=\beta\Theta_h(\beta)$ and $\beta>0$,
the same is true of $\Theta_h(\beta)$. Taking traces yields
$$
  \beta(y)\mathcal{Q}_h(\beta)(y)=\operatorname{tr}_h\mathcal{T}_h(\beta)(y)\ge m\kappa_*>0,
$$
so $\mathcal{Q}_h(\beta)>0$.

If $\Theta_h(\beta)(X,X)\le 0$ at $(y_0,X)$, then
$$
  \mathcal{T}_h(\beta)(X,X)=\beta(y_0)\Theta_h(\beta)(X,X)\le 0.
$$
Hence the smallest eigenvalue of $\mathcal{T}_h(\beta)(y_0)$ is nonpositive, so $\kappa_*\le 0$.
The compact statement follows from Proposition 3.4. $\square$

**Remark 4.2.**

Proposition 4.1 clarifies the relation between the local and global
criteria. A positive threshold forces positivity of every local obstruction, while a
single nonpositive tensor direction excludes the positive-threshold regime. The threshold
criterion is therefore best viewed as the global completion of the local obstruction
theory.

**Proposition 4.3 (Constant $\beta$ and Einstein slices).**

Suppose $\beta\equiv c>0$ is constant. Then
$$
  \mathcal{T}_h(\beta)=c^2\operatorname{Ric}_h, \qquad
  \kappa_*=c^2\inf_{y\in N}\lambda_{\min}^h\bigl(\operatorname{Ric}_h(y)\bigr).
$$
In particular, if $h$ is Einstein with $\operatorname{Ric}_h=\lambda h$, then $\kappa_*=c^2\lambda$.

**Proof.**

If $\beta$ is constant, then $\nabla_h\beta=0$ and $\nabla^2_h\beta=0$, so
$\mathcal{T}_h(\beta)=\beta^2\operatorname{Ric}_h$.
The eigenvalue formula is immediate. $\square$

**Remark 4.4.**

Proposition 4.3 shows that the threshold criterion extends the standard
constant-curvature examples in the simplest possible way. Positive Einstein slices lie in
the positive-threshold regime, Ricci-flat slices lie in the borderline regime, and
negative Einstein slices lie in the obstructed regime.

### Compact and noncompact model families

The compact case is especially transparent because positivity of $\mathcal{T}_h(\beta)$ immediately
produces a uniform positive lower bound. On noncompact slices, by contrast, the smallest
eigenvalue may drift to zero or to $-\infty$ at infinity, so the global invariant
$\kappa_*$ is genuinely stronger than pointwise positivity at individual points.

**Example 4.5 (Compact positive regime).**

If $n\ge 3$, $N=S^{n-1}$ is round, and $\beta\equiv 1$, then $\mathcal{T}_h(\beta)=(n-2)h$, so the positive
regime is realized with a uniform gap. In particular, the periodic family
$A(t)=1+\varepsilon\sin(\omega t)$ with $\omega^2<n-2$ gives explicit bounded positive
nonconstant separated sub-static triples.

**Example 4.6 (Borderline compact regime).**

If $N=T^{n-1}$ is flat and $\beta\equiv c>0$, then $\mathcal{T}_h(\beta)=0$ and the condition $S\ge 0$
reduces to $A''\ge 0$. The borderline regime is therefore genuinely rigid: every bounded
positive line factor is constant.

**Example 4.7 (One-dimensional negative regime).**

Let $N=\mathbb{R}$ with metric $dy^2$ and $\beta(y)=\cosh y$. Since the slice is one-dimensional,
$\operatorname{Ric}_h=0$ and
$$
  \mathcal{T}_h(\beta)=-2\beta\beta''+(\beta\beta''+(\beta')^2)dy^2.
$$
Using $\beta''=\cosh y$ and $(\beta')^2=\sinh^2 y$, one obtains
$$
  \mathcal{T}_h(\beta)=\bigl(-\cosh^2 y+\sinh^2 y\bigr)dy^2=-dy^2.
$$
Thus $\kappa_*=-1<0$.

**Example 4.8 (Anisotropic noncompact negative regime).**

The Euclidean example in Example 3.5(iii) shows that the negative
regime may be caused by a single bad direction even when all transverse directions are
uniformly positive. This anisotropy is precisely why the threshold is defined through the
smallest eigenvalue rather than through a trace or averaged quantity.

### Why the threshold is the correct invariant

The local quantities $\mathcal{Q}_h(\beta)$ and $\Theta_h(\beta)$ arise naturally from the slice decomposition, but
the existence problem for bounded positive nonconstant line factors is not fundamentally a
trace problem and not even a pointwise tensor problem. The relevant inequality is
$$
  A(t)\mathcal{T}_h(\beta)(y)+A''(t)h(y)\ge 0.
$$
For each fixed $t$, the only slice quantity that controls this inequality in all unit
directions simultaneously is the smallest eigenvalue of $\mathcal{T}_h(\beta)(y)$. Passing from $y$ to
the whole slice then leads exactly to $\kappa_*$.

From this point of view, the hierarchy of statements in the paper is natural. Tracing the
slice block gives the trace obstruction, evaluating on one vector gives the tensor
obstruction, and minimizing over all points and directions gives the exact threshold
criterion. The strongest theorem is therefore not a separate idea from the local
obstructions; it is the sharp global form of the same slice identity.

## Scaling and One-Dimensional Slices

Two simple structural observations are worth recording separately. The first concerns the
effect of rescaling the lapse factor $\beta$. The second gives a complete description of
the threshold tensor when the slice is one-dimensional.

**Proposition 5.1 (Scaling in $\beta$).**

For every constant $c>0$,
$$
  \mathcal{T}_h(c\beta)=c^2\mathcal{T}_h(\beta), \qquad
  \kappa_*(h,c\beta)=c^2\kappa_*(h,\beta).
$$
Consequently, multiplying $\beta$ by a positive constant preserves the sign of $\kappa_*$.

**Proof.**

Using the definition,
$$
\begin{aligned}
  \mathcal{T}_h(c\beta)
  &=(c\beta)^2\operatorname{Ric}_h-2(c\beta)\nabla^2_h(c\beta) \\
    +\bigl((c\beta)\Delta_h(c\beta)+|\nabla_h(c\beta)|_h^2\bigr)h \\
  &=c^2\beta^2\operatorname{Ric}_h-2c^2\beta\nabla^2_h\beta \\
    +c^2\bigl(\beta\Delta_h\beta+|\nabla_h\beta|_h^2\bigr)h \\
  &=c^2\mathcal{T}_h(\beta).
\end{aligned}
$$
Taking the smallest eigenvalue and the infimum over $N$ yields the formula for $\kappa_*$. $\square$

**Remark 5.2.**

Proposition 5.1 is consistent with the separated metric $g=\beta^2dt^2+h$.
Multiplying $\beta$ by a constant rescales the distinguished line direction and therefore
changes the threshold by a quadratic factor. The sign of the threshold, which is the
quantity relevant to rigidity and existence, is unaffected.

**Proposition 5.3 (One-dimensional slice formula).**

Assume $m=1$, so $N$ is one-dimensional with local coordinate $y$ and metric $h=dy^2$.
Then
$$
  \mathcal{T}_h(\beta)=\bigl((\beta')^2-\beta\beta''\bigr)dy^2
  =-\beta^2(\ln\beta)''dy^2.
$$
In particular,
$$
  \kappa_*=\inf_{y\in N}\bigl((\beta'(y))^2-\beta(y)\beta''(y)\bigr).
$$
**Proof.**

In one dimension $\operatorname{Ric}_h=0$, $\nabla^2_h\beta=\beta''dy^2$, and $\Delta_h\beta=\beta''$.
Substituting into the definition gives
$$
  \mathcal{T}_h(\beta)=-2\beta\beta''dy^2+\bigl(\beta\beta''+(\beta')^2\bigr)dy^2
  =\bigl((\beta')^2-\beta\beta''\bigr)dy^2.
$$
Since
$$
  (\ln\beta)'=\frac{\beta'}{\beta}, \qquad
  (\ln\beta)''=\frac{\beta\beta''-(\beta')^2}{\beta^2},
$$
the second identity follows. $\square$

**Corollary 5.4 (Compact one-dimensional slices).**

Assume $m=1$ and $N$ is compact. Then every bounded positive line factor is constant.
Equivalently, there is no bounded positive nonconstant line factor in the separated
sub-static ansatz over a compact one-dimensional slice.

**Proof.**

If $\beta$ is constant, then $\mathcal{T}_h(\beta)=0$ by Proposition 5.3, so $\kappa_*=0$ and
Corollary 3.3 gives constancy of $A$.

Assume $\beta$ is nonconstant. Since $N$ is compact, $\beta$ attains a minimum at some
point $y_0$. There one has $\beta'(y_0)=0$ and $\beta''(y_0)\ge 0$. Proposition 5.3 then gives
$$
  \mathcal{T}_h(\beta)(y_0)=-\beta(y_0)\beta''(y_0)dy^2\le 0,
$$
so $\kappa_*\le 0$. Corollary 3.3 again forces $A$ to be constant. $\square$

**Remark 5.5.**

Corollary 5.4 shows that the positive-threshold regime is inherently a
higher-dimensional phenomenon, at least for compact slices. In one dimension the threshold
can still be positive on noncompact examples, but compactness forces a minimum point of
$\beta$ and therefore a nonpositive value of $\mathcal{T}_h(\beta)$.

**Example 5.6 (Three one-dimensional models).**

The one-dimensional formula makes several examples completely transparent.

(i) If $\beta(y)=e^{ay}$ on $\mathbb{R}$, then $(\beta')^2-\beta\beta''=0$, so $\kappa_*=0$.

(ii) If $\beta(y)=\cosh y$, then $(\beta')^2-\beta\beta''=-1$, so $\kappa_*=-1$; this
  recovers Example 4.7.

(iii) If $\beta(y)=e^{-y^2}$ on $\mathbb{R}$, then
$$
  (\beta')^2-\beta\beta''=2e^{-2y^2},
$$
so $\kappa_*=0$ even though the threshold is strictly positive at every finite point.
This illustrates that on noncompact slices, pointwise positivity does not imply the
uniform positive gap required by Corollary 3.3.

## Sharp Local Obstructions

The exact threshold criterion has immediate local corollaries. The strict-sign cases
give nonexistence rather than mere constancy.

**Proposition 6.1 (Sharp trace obstruction).**

Assume the separated ansatz with $A>0$ bounded and $S\ge 0$. Fix $y_0\in N$.

(i) If $\mathcal{Q}_h(\beta)(y_0)<0$, then no bounded positive line factor exists.

(ii) If $\mathcal{Q}_h(\beta)(y_0)=0$, then every bounded positive line factor is constant.

**Proof.**

By (traceid),
$$
  0\le A(t)\mathcal{Q}_h(\beta)(y_0)+(n-1)\beta(y_0)^{-1}A''(t)
    \qquad\text{for all } t\in\mathbb{R}.
$$
If $\mathcal{Q}_h(\beta)(y_0)<0$, define
$$
  c:=-\frac{\beta(y_0)\mathcal{Q}_h(\beta)(y_0)}{n-1}>0.
$$
Then $A''(t)\ge cA(t)>0$ for all $t$. The argument from the proof of
Corollary 3.3 shows that $A$ is unbounded in at least one direction,
which is impossible.
If $\mathcal{Q}_h(\beta)(y_0)=0$, then $A''\ge 0$, so $A$ is convex. Since $A$ is bounded above on
$\mathbb{R}$, it is constant. $\square$

**Proposition 6.2 (Sharp tensor obstruction).**

Assume the separated ansatz with $A>0$ bounded and $S\ge 0$. Fix $y_0\in N$ and
$0\neq X\in T_{y_0}N$.

(i) If $\Theta_h(\beta)(X,X)<0$, then no bounded positive line factor exists.

(ii) If $\Theta_h(\beta)(X,X)=0$, then every bounded positive line factor is constant.

**Proof.**

Evaluating (Sij) on $(X,X)$ gives
$$
  0\le A(t)\Theta_h(\beta)(X,X)+\beta(y_0)^{-1}A''(t)|X|_h^2
    \qquad\text{for all } t\in\mathbb{R}.
$$
If $\Theta_h(\beta)(X,X)<0$, define
$$
  c:=-\frac{\beta(y_0)\Theta_h(\beta)(X,X)}{|X|_h^2}>0.
$$
Then $A''(t)\ge cA(t)>0$ for all $t$, so the same monotonicity argument shows that
$A$ cannot be bounded. If $\Theta_h(\beta)(X,X)=0$, then $A''\ge 0$, hence $A$ is convex and
therefore constant. $\square$

**Corollary 6.3 (Compact slices).**

Assume $N$ is compact. Then there exists a bounded positive nonconstant line factor
for the separated ansatz if and only if $\Theta_h(\beta)$ is positive-definite everywhere on $N$,
equivalently if and only if $\mathcal{T}_h(\beta)$ is positive-definite everywhere on $N$.

**Proof.**

Since $\mathcal{T}_h(\beta)=\beta\Theta_h(\beta)$ and $\beta>0$, positive-definiteness of $\Theta_h(\beta)$ and $\mathcal{T}_h(\beta)$
are equivalent pointwise. The claim then follows from Proposition 3.4. $\square$

**Example 6.4 (Tensor obstruction where the trace obstruction is silent).**

Let $n=3$, let $N=\mathbb{R}^2$ with the Euclidean metric, and set
$\beta(x,y)=e^x+c$, $c\ge 0$.
Then $\operatorname{Ric}_h=0$, $\nabla^2_h\beta=e^xdx\otimes dx$, $\Delta_h\beta=e^x$, and
$\beta^{-1}|\nabla\beta|_h^2=e^{2x}/(e^x+c)$.
Hence
$$
  \Theta_h(\beta)
  =-2e^xdx\otimes dx
  +\Bigl(e^x+\frac{e^{2x}}{e^x+c}\Bigr)(dx^2+dy^2)
  =-\frac{ce^x}{e^x+c}\,dx\otimes dx
  +\Bigl(e^x+\frac{e^{2x}}{e^x+c}\Bigr)dy\otimes dy.
$$
Its trace is
$$
  \mathcal{Q}_h(\beta)=2\frac{e^{2x}}{e^x+c}>0,
$$
so Proposition 6.1 is silent.
If $c=0$, then the smallest eigenvalue of $\Theta_h(\beta)$ is $0$ everywhere, so
Proposition 6.2 forces every bounded positive line factor to be constant.
If $c>0$, then
$\Theta_h(\beta)(\partial_x,\partial_x)=-ce^x/(e^x+c)<0$,
so Proposition 6.2 shows that no bounded positive line factor exists.

## Three-Dimensional Consequences

Assume from now on that $n=3$, so the slice $N$ is a surface.

**Proposition 7.1 (Critical-point eigenvalues).**

Let $y_0$ be a critical point of $\beta$, and let $\lambda_1,\lambda_2$ be the
eigenvalues of $\nabla^2_h\beta(y_0)$. Then the eigenvalues of $\Theta_h(\beta)(y_0)$ are
$$
  \mu_1=\beta(y_0)K_h(y_0)+\lambda_2-\lambda_1, \qquad
  \mu_2=\beta(y_0)K_h(y_0)+\lambda_1-\lambda_2.
$$
Consequently,
$$
  \operatorname{tr}_h\Theta_h(\beta)(y_0)=2\beta(y_0)K_h(y_0)=\beta(y_0)R_h(y_0),
$$
and
$$
  \det_h\Theta_h(\beta)(y_0)=\beta(y_0)^2K_h(y_0)^2-(\lambda_1-\lambda_2)^2.
$$
**Proof.**

At a critical point, $\nabla_h\beta(y_0)=0$, so
$\Delta_h\beta(y_0)=\lambda_1+\lambda_2$.
Since $N$ is a surface, $\operatorname{Ric}_h=K_hh$. Therefore
$$
  \Theta_h(\beta)(y_0)=\beta(y_0)K_h(y_0)h-2\nabla^2_h\beta(y_0)+(\lambda_1+\lambda_2)h.
$$
Diagonalizing $\nabla^2_h\beta(y_0)$ in an orthonormal basis gives the stated formulas.
The trace and determinant formulas are immediate. $\square$

**Theorem 7.2 (Three-dimensional curvature-anisotropy criterion).**

Assume $n=3$ and that $A$ is bounded, positive, and nonconstant.
At every critical point $y_0$ of $\beta$,
$$
  \beta(y_0)K_h(y_0)>|\lambda_1-\lambda_2|.
$$
Equivalently,
$$
  \det_h\Theta_h(\beta)(y_0)>0 \qquad\text{and}\qquad \operatorname{tr}_h\Theta_h(\beta)(y_0)>0.
$$
In particular, $K_h(y_0)>0$ at every critical point of $\beta$.

**Proof.**

By Proposition 6.2, nonconstant bounded line factors are possible only
if $\Theta_h(\beta)$ is positive-definite at every point. At a critical point $y_0$, this means
$\mu_1>0$ and $\mu_2>0$, where $\mu_1,\mu_2$ are the eigenvalues from
Proposition 7.1. Their positivity is exactly the curvature-anisotropy inequality.
The determinant and trace conditions are equivalent on a surface. Since $\beta>0$,
the inequality implies $K_h(y_0)>0$. $\square$

**Corollary 7.3 (Critical-point obstruction).**

Assume $n=3$ and let $y_0$ be a critical point of $\beta$.

(i) If $K_h(y_0)<|\lambda_1-\lambda_2|/\beta(y_0)$, then no bounded positive line
  factor exists.

(ii) If $K_h(y_0)=|\lambda_1-\lambda_2|/\beta(y_0)$, then every bounded positive line
  factor is constant.

(iii) If $R_h(y_0)\le 0$, then every bounded positive line factor is constant.

**Proof.**

The first two statements follow from Proposition 7.1 together with
Proposition 6.2: strict inequality makes one eigenvalue of $\Theta_h(\beta)(y_0)$
negative, while equality makes one eigenvalue zero.
For (iii), since $R_h=2K_h$ on a surface and $\nabla_h\beta(y_0)=0$, the trace formula gives
$$
  \mathcal{Q}_h(\beta)(y_0)=\beta(y_0)R_h(y_0).
$$
Thus $R_h(y_0)\le 0$ implies $\mathcal{Q}_h(\beta)(y_0)\le 0$, and Proposition 6.1
forces constancy. $\square$

## Conformal Reformulation and Boundary Control

Set $u=\beta^{-1}$ and $\bar{h}=u^2h$.
The threshold tensor admits the following conformal expression.

**Proposition 8.1 (Conformal identity).**

With $m=\dim N$, $u=\beta^{-1}$, and $\bar{h}=u^2h$,
$$
  \mathcal{T}_h(\beta)=u^{-2}\operatorname{Ric}_{\bar{h}}+mu^{-3}\nabla^2_{\bar{h}} u.
$$
Consequently,
$$
  \kappa_*=\inf_{y\in N}\lambda_{\min}^{\bar{h}}\bigl(\operatorname{Ric}_{\bar{h}}+mu^{-1}\nabla^2_{\bar{h}} u\bigr). \tag{kstar-conf}
$$
**Proof.**

Set $f=\ln u$, so that $\bar{h}=e^{2f}h$. Under the conformal change $\bar{h}=e^{2f}h$,
$$
  \operatorname{Ric}_{\bar{h}}
  =\operatorname{Ric}_h-(m-2)\bigl(\nabla^2_hf-df\otimes df\bigr)
  -\bigl(\Delta_hf+(m-2)|\nabla_hf|_h^2\bigr)h.
$$
Since $f=\ln u$,
$$
  df=u^{-1}du, \qquad
  \nabla^2_hf=u^{-1}\nabla^2_hu-u^{-2}du\otimes du,
$$
$$
  \Delta_hf=u^{-1}\Delta_hu-u^{-2}|\nabla_hu|_h^2, \qquad
  |\nabla_hf|_h^2=u^{-2}|\nabla_hu|_h^2.
$$
Substituting yields
$$
\begin{aligned}
  \operatorname{Ric}_{\bar{h}}
  &=\operatorname{Ric}_h-(m-2)u^{-1}\nabla^2_hu+2(m-2)u^{-2}du\otimes du \\
  &\quad -\bigl(u^{-1}\Delta_hu+(m-3)u^{-2}|\nabla_hu|_h^2\bigr)h.
\end{aligned}
$$
The Hessian transforms by
$$
  \nabla^2_{\bar{h}}u
  =\nabla^2_hu-df\otimes du-du\otimes df+\langle \nabla_hf,\nabla_hu\rangle_hh,
$$
and therefore
$$
  \nabla^2_{\bar{h}}u
  =\nabla^2_hu-2u^{-1}du\otimes du+u^{-1}|\nabla_hu|_h^2h.
$$
Multiply the Ricci identity by $u^{-2}$ and the Hessian identity by
$mu^{-3}$, then add:
$$
\begin{aligned}
  u^{-2}\operatorname{Ric}_{\bar{h}}+mu^{-3}\nabla^2_{\bar{h}}u
  &=u^{-2}\operatorname{Ric}_h+2u^{-3}\nabla^2_hu-4u^{-4}du\otimes du \\
  &\quad +\bigl(-u^{-3}\Delta_hu+3u^{-4}|\nabla_hu|_h^2\bigr)h.
\end{aligned}
$$
Now substitute $u=\beta^{-1}$. Then
$$
  du=-\beta^{-2}d\beta, \qquad
  \nabla^2_hu=-\beta^{-2}\nabla^2_h\beta+2\beta^{-3}d\beta\otimes d\beta,
$$
$$
  \Delta_hu=-\beta^{-2}\Delta_h\beta+2\beta^{-3}|\nabla_h\beta|_h^2, \qquad
  |\nabla_hu|_h^2=\beta^{-4}|\nabla_h\beta|_h^2.
$$
Substituting these identities gives
$$
  u^{-2}\operatorname{Ric}_{\bar{h}}+mu^{-3}\nabla^2_{\bar{h}}u
  =\beta^2\operatorname{Ric}_h-2\beta\nabla^2_h\beta
  +(\beta\Delta_h\beta+|\nabla_h\beta|_h^2)h
  =\mathcal{T}_h(\beta).
$$
This proves the conformal identity.

For (kstar-conf), note that $\bar{h}=u^2h$, so
$$
  h^{-1}\mathcal{T}_h(\beta)
  =h^{-1}\bigl(u^{-2}(\operatorname{Ric}_{\bar{h}}+mu^{-1}\nabla^2_{\bar{h}}u)\bigr)
  =\bar{h}^{-1}\bigl(\operatorname{Ric}_{\bar{h}}+mu^{-1}\nabla^2_{\bar{h}}u\bigr).
$$
Thus the corresponding endomorphisms have the same spectrum at each point, and taking
the infimum of the smallest eigenvalue gives (kstar-conf). $\square$

**Remark 8.2.**

Proposition 8.1 rewrites the threshold condition as an eigenvalue
bound for a Bakry--\'Emery-type tensor on the conformally rescaled slice $(N,\bar{h})$.
This provides a natural interface between the threshold invariant and the comparison
geometry developed in [BF].

**Remark 8.3 (Geometric meaning of the conformal formula).**

The conformal identity separates two geometric effects. The Ricci term measures the
intrinsic curvature of the compactified slice, while the Hessian term measures the
deviation of the defining function $u=\beta^{-1}$ from being affine in the compactified
metric. When $u$ is geodesic, the Hessian becomes a second-fundamental-form quantity for
the level-set foliation, and the threshold can be read off from the curvature of those
level sets. This is exactly the mechanism used in the collar argument below.

We now give a concrete geometric class in which the threshold is forced to be nonpositive.

**Theorem 8.4 (Geodesic-slice boundary control).**

Assume $n=3$. With $u=\beta^{-1}$ and $\bar{h}=u^2h$, suppose in a collar
$\{0<u<\varepsilon\}\subset \bar N$ that:

(A1) $|\nabla_{\bar{h}}u|\equiv 1$;

(A2) $\partial\bar N$ is totally geodesic in $(\bar N,\bar{h})$;

(A3) the level sets $\{u=c\}$ have geodesic curvature $k_u\ge 0$.

Then $\kappa_*\le 0$. More precisely:

- if $k_u\not\equiv 0$ on the collar, then $\kappa_*<0$, hence no bounded positive
  line factor exists;
- if $k_u\equiv 0$ on the collar, then every bounded positive line factor is constant.

**Proof.**

Because $n=3$, the slice is a surface, so $\operatorname{Ric}_{\bar{h}}=K_{\bar{h}}\bar{h}$.
Under (A1), if $N_u$ denotes the unit normal to the level sets of $u$ and $T$
a unit tangent vector, then
$$
  \nabla^2_{\bar{h}}u(N_u,\cdot)=0, \qquad \nabla^2_{\bar{h}}u(T,T)=k_u.
$$
Therefore the two eigenvalues of $\operatorname{Ric}_{\bar{h}}+2u^{-1}\nabla^2_{\bar{h}}u$ in the $(N_u,T)$-frame are
$$
  \lambda_{N_u}=K_{\bar{h}}, \qquad \lambda_T=K_{\bar{h}}+2u^{-1}k_u.
$$
In geodesic coordinates $\bar{h}=du^2+\gamma(u,\theta)^2d\theta^2$, the Riccati identity is
$$
  k_u'=-K_{\bar{h}}-k_u^2. \tag{riccati}
$$
By (A2), $k_u(0,\theta)=0$ for all $\theta$, and (A3) gives $k_u\ge 0$
in the collar.

If $k_u\equiv 0$, then (riccati) implies $K_{\bar{h}}\equiv 0$, so
$\lambda_{N_u}=\lambda_T=0$ in the collar. By (kstar-conf), this gives $\kappa_*\le 0$.
Corollary 3.3 then implies that every bounded positive line factor is
constant.

Assume now that $k_u\not\equiv 0$. Then there exists $(u_0,\theta_0)$ with
$k_u(u_0,\theta_0)>0$. Since $k_u(0,\theta_0)=0$ and $k_u\ge 0$, there is
$u_1\in(0,u_0]$ such that $k_u'(u_1,\theta_0)>0$. Evaluating (riccati) there gives
$$
  K_{\bar{h}}(u_1,\theta_0)=-k_u'(u_1,\theta_0)-k_u(u_1,\theta_0)^2<0.
$$
Hence $\lambda_{N_u}(u_1,\theta_0)<0$, so (kstar-conf) gives $\kappa_*<0$.
Corollary 3.3 now rules out bounded positive nonconstant line factors. $\square$

**Remark 8.5 (Role of the collar assumptions).**

The assumptions in Theorem 8.4 are geometrically distinct. Assumption
(A1) turns $u$ into a distance-type function for the compactified metric.
Assumption (A2) fixes the initial condition for the level-set curvature at the
boundary. Assumption (A3) provides the sign that forces the Riccati equation to
produce a point of nonpositive curvature unless the collar is flat in the relevant
direction. The theorem is therefore a boundary-to-interior mechanism for forcing
nonpositivity of the threshold.

## A Formal Collar Expansion and the Wang Interface

The previous section produces a concrete collar condition implying $\kappa_*\le 0$.
To relate this more directly to Wang's Neumann-data framework [WangArea], one needs
pointwise control of the threshold eigenvalues near conformal infinity. The next lemma
records the correct formal expansion in a geodesic collar.

**Lemma 9.1 (Formal geodesic-collar expansion).**

Assume in geodesic coordinates that
$$
  \bar{h}=du^2+\gamma(u,\theta)^2d\theta^2, \qquad
  \gamma(u,\theta)=1+a(\theta)u^2+b(\theta)u^3+c(\theta)u^4+O(u^5).
$$
Then
$$
  K_{\bar{h}}=-2a-6bu+\bigl(2a^2-12c\bigr)u^2+O(u^3),
$$
$$
  k_u=2au+3bu^2+\bigl(4c-2a^2\bigr)u^3+O(u^4),
$$
and therefore the eigenvalues of $\operatorname{Ric}_{\bar{h}}+2u^{-1}\nabla^2_{\bar{h}}u$ in the normal/tangential
frame are
$$
  \lambda_N=-2a-6bu+\bigl(2a^2-12c\bigr)u^2+O(u^3),
$$
$$
  \lambda_T=2a-\bigl(2a^2+4c\bigr)u^2+O(u^3). \tag{eigNT}
$$
In particular, if $a\equiv 0$, then
$$
  \lambda_N=-6bu-12cu^2+O(u^3), \qquad \lambda_T=-4cu^2+O(u^3).
$$
**Proof.**

Differentiate the expansion of $\gamma$:
$$
  \gamma_u=2au+3bu^2+4cu^3+O(u^4), \qquad
  \gamma_{uu}=2a+6bu+12cu^2+O(u^3).
$$
Also,
$$
  \gamma^{-1}=1-au^2-bu^3+(a^2-c)u^4+O(u^5).
$$
Since
$$
  K_{\bar{h}}=-\frac{\gamma_{uu}}{\gamma}, \qquad
  k_u=\frac{\gamma_u}{\gamma},
$$
we obtain
$$
  K_{\bar{h}}
  =-\gamma_{uu}\gamma^{-1}
  =-2a-6bu+\bigl(2a^2-12c\bigr)u^2+O(u^3),
$$
and
$$
  k_u
  =\gamma_u\gamma^{-1}
  =2au+3bu^2+\bigl(4c-2a^2\bigr)u^3+O(u^4).
$$
Finally, substitute these expansions into (eigNT). $\square$

**Remark 9.2.**

Lemma 9.1 is intentionally formal. To turn it into a direct boundary
criterion for $\kappa_*\le 0$ in Wang's setting, one still needs additional geometric input
controlling the coefficient $a(\theta)$ and the pointwise sign of $b(\theta)$.
Wang's second-variation formula in [WangArea] gives integrated information on the
boundary data, while the threshold condition is pointwise.

**Remark 9.3.**

This mismatch between integrated and pointwise information appears to be the basic
obstruction to closing Wang's remaining separated-ansatz question by the Neumann-data
method alone. The threshold is governed by an extremal eigenvalue, hence by pointwise
signs. A boundary integral can contribute to that problem only after an additional
argument upgrades average information to a pointwise statement.

## Discussion and Open Problems

Within the separated ansatz, Theorem 3.2 reduces the sub-static
tensor inequality to a scalar ODE with a single geometric parameter $\kappa_*$. This
reformulation makes several consequences especially transparent:

- bounded positive nonconstant line factors exist exactly when $\kappa_*>0$;
- local strict negativity of the trace or tensor obstruction gives nonexistence,
  not merely constancy;
- on compact slices, existence is equivalent to pointwise positive-definiteness
  of $\mathcal{T}_h(\beta)$.

These statements seem to capture the cleanest reusable content of the separated theory.

The conformal and collar results point toward the broader splitting problem, but they do
not by themselves settle the general conformally compact case considered in
[WangRiccati, WangArea]. The remaining issue is the passage from boundary data to
pointwise control of the threshold eigenvalues.

From a practical point of view, the paper suggests three different workflows for applying
the theory. On compact slices one should check positive-definiteness of $\mathcal{T}_h(\beta)$ directly,
since Corollary 6.3 gives an if-and-only-if criterion. On noncompact
slices, one should instead estimate the global lower spectral bound $\kappa_*$, because
pointwise positivity alone need not be enough. In dimension three, critical points of
$\beta$ supply a third route: Theorem 7.2 converts the problem to an explicit
inequality involving curvature and Hessian anisotropy.

The boundary-control theorem suggests a fourth, more geometric route. Rather than
computing $\mathcal{T}_h(\beta)$ explicitly on the original slice, one may compactify conformally and
study the geometry of the defining function $u=\beta^{-1}$. This is useful when the slice
comes with natural conformal boundary data. The obstacle, made precise in
Section 9, is that the threshold is fundamentally pointwise while current
Neumann-data formulas are primarily integral in nature.

### A practical workflow

For actual applications, the threshold formalism suggests a concrete order of attack.
First, one computes the tensor $\mathcal{T}_h(\beta)$ from its definition. In many examples this is
easier than working directly with the full sub-static tensor on $\mathbb{R}\times N$, because the
separated ansatz has already eliminated the mixed and $tt$ components.

Second, one checks whether the problem is compact or noncompact. On compact slices,
Corollary 6.3 reduces the existence question to a pointwise definiteness
test for $\Theta_h(\beta)$ or $\mathcal{T}_h(\beta)$. No further global analysis is needed beyond continuity of the
eigenvalues. On noncompact slices, however, one must genuinely estimate the infimum of
the smallest eigenvalue. Examples such as the Gaussian-type one-dimensional model in
Example 5.6(iii) show that pointwise positivity may coexist with $\kappa_*=0$.

Third, one uses local obstructions whenever a full spectral estimate is unavailable.
Propositions 6.1 and 6.2 are especially useful at critical
points of $\beta$ or at points where a preferred geometric frame is available. In
dimension three this becomes particularly effective, because Theorem 7.2
translates positivity of $\Theta_h(\beta)$ into a scalar inequality involving $K_h$ and the Hessian
anisotropy of $\beta$.

Fourth, if the slice comes from a conformally compact problem, one can pass to the
compactified metric and attempt to control the eigenvalues of
$\operatorname{Ric}_{\bar{h}}+mu^{-1}\nabla^2_{\bar{h}}u$. Theorem 8.4 is one instance of this strategy:
it does not compute $\mathcal{T}_h(\beta)$ directly, but instead infers the sign of $\kappa_*$ from the
geometry of the level-set foliation of $u$. This separation between computational and
geometric routes is one of the main practical advantages of the threshold viewpoint.

**Open Problem 10.1.**

Prove $\kappa_*\le 0$ in Wang's conformally compactifiable sub-static setting without the
extra collar assumptions of Theorem 8.4. By Corollary 3.3, this
would force the line factor to be constant and would complete the separated-ansatz step
of the splitting program.

**Open Problem 10.2.**

Find geometric conditions on $(N,h,\beta)$ guaranteeing positivity or nonpositivity of
$\kappa_*$ without computing the full spectrum of $\mathcal{T}_h(\beta)$. In dimension three, can one
derive such conditions directly from topology or asymptotic data on the conformal boundary?

**Open Problem 10.3.**

Generalize Theorem 8.4 to higher-dimensional slices. In dimensions $m\ge 3$,
the Ricci tensor is no longer a scalar multiple of the metric, so one needs an analogue of
the two-dimensional Riccati argument that directly controls the smallest eigenvalue of
$\operatorname{Ric}_{\bar{h}}+mu^{-1}\nabla^2_{\bar{h}}u$.

# Appendices

## Warped-Product Formulas

This appendix records the basic formulas behind Lemma 2.1. They are
standard, but gathering them in one place keeps the main argument focused on the
threshold reduction.

Let
$$
  g=\beta(y)^2dt^2+h_{ij}(y)dy^idy^j, \qquad
  V(t,y)=A(t)\beta(y).
$$
Then
$$
  g_{tt}=\beta^2, \quad g_{ij}=h_{ij}, \quad g^{tt}=\beta^{-2}, \quad g^{ij}=h^{ij}.
$$
The nonzero Christoffel symbols involving the $t$-direction are
$$
  \Gamma^t_{it}=\beta^{-1}\partial_i\beta, \qquad
  \Gamma^i_{tt}=-\beta\nabla_h^i\beta.
$$
All purely spatial Christoffel symbols are those of $h$.

### Hessian and Laplacian

Since $\partial_tV=A'\beta$ and $\partial_iV=A\partial_i\beta$, the Hessian components are
$$
\begin{aligned}
  \nabla^2_gV(\partial_t,\partial_t)
  &=\partial_t\partial_tV-\Gamma^k_{tt}\partial_kV \\
  =A''\beta+A\beta|\nabla_h\beta|_h^2, \\
  \nabla^2_gV(\partial_i,\partial_t)
  &=\partial_i(A'\beta)-\Gamma^t_{it}A'\beta \\
  =0, \\
  \nabla^2_gV(\partial_i,\partial_j)
  &=A\nabla^2_h\beta_{ij}.
\end{aligned}
$$
Tracing these identities gives
$$
  \Delta_gV=\beta^{-2}\nabla^2_gV(\partial_t,\partial_t)+h^{ij}\nabla^2_gV(\partial_i,\partial_j)
  =\beta^{-1}A''+A\Delta_h\beta+A\beta^{-1}|\nabla_h\beta|_h^2.
$$

### Ricci tensor

For the warped product $g=\beta^2dt^2+h$ one has
$$
  \operatorname{Ric}_g(\partial_t,\partial_t)=-\beta\Delta_h\beta, \qquad
  \operatorname{Ric}_g(\partial_i,\partial_t)=0, \qquad
  \operatorname{Ric}_g(\partial_i,\partial_j)=\operatorname{Ric}_h{}_{ij}-\beta^{-1}\nabla^2_h\beta_{ij}.
$$
Substituting the Hessian, Laplacian, and Ricci formulas into
$$
  S(V,g)=V\operatorname{Ric}_g+(\Delta_gV)g-\nabla^2_gV
$$
gives the cancellation in the $tt$-component and yields the slice decomposition (Sij).

## Auxiliary ODE Lemmas

The exact threshold criterion reduces the geometric problem to an elementary ODE
inequality. The lemmas below isolate the one-dimensional facts used repeatedly in the
main text.

**Lemma A.1 (Bounded convex functions).**

If $A\in C^2(\mathbb{R})$ satisfies $A''\ge 0$ and is bounded above on $\mathbb{R}$, then $A$ is constant.

**Proof.**

The derivative $A'$ is monotone nondecreasing. If $A'(t_0)>0$ at some point, then
$A'(t)\ge A'(t_0)>0$ for all $t\ge t_0$, which forces $A(t)\to+\infty$ as $t\to+\infty$.
If $A'(t_0)<0$, then $A'(t)\le A'(t_0)<0$ for all $t\le t_0$, which forces
$A(t)\to+\infty$ as $t\to-\infty$. Hence $A'\equiv 0$. $\square$

**Lemma A.2 (Positive forcing).**

Let $A\in C^2(\mathbb{R})$ be positive. If there exists $c>0$ such that
$$
  A''(t)\ge cA(t)  \qquad\text{for all } t\in\mathbb{R},
$$
then $A$ is unbounded on $\mathbb{R}$.

**Proof.**

Since $A''\ge cA>0$, the derivative $A'$ is strictly increasing. Fix $t_0\in\mathbb{R}$.
If $A'(t_0)\ge 0$, then $A'(t)>0$ for all $t>t_0$, so $A(t)\to+\infty$ as
$t\to+\infty$. If $A'(t_0)<0$, then $A'(t)\le A'(t_0)<0$ for all $t<t_0$, hence
$$
  A(t)\ge A(t_0)-A'(t_0)(t_0-t)\to+\infty \quad(t\to-\infty). \qquad\square
$$
**Lemma A.3 (Periodic test family).**

If $\kappa>0$, then for every $0<\omega^2<\kappa$ and $0<\varepsilon<1$,
$$
  A(t)=1+\varepsilon\sin(\omega t)
$$
is bounded, positive, nonconstant, and satisfies $A''+\kappa A>0$ on $\mathbb{R}$.

**Proof.**

Direct computation gives
$$
  A''+\kappa A
  =\kappa+\varepsilon(\kappa-\omega^2)\sin(\omega t)
  \ge \kappa-\varepsilon(\kappa-\omega^2)>0. \qquad\square
$$
## Expanded Model Calculations

This appendix records the detailed calculations for the model families used in the body of
the paper.

### Round sphere

Assume $n\ge 3$, let $N=S^{n-1}$ with the round metric of sectional curvature $1$, and
$\beta\equiv 1$.
Then
$$
  \operatorname{Ric}_h=(n-2)h, \qquad \nabla_h\beta=0, \qquad \nabla^2_h\beta=0,
$$
so
$$
  \Theta_h(\beta)=(n-2)h, \qquad \mathcal{T}_h(\beta)=(n-2)h, \qquad \kappa_*=n-2.
$$
This is the basic compact positive example.

### Flat torus

If $N=T^{n-1}$ is flat and $\beta\equiv c>0$, then all derivative terms vanish and
$\operatorname{Ric}_h=0$. Hence
$$
  \Theta_h(\beta)=0, \qquad \mathcal{T}_h(\beta)=0, \qquad \kappa_*=0.
$$
This realizes the borderline rigid regime.

### Euclidean anisotropic example

Let $N=\mathbb{R}^m$ be Euclidean and $\beta(y)=1+(y^1)^2$. Then
$$
  \nabla\beta=2y^1dy^1, \qquad
  \nabla^2\beta=2dy^1\otimes dy^1, \qquad
  \Delta\beta=2.
$$
Since $\operatorname{Ric}_h=0$,
$$
\begin{aligned}
  \mathcal{T}_h(\beta)
  &=-2\beta\nabla^2\beta+(\beta\Delta\beta+|\nabla\beta|^2)h \\
  &=-4(1+(y^1)^2)dy^1\otimes dy^1 \\
    +\bigl(2(1+(y^1)^2)+4(y^1)^2\bigr)\sum_{\alpha=1}^{m}dy^\alpha\otimes dy^\alpha \\
  &=\bigl(-2+2(y^1)^2\bigr)dy^1\otimes dy^1 \\
    +\bigl(2+6(y^1)^2\bigr)\sum_{\alpha=2}^{m}dy^\alpha\otimes dy^\alpha.
\end{aligned}
$$
Thus the smallest eigenvalue is $-2+2(y^1)^2$, and its infimum equals $-2$.

### One-dimensional negative example

Let $N=\mathbb{R}$ with $h=dy^2$ and $\beta(y)=\cosh y$. Since $\operatorname{Ric}_h=0$ in one dimension,
$$
  \mathcal{T}_h(\beta)=\bigl(-2\beta\beta''+(\beta\beta''+(\beta')^2)\bigr)dy^2.
$$
Using $\beta''=\cosh y$ and $(\beta')^2=\sinh^2 y$, one finds
$$
  \mathcal{T}_h(\beta)
  =\bigl(-2\cosh^2 y+\cosh^2 y+\sinh^2 y\bigr)dy^2
  =-dy^2.
$$
Hence $\kappa_*=-1$.

### Exponential example with positive trace

Consider the example from Section 6:
$$
  N=\mathbb{R}^2, \quad h=dx^2+dy^2, \quad \beta(x,y)=e^x+c, \quad c\ge 0.
$$
Because $\operatorname{Ric}_h=0$,
$$
  \Theta_h(\beta)=-2\nabla^2_h\beta+\Bigl(\Delta_h\beta+\beta^{-1}|\nabla\beta|_h^2\Bigr)h.
$$
Now
$$
  \nabla^2_h\beta=e^xdx\otimes dx, \qquad
  \Delta_h\beta=e^x, \qquad
  |\nabla\beta|_h^2=e^{2x}.
$$
Therefore
$$
  \Delta_h\beta+\beta^{-1}|\nabla\beta|_h^2
  =e^x+\frac{e^{2x}}{e^x+c},
$$
and
$$
\begin{aligned}
  \Theta_h(\beta)
  &=-2e^xdx\otimes dx \\
    +\Bigl(e^x+\frac{e^{2x}}{e^x+c}\Bigr)(dx^2+dy^2) \\
  &= \\
    \Bigl(-e^x+\frac{e^{2x}}{e^x+c}\Bigr)dx\otimes dx
    +\Bigl(e^x+\frac{e^{2x}}{e^x+c}\Bigr)dy\otimes dy \\
  &= \\
    -\frac{ce^x}{e^x+c}\,dx\otimes dx
    +\Bigl(e^x+\frac{e^{2x}}{e^x+c}\Bigr)dy\otimes dy.
\end{aligned}
$$
Taking the trace gives
$$
  \mathcal{Q}_h(\beta)
  =-\frac{ce^x}{e^x+c}+e^x+\frac{e^{2x}}{e^x+c}
  =2\frac{e^{2x}}{e^x+c}>0.
$$
Thus the trace obstruction is silent even though the tensor obstruction is active.
When $c=0$, the $dx$-eigenvalue vanishes identically. When $c>0$, the $dx$-eigenvalue is
strictly negative.

## Surface critical-point algebra

At a critical point of $\beta$ on a surface, the formula for $\Theta_h(\beta)$ simplifies enough to
be useful in explicit calculations. Let $\lambda_1,\lambda_2$ be the eigenvalues of
$\nabla^2_h\beta$ in an orthonormal frame. Since $\nabla_h\beta=0$ and $\operatorname{Ric}_h=K_hh$,
$$
  \Theta_h(\beta)=\beta K_hh-2\nabla^2_h\beta+(\lambda_1+\lambda_2)h.
$$
Hence the two eigenvalues of $\Theta_h(\beta)$ are
$$
  \mu_1=\beta K_h+\lambda_2-\lambda_1, \qquad
  \mu_2=\beta K_h+\lambda_1-\lambda_2.
$$
From these formulas one reads off immediately that
$$
  \operatorname{tr}_h\Theta_h(\beta)=2\beta K_h, \qquad
  \det_h\Theta_h(\beta)=\beta^2K_h^2-(\lambda_1-\lambda_2)^2.
$$
Thus positivity of $\Theta_h(\beta)$ at a critical point is equivalent to the pair of inequalities
$$
  2\beta K_h>0, \qquad
  \beta^2K_h^2-(\lambda_1-\lambda_2)^2>0,
$$
which in turn collapse to the single curvature-anisotropy inequality
$$
  \beta K_h>|\lambda_1-\lambda_2|.
$$
This is the algebraic core of Theorem 7.2.

## A Checklist for Computing the Threshold

For readers who want to apply the theory to new examples, it is useful to summarize the
workflow suggested by the paper in a compact form.

### Step 1: compute the slice tensor

Start from
$$
  \mathcal{T}_h(\beta)=\beta^2\operatorname{Ric}_h-2\beta\nabla^2_h\beta+(\beta\Delta_h\beta+|\nabla_h\beta|_h^2)h.
$$
In symmetric examples this often collapses immediately. For constant $\beta$, one reduces
to the Ricci tensor. In one dimension, Proposition 5.3 gives the closed
formula $\mathcal{T}_h(\beta)=-\beta^2(\ln\beta)''dy^2$.

### Step 2: decide whether compactness is available

If $N$ is compact, the problem simplifies sharply: the existence of a bounded positive
nonconstant line factor is equivalent to pointwise positive-definiteness of $\mathcal{T}_h(\beta)$. In
that case one does not need to estimate the infimum of the smallest eigenvalue globally;
continuity and compactness do the work automatically.

If $N$ is noncompact, by contrast, pointwise positivity is only preliminary information.
One must determine whether the smallest eigenvalue stays uniformly away from zero. The
examples in Sections 4 and 5 show that this distinction is essential.

### Step 3: use local obstructions when full diagonalization is hard

If a direct spectral computation is cumbersome, the local obstructions can still be very
effective. A single point with $\mathcal{Q}_h(\beta)<0$ already rules out bounded positive line factors,
and a single nonpositive tensor direction is enough to force rigidity or nonexistence.
In dimension three, critical points of $\beta$ provide especially convenient test points,
because the condition reduces to the curvature-anisotropy inequality of Theorem 7.2.

### Step 4: move to the conformal picture when boundary geometry is natural

When the slice is naturally described through a compactification, Proposition 8.1
replaces $\mathcal{T}_h(\beta)$ by the tensor
$$
  \operatorname{Ric}_{\bar{h}}+mu^{-1}\nabla^2_{\bar{h}}u.
$$
This form is better adapted to geometric foliation arguments and to level-set methods.
Theorem 8.4 is an example: it never computes $\mathcal{T}_h(\beta)$ directly, but still
controls the sign of $\kappa_*$.

### Step 5: conclude through the sign of $\kappa_*$

Once the sign is known, Corollary 3.3 finishes the argument. A positive
threshold produces explicit oscillatory line factors. A zero threshold forces convexity
and hence constancy. A negative threshold produces positive forcing and hence
unboundedness. In this sense, all of the geometry in the separated ansatz feeds into a
single scalar decision at the final step.

## References

- [BF] S. Borghini and M. Fogagnolo, *Comparison geometry for sub-static manifolds*, 2023, [arXiv:2307.14618](https://arxiv.org/abs/2307.14618).

- [CFMR] G. Colombo, A. Freitas, L. Mari, and M. Rigoli, *Some splitting and rigidity results for sub-static spaces*, 2024, [arXiv:2412.05238](https://arxiv.org/abs/2412.05238).

- [GSW] G. J. Galloway, S. Surya, and E. Woolgar, *On the geometry and mass of static, asymptotically AdS spacetimes, and the uniqueness of the AdS soliton*, *Comm. Math. Phys.* **241** (2003), 1--25; [arXiv:hep-th/0108170](https://arxiv.org/abs/hep-th/0108170).

- [WangRiccati] Z. Wang, *Riccati equation for static spaces and its applications*, 2025, [arXiv:2408.12180](https://arxiv.org/abs/2408.12180).

- [WangArea] Z. Wang, *Neumann data and second variation formula of renormalized area for conformally compact static spaces*, 2025, [arXiv:2504.15048](https://arxiv.org/abs/2504.15048).