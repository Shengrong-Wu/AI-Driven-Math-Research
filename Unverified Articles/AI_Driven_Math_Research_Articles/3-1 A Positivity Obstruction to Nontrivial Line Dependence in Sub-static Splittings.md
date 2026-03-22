## Method Card
- **Short tag:** slice positivity obstruction
- **Full name:** Slice-positivity obstruction for separated sub-static line factors.
- **Input setting:** A separated sub-static splitting g = beta(y)^2 dt^2 + h(y) and V = A(t) beta(y) with bounded positive line factor A.
- **New object / driver:** The slice positivity quantity Q_h(beta) extracted from the sub-static tensor inequality.
- **Obstruction resolved:** After a line-splitting argument one still lacks a criterion forcing the line factor to be constant in the sub-static regime.
- **Expected outputs:** A sharp necessary condition for nonconstant line dependence: if A is nonconstant then Q_h(beta) must be strictly positive everywhere.
- **Transfer targets:** Wang-type sub-static splitting problems, separated rigidity tests, and collar models where one wants to rule out residual line dependence.
- **Main technical risk:** The method gives a one-sided obstruction rather than a full classification, and the sign pattern is sensitive to the exact tensor computation.
- **Mechanism type:** rigidity, defect control, comparison geometry
- **Tags:** sub-static, line-factor, slice-positivity, splitting, obstruction, rigidity
- **Method link:** ../methods/slice_positivity_obstruction.md

**Condensation.** The new viewpoint is to reduce the unresolved line-dependence issue in sub-static splittings to a scalar positivity test on the slice geometry. This overcomes the bottleneck that the tensor inequality S(V,g) >= 0 does not directly show whether the line factor must be constant after splitting. The operative mechanism is an explicit computation of the separated ansatz, which isolates Q_h(beta) as the quantity that every bounded nonconstant line factor must force to stay positive. If it works, it gives an immediate rigidity check: any point where Q_h(beta) <= 0 collapses the line factor to a constant.

# A Positivity Obstruction to Nontrivial Line Dependence in Sub-static Splittings

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

> **TL;DR**
> Wang's recent work on conformally compactifiable static spaces leaves an explicit gap in the sub-static case: after a line-splitting argument one gets $V_*(r,y)=\alpha(r)\beta(y)$, but it is not clear when $\alpha$ must be constant.
> I do not solve that full problem.
> What I can prove is a sharp obstruction: in the separated ansatz $g=\beta(y)^2dt^2+h(y)$ and $V=A(t)\beta(y)$, any bounded nonconstant $A$ forces
> $$\mathcal Q_h(\beta)=\beta R_h+(n-3)\Delta_h\beta+(n-1)\beta^{-1}|\nabla_h\beta|^2$$
> to be strictly positive everywhere. So if $\mathcal Q_h(\beta)\le 0$ at one point, then $A$ is constant.

## Introduction

A recurring theme in geometric analysis is that a splitting theorem usually hides a stronger rigidity mechanism. Once a manifold splits off a line, there is often a second argument showing that the remaining geometric data do not actually depend on that line variable.

In the classical static-vacuum setting, Wang's recent paper on the Riccati equation for static spaces pushes this line of thought quite far. He reproves a splitting theorem for conformally compactifiable static spaces by combining Busemann-function ideas with a Riccati-type inequality. In the sub-static setting, however, the same strategy stalls at a very precise place: one still gets a partial split, but only of the form
$$
g=V_*^2\,dr^2+h, \qquad V_*(r,y)=\alpha(r)\beta(y),
$$
and the proof no longer forces $\alpha$ to be constant.

That is the bottleneck I focused on.

I did not try to force the full theorem immediately. That would have been the easiest way to overpromise. Instead, I asked a narrower structural question:

> If we already know the separated form
> $$
> g=\beta(y)^2dt^2+h(y), \qquad V(t,y)=A(t)\beta(y),
> $$
> what does the sub-static tensor inequality actually say about the line factor $A$?

This turns out to have a clean answer.

## Why this direction is interesting

There are two reasons this is a worthwhile target.

First, it is attached to an explicit unresolved step in a recent paper, not a vague “maybe one can generalize this” hope. Wang literally identifies the missing issue: how does the tangential inequality $S_\Sigma\ge 0$ control the factor $\alpha$?

Second, the answer is not just a one-off estimate. It gives a necessary geometric condition for nontrivial line dependence. In other words, it does not merely say “here is one situation where $\alpha$ is constant”; it says “if $\alpha$ is not constant, the slice geometry must satisfy a very restrictive positivity property everywhere.”

That is the kind of statement that often becomes useful in a second-stage program.

## Setup

Let $(N^{n-1},h)$ be a connected Riemannian manifold, let $\beta>0$ be smooth on $N$, and let $A>0$ be smooth on $\mathbb R$. Consider
$$
M=\mathbb R\times N,\qquad g=\beta(y)^2dt^2+h(y),\qquad V(t,y)=A(t)\beta(y).
$$

The sub-static tensor is
$$
S(V,g):=V\operatorname{Ric}_g+(\Delta_gV)g-\nabla_g^2V.
$$

The sub-static condition is the tensor inequality
$$
S(V,g)\ge 0.
$$

The slice quantity that ends up mattering is
$$
\mathcal Q_h(\beta):=\beta R_h+(n-3)\Delta_h\beta+(n-1)\beta^{-1}|\nabla_h\beta|^2.
$$

## Main theorem

Here is the precise statement.

### Theorem
Assume
$$
g=\beta(y)^2dt^2+h(y), \qquad V(t,y)=A(t)\beta(y),
$$
and
$$
S(V,g)\ge 0.
$$
Assume also that $A$ is bounded on $\mathbb R$.

Then
$$
A \text{ nonconstant } \Longrightarrow \mathcal Q_h(\beta)>0 \quad \text{everywhere on }N.
$$

Equivalently, if there exists $y_0\in N$ such that
$$
\mathcal Q_h(\beta)(y_0)\le 0,
$$
then $A$ is constant.

The theorem is intentionally one-sided. It identifies a necessary condition for nontrivial line dependence; it does not try to classify all cases with $\mathcal Q_h(\beta)>0$.

## Proof sketch

The proof is basically one tensor computation plus one elementary ODE observation.

### Step 1: compute the geometry of the ansatz

Because
$$
g_{tt}=\beta^2,\qquad g_{ij}=h_{ij},\qquad g_{ti}=0,
$$
the nontrivial Christoffel symbols are
$$
\Gamma^t_{it}=\beta^{-1}\beta_i,\qquad
\Gamma^i_{tt}=-\beta\,\beta^i,\qquad
\Gamma^k_{ij}=\Gamma^k_{ij}(h).
$$

For $V=A(t)\beta(y)$ one gets
$$
\nabla^2_gV(\partial_t,\partial_t)=\beta\big(A''+A|\nabla_h\beta|^2\big),
$$
$$
\nabla^2_gV(\partial_i,\partial_t)=0,
$$
$$
\nabla^2_gV(\partial_i,\partial_j)=A\,\nabla_h^2\beta(\partial_i,\partial_j),
$$
and
$$
\Delta_gV=\beta^{-1}A''+A\Delta_h\beta+A\beta^{-1}|\nabla_h\beta|^2.
$$

Also,
$$
\operatorname{Ric}_g(\partial_t,\partial_t)=-\beta\Delta_h\beta,
$$
$$
\operatorname{Ric}_g(\partial_i,\partial_j)=\operatorname{Ric}_h(\partial_i,\partial_j)-\beta^{-1}\nabla_h^2\beta(\partial_i,\partial_j).
$$

### Step 2: compute the sub-static tensor

Substituting into
$$
S(V,g)=V\operatorname{Ric}_g+(\Delta_gV)g-\nabla_g^2V
$$
gives
$$
S_{tt}=0,\qquad S_{ti}=0,
$$
and
$$
S_{ij}
=
A\Big(\beta\,\operatorname{Ric}_h{}_{ij}
-2\nabla_h^2\beta_{ij}
+\big(\Delta_h\beta+\beta^{-1}|\nabla_h\beta|^2\big)h_{ij}\Big)
+\beta^{-1}A''h_{ij}.
$$

Now take the $h$-trace:
$$
\operatorname{tr}_h(S|_{TN})
=
A\,\mathcal Q_h(\beta)+(n-1)\beta^{-1}A''.
$$

This is the key identity.

### Step 3: evaluate at one bad slice point

Suppose there exists $y_0\in N$ such that
$$
\mathcal Q_h(\beta)(y_0)\le 0.
$$
Because $S\ge 0$, its restriction to $T_{y_0}N$ is nonnegative, hence
$$
\operatorname{tr}_h(S|_{T_{y_0}N})\ge 0.
$$
Therefore
$$
0\le A(t)\mathcal Q_h(\beta)(y_0)+(n-1)\beta(y_0)^{-1}A''(t).
$$

Since $A(t)>0$ and $\mathcal Q_h(\beta)(y_0)\le 0$, this forces
$$
A''(t)\ge 0 \qquad \text{for all }t\in\mathbb R.
$$

So $A$ is convex.

### Step 4: use boundedness

A bounded convex function on $\mathbb R$ is constant. Therefore $A$ must be constant.

That proves the theorem.

## A nice three-dimensional corollary

When $n=3$, the formula simplifies to
$$
\mathcal Q_h(\beta)=\beta R_h+2\beta^{-1}|\nabla_h\beta|^2.
$$

So if $\beta$ has a critical point $y_0$, then
$$
\mathcal Q_h(\beta)(y_0)=\beta(y_0)R_h(y_0).
$$

This gives:

### Corollary
In dimension $n=3$, if $\beta$ has a critical point $y_0$ with
$$
R_h(y_0)\le 0,
$$
then $A$ is constant.

This is the cleanest geometric version of the theorem. It says that in dimension three, any nontrivial line factor forces positive scalar curvature at every critical point of the slice warping function.

## A warning: the stronger theorem is false in the bare ansatz

A good referee would immediately ask the following:

> Could sub-static positivity alone force $A$ to be constant, with no extra sign condition on $\mathcal Q_h(\beta)$?

The answer is no, at least not for the bare separated ansatz.

Take $N=S^{n-1}$ with the round metric, let $\beta\equiv 1$, and set
$$
A(t)=1+\varepsilon\sin t,\qquad 0<\varepsilon<1.
$$
Then
$$
g=dt^2+h,\qquad V=A(t).
$$
A direct computation gives
$$
S(V,g)|_{TN}
=
\big((n-2)A+A''\big)h
=
\big((n-2)+(n-3)\varepsilon\sin t\big)h\ge 0,
$$
while
$$
S(V,g)(\partial_t,\partial_t)=0.
$$
So $S(V,g)\ge 0$ even though $A$ is nonconstant.

What saves the theorem above is exactly that in this example
$$
\mathcal Q_h(\beta)=R_h=(n-1)(n-2)>0
$$
everywhere. So the theorem is sharp in the only direction it claims.

This is useful conceptually. It means that any proof of the full Wang-style upgrade must use more than the raw separated sub-static inequality. It must exploit some additional geometric input from the conformally compactifiable setting, the optical metric, the boundary, or topology.

## What this does and does not solve

It is important to be explicit here.

What is proved:
- a necessary condition for nonconstant separated line dependence;
- an explicit criterion that upgrades Wang's partial split to a full static-type split whenever $\mathcal Q_h(\beta)\le 0$ somewhere;
- a very simple 3D corollary;
- a counterexample showing why one should not expect the bare separated ansatz alone to force constancy.

What is not proved:
- the full statement that Wang's sub-static factor $\alpha$ is always constant;
- a general theorem forcing $\mathcal Q_h(\beta)\le 0$ somewhere in the conformally compactifiable setting;
- a removal of Wang's boundary convexity condition.

So this is not the end of the story. It is the part of the story that can be made fully rigorous quickly.

## Where the theorem might plug into Wang's program

Wang's partially split sub-static geometry becomes
$$
g=\beta(y)^2dt^2+h(y),\qquad V=A(t)\beta(y)
$$
after reparametrizing the line variable. If one can show that the resulting $A$ is bounded and that $\mathcal Q_h(\beta)\le 0$ somewhere on the slice, then the theorem above immediately upgrades the split to the static-type form.

So the open problem is now more focused:

1. derive boundedness of the line factor in the relevant splitting region;
2. force a sign change or nonpositivity of $\mathcal Q_h(\beta)$ somewhere.

That is a better-defined second-stage program than “somehow prove $\alpha$ is constant.”

## What remains open

1. Can one prove that Wang's slice quantity $\mathcal Q_h(\beta)$ is nonpositive somewhere under natural conformally compactifiable hypotheses?

2. In dimension three, can one force a critical point of $\beta$ with $R_h\le 0$ from topology or asymptotic data?

3. Is there a boundary interpretation of $\mathcal Q_h(\beta)$ in terms of the canonical compactification $V^{-2}g$ or the Neumann data studied in Wang's later renormalized-area paper?

4. Wang also points out another nearby problem: removing the boundary convexity condition when the minimizing line has an interior segment. Can one make the support-sense maximum principle precise enough to settle that variant?

5. Are there integral or weighted versions of the trace identity that give stronger rigidity than the one-point criterion proved here?

6. Can one combine this obstruction with the recent sub-static splitting results that use compact minimal hypersurfaces to get a hybrid theorem?

## Bottom line

The biggest theorem one might want did not survive scrutiny in full generality, and that is important information. But the failure was productive: it exposed the right corrected statement.

> Nontrivial bounded line dependence in the separated sub-static split is only possible if a specific slice curvature expression is strictly positive everywhere.

That is a real structural consequence, not just a patched proof. And because Wang's paper isolates exactly this missing line-factor issue, the theorem feels like a credible note-sized result rather than an artificial exercise.

