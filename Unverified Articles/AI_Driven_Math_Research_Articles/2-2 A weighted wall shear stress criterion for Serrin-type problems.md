## Method Card
- **Short tag:** weighted wall-shear P-function
- **Full name:** Weighted P-function wall-shear reduction.
- **Input setting:** A bounded domain in a smooth metric measure space with drift-Laplacian equation, finite-dimensional Bakry--Emery lower curvature bound, and Dirichlet boundary data.
- **New object / driver:** The weighted P_m function and the normalized wall shear stress threshold tau_m.
- **Obstruction resolved:** Weighted Serrin results generally assume constant Neumann data from the start, and a weighted wall-shear inequality criterion was missing.
- **Expected outputs:** A sharp implication from tau_m <= 2/m to constancy of P_m and hence constancy of the boundary normal derivative.
- **Transfer targets:** Weighted Serrin rigidity, smooth metric measure geometry, quasi-Einstein models, and other overdetermined drift-Laplacian problems.
- **Main technical risk:** The sharp constant depends on the finite-dimensional Bakry--Emery Bochner algebra and on a clean maximum-principle passage to the boundary.
- **Mechanism type:** boundary-layer, monotonicity, comparison geometry
- **Tags:** weighted-Bochner, P-function, wall-shear, Serrin, Bakry-Emery, drift-Laplacian
- **Method link:** ../methods/weighted_p_function_wall_shear.md

**Condensation.** The new viewpoint is to treat wall shear stress in the weighted setting through a synthetic-dimension P-function rather than by imposing the full overdetermined boundary condition. This overcomes the gap between existing weighted Serrin theorems and the weaker boundary information one would like to use in applications. The operative mechanism is a weighted Bochner identity for P_m tied to the Bakry--Emery dimension m, together with a sharp boundary inequality at the level 2/m. If it works, it upgrades a single wall-shear bound to constant Neumann data and thereby unlocks the usual weighted Serrin rigidity conclusions.

# A weighted wall shear stress criterion for Serrin-type problems

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_


> **TL;DR.** The recent note [de Lima, Santos, Sindeaux, 2025, arXiv:2504.11996] shows that on an ordinary Riemannian manifold a sharp upper bound on the boundary gradient already forces the full Serrin overdetermined condition. The note below shows that the same mechanism survives on smooth metric measure spaces once curvature is measured by the finite-dimensional Bakry--Émery tensor. The sharp constant changes from $2/n$ to $2/m$, where $m$ is the synthetic dimension.

## Introduction

Serrin's classical theorem says that a positive solution of
$$
\Delta u=-1 \quad\text{in }\Omega,\qquad u=0 \quad\text{on }\partial\Omega,
$$
becomes rigid as soon as one adds the extra condition
$$
 u_\nu\equiv \text{constant} \quad\text{on }\partial\Omega.
$$
In Euclidean space this forces $\Omega$ to be a ball and $u$ to be radial. The condition on $u_\nu$ is often interpreted physically as prescribing the wall shear stress along the boundary.

Recent work in curved geometry has shown that the extra boundary datum can sometimes be relaxed. In particular, [Andrade, Freitas, Marín, 2024, arXiv:2405.17312] introduced generalized normalized wall shear stress bounds on Riemannian manifolds in the linear case, while [de Lima, Santos, Sindeaux, 2025, arXiv:2504.11996] proved a sharp $P$-function criterion for the semilinear equation $\Delta u=-f(u)$ on manifolds with a Ricci lower bound.

At the same time, weighted Serrin-type results have appeared in smooth metric measure spaces and in weighted cones, but there the constant Neumann condition is imposed from the beginning; see for example [Araújo, Freitas, Santos, 2025, citation needed] and [Araújo, Freitas, Santos, Sindeaux, 2025, arXiv:2501.05551]. What seems to be missing is the weighted analogue of the wall shear stress criterion itself.

The point of this note is to fill exactly that gap. We work on a smooth metric measure space
$$
(M^n,g,e^{-\psi}d\mathrm{vol}),
$$
with drift Laplacian
$$
L_\psi u = \Delta u-\langle \nabla\psi,\nabla u\rangle,
$$
and finite Bakry--Émery dimension $m>n$. We show that the natural wall shear stress threshold becomes $2/m$.

## Why this matters

There are two reasons this extension is worth isolating.

The first is conceptual. In weighted geometry the synthetic dimension $m$ appears in comparison theory, in curvature-dimension inequalities, and in rigidity problems for quasi-Einstein or static-type metrics. It is therefore natural to ask whether recent overdetermined boundary phenomena admit an $m$-dimensional analogue. Here the answer is yes, and the constant $2/m$ comes out from the same algebra that defines the $m$-Bakry--Émery tensor.

The second is practical. A wall shear stress bound is weaker data than a constant Neumann condition: it is only one global inequality, not a full boundary prescription. Our theorem shows that in the weighted setting this weaker hypothesis still upgrades automatically to
$$
 u_\nu \equiv \text{constant on }\partial\Omega.
$$
So the theorem acts as a reduction principle: once the inequality is checked, one can pass to weighted Serrin results that assume constant Neumann data.

## Setting and notation

Let $\Omega\Subset M$ be a bounded domain with $C^2$ boundary. Consider a positive solution
$$
L_\psi u = -f(u) \quad\text{in }\Omega,
$$
with
$$
 u>0 \text{ in }\Omega,
\qquad
 u=0 \text{ on }\partial\Omega,
$$
and let
$$
 u_{\max}=\max_{\overline\Omega}u.
$$
We assume that $f\in C^1([0,u_{\max}])$ and that
$$
 f'(t)\le mk \qquad \text{for all } t\in[0,u_{\max}],
$$
where the ambient weighted curvature satisfies
$$
\Ric^m_\psi \ge (m-1)kg.
$$
Here
$$
\Ric^m_\psi = \Ric + \nabla^2\psi - \frac{1}{m-n}d\psi\otimes d\psi.
$$

Define the weighted $P$-function by
$$
P_m = |\nabla u|^2 + \frac{2}{m}\int_0^u f(s)\,ds.
$$
The associated normalized wall shear stress is
$$
\tau_m(\Omega,u)
:=
\frac{\max_{\partial\Omega}|\nabla u|^2}{\int_0^{u_{\max}}f(s)\,ds}.
$$

## The theorem

**Theorem.** Assume
$$
\tau_m(\Omega,u)\le \frac{2}{m}.
$$
Then
$$
P_m \equiv \frac{2}{m}\int_0^{u_{\max}}f(s)\,ds
\qquad\text{in }\Omega.
$$
In particular,
$$
 u_\nu \equiv -\left(\frac{2}{m}\int_0^{u_{\max}}f(s)\,ds\right)^{1/2}
\qquad\text{on }\partial\Omega.
$$
So the wall shear stress inequality recovers the full overdetermined boundary condition.

## Proof

The proof is short once the right $P$-function is chosen.

We begin with the weighted Bochner identity:
$$
\frac12 L_\psi |\nabla u|^2
=
|\nabla^2u|^2 + \langle \nabla u,\nabla L_\psi u\rangle + \Ric_\psi(\nabla u,\nabla u),
$$
where
$$
\Ric_\psi = \Ric + \nabla^2\psi.
$$
To bring the synthetic dimension $m$ into the picture, we use the elementary inequality
$$
|\nabla^2u|^2 + \frac{1}{m-n}\langle \nabla\psi,\nabla u\rangle^2
\ge
\frac1m (L_\psi u)^2.
$$
Indeed, since $|\nabla^2u|^2\ge \frac1n(\Delta u)^2$, it is enough to check
$$
\frac{(\Delta u)^2}{n}
+
\frac{\langle \nabla\psi,\nabla u\rangle^2}{m-n}
-
\frac{(\Delta u-\langle \nabla\psi,\nabla u\rangle)^2}{m}
\ge 0,
$$
which is equivalent to the perfect-square identity
$$
\frac{\big((m-n)\Delta u+n\langle \nabla\psi,\nabla u\rangle\big)^2}{mn(m-n)}\ge 0.
$$
Since
$$
\Ric_\psi = \Ric^m_\psi + \frac{1}{m-n}d\psi\otimes d\psi,
$$
we obtain
$$
|\nabla^2u|^2 + \Ric_\psi(\nabla u,\nabla u)
\ge
\frac1m (L_\psi u)^2 + \Ric^m_\psi(\nabla u,\nabla u).
$$
Substituting this into the weighted Bochner formula and using $L_\psi u=-f(u)$ yields
$$
L_\psi |\nabla u|^2
\ge
\frac{2}{m}f(u)^2 - 2f'(u)|\nabla u|^2 + 2\Ric^m_\psi(\nabla u,\nabla u).
$$
On the other hand,
$$
L_\psi\left(\frac{2}{m}\int_0^u f(s)\,ds\right)
=
-\frac{2}{m}f(u)^2 + \frac{2}{m}f'(u)|\nabla u|^2.
$$
Adding the two formulas gives
$$
L_\psi P_m
\ge
2\Ric^m_\psi(\nabla u,\nabla u)
-2\left(1-\frac1m\right)f'(u)|\nabla u|^2.
$$
By the hypotheses
$$
\Ric^m_\psi\ge (m-1)kg,
\qquad
f'\le mk,
$$
we conclude that
$$
L_\psi P_m\ge 0.
$$
So $P_m$ is $L_\psi$-subharmonic.

Now let $p\in\Omega$ be a maximum point of $u$. Then $\nabla u(p)=0$, hence
$$
P_m(p)=\frac{2}{m}\int_0^{u_{\max}}f(s)\,ds.
$$
Along the boundary we have $u=0$, so
$$
P_m|_{\partial\Omega}=|\nabla u|^2.
$$
Therefore the wall shear stress inequality gives
$$
\max_{\partial\Omega}P_m
\le
\frac{2}{m}\int_0^{u_{\max}}f(s)\,ds
=
P_m(p).
$$
Let $x_0\in\overline\Omega$ be a point where $P_m$ attains its maximum. If $x_0$ lies in the interior, we are done. If $x_0\in\partial\Omega$, then the boundary estimate gives $P_m(x_0)\le P_m(p)$, while maximality gives $P_m(x_0)\ge P_m(p)$. Hence $P_m(x_0)=P_m(p)$, so the interior point $p$ is also a maximum point. Thus $P_m$ has an interior maximum. By the strong maximum principle,
$$
P_m\equiv \frac{2}{m}\int_0^{u_{\max}}f(s)\,ds
\qquad\text{in }\Omega.
$$
Restricting to the boundary gives
$$
|\nabla u|^2\equiv \frac{2}{m}\int_0^{u_{\max}}f(s)\,ds
\qquad\text{on }\partial\Omega.
$$
Since all tangential derivatives vanish on $\partial\Omega$, we have $|\nabla u|^2=u_\nu^2$ there. The Hopf lemma gives $u_\nu<0$ on $\partial\Omega$, and therefore
$$
 u_\nu \equiv -\left(\frac{2}{m}\int_0^{u_{\max}}f(s)\,ds\right)^{1/2}.
$$
This is exactly the overdetermined condition.

## Consequences

In the unweighted case $\psi\equiv\mathrm{const}$, the theorem collapses to the recent $P$-function criterion of [de Lima, Santos, Sindeaux, 2025, arXiv:2504.11996].

In the weighted case, the theorem is best read as a reduction principle. It does not classify every domain in every weighted ambient space. What it does is convert a scalar wall shear stress inequality into the full constant-Neumann boundary condition. Once this has been achieved, one can appeal to whatever weighted Serrin rigidity theorem is available in the ambient class under consideration.

## What remains open

1. Can one turn the reduction theorem above into a full symmetry theorem on broad classes of smooth metric measure spaces, not just on weighted cones or other specially structured examples?
2. Is there a quantitative version: if
   $$
   \tau_m(\Omega,u) \le \frac{2}{m}+\varepsilon,
   $$
   must $\Omega$ be close to a weighted ball in some geometric topology?
3. What is the correct replacement of the constant $2/m$ when the synthetic dimension is infinite, that is, in the $\Ric^\infty_\psi$ setting?
4. Does an analogous mechanism survive for the drifting $p$-Laplacian or for anisotropic weighted operators?
5. Can the equality case in the weighted Bochner step be exploited further to extract intrinsic geometric information without invoking an external constant-Neumann rigidity theorem?


