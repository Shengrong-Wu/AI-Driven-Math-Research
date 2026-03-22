## Method Card
- **Short tag:** waiting-time hyperbolic ICF profile
- **Full name:** Waiting-time plus corrected asymptotic profile method for hyperbolic inverse curvature flow.
- **Input setting:** A smooth compact admissible inverse curvature flow in hyperbolic space, initially without a global star-shaped assumption.
- **New object / driver:** The asymptotic boundary profile phi on the sphere and its equivalent ball-model profile f = -4 exp(-phi).
- **Obstruction resolved:** Gerhardt's asymptotic theorem applies to star-shaped flows, but compact admissible flows require a waiting-time passage before that machinery can be used globally.
- **Expected outputs:** Full smooth convergence of the rescaled radial function, an explicit conformal limiting metric, and a precise criterion for when the normalized limit is round.
- **Transfer targets:** Other compact hyperbolic curvature flows and asymptotic metric-classification problems on expanding hypersurfaces.
- **Main technical risk:** The argument depends on choosing the correct center and matching the waiting-time star-shaped regime with the corrected asymptotic theorem without losing smooth control.
- **Mechanism type:** asymptotic matching, transport, comparison geometry
- **Tags:** inverse-curvature-flow, hyperbolic-space, asymptotic-profile, star-shaped, waiting-time, conformal
- **Method link:** ../methods/waiting_time_hyperbolic_icf_profile.md

**Condensation.** The new viewpoint is to treat a general compact admissible inverse curvature flow in hyperbolic space by splicing finite waiting-time star-shapedness to the corrected star-shaped asymptotic theory. This overcomes the obstruction that the clean asymptotic profile machinery is only available after star-shapedness, while the initial compact flow need not start there. The operative mechanism is to enter the star-shaped regime after finite time, then identify the limiting boundary profile phi and translate it into an explicit conformal metric on the sphere. If it works, it gives full smooth asymptotics for the flow, characterizes when the limiting normalized metric is round, and shows by example that non-round limits genuinely occur.

# Asymptotic boundary profiles for compact inverse curvature flows in hyperbolic space

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

**MSC:** 53E10, 53C44, 35B40

**Keywords:** inverse curvature flow, hyperbolic space, asymptotic profile, star-shapedness, induced metric

## Abstract

We combine Bourni--Espinar--Mishra's finite waiting-time star-shapedness theorem for compact inverse curvature flows in hyperbolic space with Gerhardt's corrected asymptotic theorem for smooth star-shaped solutions. For any smooth compact admissible solution, after choosing a center, the geodesic radial function has a full $C^{\infty}$ boundary profile

$$
\rho(t,\cdot)-\frac{t}{n}\longrightarrow \varphi \text{in } C^{\infty}(\mathbb{S}^n).
$$

Equivalently, in the conformally flat ball model one has

$$
e^{t/n}(u(t,\cdot)-2)\longrightarrow f=-4e^{-\varphi}<0
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

As a consequence, the rescaled induced metrics converge in $C^{\infty}$ to an explicit conformal metric on $\mathbb{S}^n$, and the area-normalized limiting metric has constant sectional curvature if and only if $e^{-\varphi}$ is a linear combination of the constant and first spherical harmonics. In particular, Hung--Wang's examples for inverse mean curvature flow show that the limiting metric need not be round, even for compact smooth flows in hyperbolic space.

## Introduction

Let $\{\Sigma_t\}_{t\ge 0}$ be a family of closed hypersurfaces in hyperbolic space $\mathbb{H}^{n+1}$ evolving by the inverse curvature flow

$$
\partial_t x=\frac{1}{F}\,\nu,
$$

where $\nu$ is the outward unit normal and $F$ is a symmetric curvature function. For smooth star-shaped admissible initial data, Gerhardt proved long-time existence and exponential asymptotic umbilicity for a large class of flows of the form (). More precisely, in the conformally flat ball model, the Euclidean radial function $u(t,\cdot)$ satisfies

$$
e^{t/n}(u(t,\cdot)-2)\to f<0
 \text{in } C^{\infty}(\mathbb{S}^n),
$$

where $f$ is a smooth function on the sphere at infinity [Gerhardt]. Recently, Bourni, Espinar, and Mishra proved that compact solutions become star-shaped after an explicit finite waiting time, thereby removing the star-shapedness assumption from the coarse asymptotic statement that the principal curvatures converge exponentially fast to $1$ [BEM].

The purpose of this note is to record the stronger conclusion that already follows from combining these two results. Namely, every smooth compact admissible solution of () carries a smooth asymptotic boundary profile at infinity, and the full limiting conformal class of the induced metric can be written explicitly in terms of that profile. This sharpens [BEM], where only exponential convergence of the principal curvatures to $1$ is stated.

The point is simple but useful: once the flow enters the star-shaped regime, Gerhardt's corrected theorem applies without further modification. This produces the true first asymptotic datum for compact non-shifted hyperbolic inverse curvature flow, namely a smooth function on $\mathbb{S}^n$ rather than merely a center-and-scale normalization.

Our main theorem is the following.

**Theorem.**

Let $\{\Sigma_t\}_{t\ge 0}$ be a smooth compact admissible solution in $\mathbb{H}^{n+1}$ of (), where $F\in C^{\infty}(\Gamma)\cap C^0(\overline\Gamma)$ is symmetric, monotone, concave, homogeneous of degree one, positive on a symmetric open convex cone $\Gamma\subset \mathbb{R}^n$, vanishes on $\partial\Gamma$, and is normalized by

$$
F(1,\dots,1)=n.
$$

Then there exist a point $p\in \mathbb{H}^{n+1}$ and a smooth function $\varphi\in C^{\infty}(\mathbb{S}^n)$ with the following properties.

For all sufficiently large $t$, the hypersurface $\Sigma_t$ is a radial graph over $\mathbb{S}^n$ in geodesic polar coordinates centered at $p$,

$$
\Sigma_t=\{(\rho(t,\theta),\theta):\theta\in \mathbb{S}^n\},
$$

and

$$
\rho(t,\cdot)-\frac{t}{n}\longrightarrow \varphi
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

Equivalently, in the conformally flat ball model centered at $p$, if $u(t,\cdot)\in (0,2)$ denotes the Euclidean radial function, then

$$
e^{t/n}(u(t,\cdot)-2)\longrightarrow f:=-4e^{-\varphi}<0
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

If $g_t$ denotes the induced metric on $\Sigma_t$, then

$$
e^{-2t/n}g_t\longrightarrow \frac14 e^{2\varphi}\sigma
 \text{in } C^{\infty}(\mathbb{S}^n),
$$

and

$$
|\Sigma_t|^{-2/n}g_t\longrightarrow
 \left(\int_{\mathbb{S}^n} e^{n\varphi}\,\,d\mu_\sigma\right)^{-2/n}e^{2\varphi}\sigma
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

The limit metric in () is conformal to the round metric. Using a criterion of Hung and Wang, we obtain a precise roundness test.

**Corollary.**

Let $E_k$ denote the eigenspace of $-\Delta_\sigma$ on $\mathbb{S}^n$ with eigenvalue $k(k+n-1)$. Under the hypotheses of Theorem , the limiting metric in () has constant sectional curvature if and only if

$$
e^{-\varphi}\in E_0\oplus E_1 = \operatorname{span}\{1,x_1,\dots,x_{n+1}\}.
$$

Equivalently, the same condition can be written as $-f\in E_0\oplus E_1$.

For inverse mean curvature flow, this criterion interacts directly with the counterexamples of Hung and Wang.

**Corollary.**

For inverse mean curvature flow, that is, for $F=H$, and for every $n\ge 2$, there exist smooth compact mean-convex star-shaped initial hypersurfaces in $\mathbb{H}^{n+1}$ such that the limiting area-normalized metric is not of constant sectional curvature.

The article is short. Section recalls the two input theorems and the relevant coordinate change. Section proves Theorem . Section records the metric consequences and the roundness criterion.

## Background

We work throughout with the flow (). A hypersurface is called *admissible* if its principal curvature vector lies in $\Gamma$ at every point.

The first input is the finite waiting-time star-shapedness theorem of Bourni, Espinar, and Mishra; see [BEM].

**Theorem (Bourni--Espinar--Mishra).**

Let $\Omega_0\subset \mathbb{H}^{n+1}$ be a bounded domain with smooth admissible boundary $\Sigma_0$, and let $\{\Sigma_t\}_{t\ge 0}$ be the corresponding smooth compact solution of (). If $r_-$ and $r_+$ denote the geodesic in-radius and out-radius of $\Omega_0$, then

$$
T=n\log\frac{\sinh r_+}{\sinh r_-}
$$

has the property that $\Sigma_t$ is star-shaped for all $t\ge T$. In addition, the principal curvatures of $\Sigma_t$ are uniformly bounded and converge exponentially fast to $1$.

The second input is Gerhardt's asymptotic theorem for smooth star-shaped flows; we use the corrected version recorded in [Gerhardt].

**Theorem (Gerhardt).**

Let $\{\Sigma_t\}_{t\ge 0}$ be a smooth admissible star-shaped solution of (). In the conformally flat ball model

$$
\bar g=\frac{1}{\bigl(1-\frac14|x|^2\bigr)^2}\,dx^2
 \text{on } B_2(0)\subset\mathbb{R}^{n+1},
$$

write

$$
\Sigma_t=\operatorname{graph} u(t,\cdot), 0<u(t,\cdot)<2.
$$

Then, for each $m\ge 1$,

$$
\|D^mA\|\le c_m e^{-t/n},
$$

and there exists a smooth strictly negative function $f\in C^{\infty}(\mathbb{S}^n)$ such that

$$
e^{t/n}(u(t,\cdot)-2)\longrightarrow f
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

**Remark.**

The corrected arXiv version of [Gerhardt] is essential here. In arXiv:1101.2578v5, Gerhardt explicitly removed a false lemma from earlier versions and corrected the claim that the rescaled quantity in () converges to a constant; the corrected statement is convergence to a smooth strictly negative function.

If the same center is used for both the ball model and geodesic polar coordinates, the Euclidean radius $u$ and the hyperbolic radius $\rho$ are related by

$$
\rho=\log(2+u)-\log(2-u),
$$

see [Gerhardt]. In particular,

$$
\sinh^2\rho=\frac{u^2}{\bigl(1-\frac14u^2\bigr)^2}.
$$

We will also use the standard formulas for a radial graph $\rho=\rho(\theta)$ in geodesic polar coordinates,

$$
\bar g=d\rho^2+\sinh^2\rho\,\sigma,
$$

namely

$$
g_{ij}=\rho_i\rho_j+\sinh^2\rho\,\sigma_{ij}
$$

and

$$
d\mu_{g}=\bigl(\sinh\rho\bigr)^n
 \sqrt{1+\sinh^{-2}\rho\,|D\rho|_\sigma^2}\,d\mu_\sigma.
$$

## The asymptotic profile

We begin by converting Gerhardt's boundary profile into geodesic polar coordinates.

**Lemma.**

Assume that a smooth star-shaped solution of () satisfies () in the ball model. Let $\rho$ be the corresponding geodesic radial function defined by (). Then

$$
\rho(t,\cdot)-\frac{t}{n}\longrightarrow \varphi:=\log\frac{4}{-f}
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

Equivalently, $f=-4e^{-\varphi}$.

*Proof.*

Set

$$
f_t:=e^{t/n}(u(t,\cdot)-2).
$$

Then $f_t\to f$ in $C^{\infty}(\mathbb{S}^n)$ and $f<0$. Since $2-u=-e^{-t/n}f_t$, equation () becomes

$$
\rho-\frac{t}{n}
=\log(2+u)-\log\bigl(e^{t/n}(2-u)\bigr)
=\log(2+u)-\log(-f_t).
$$

As $t\to\infty$, one has $u\to 2$ in $C^{\infty}(\mathbb{S}^n)$ because $f_t$ stays bounded. Hence

$$
\log(2+u)-\log(-f_t)\longrightarrow \log 4-\log(-f)=\log\frac{4}{-f}
$$

in $C^{\infty}(\mathbb{S}^n)$, proving the claim.

∎

*Proof.*

[Proof of Theorem ]
By Theorem , there exists a finite time $T_*$ and a point $p\in \mathbb{H}^{n+1}$ such that $\Sigma_t$ is star-shaped with respect to $p$ for all $t\ge T_*$. Reparametrize time by replacing $t$ with $t-T_*$; this only changes the eventual profile by an additive constant in geodesic coordinates, or equivalently by a multiplicative constant in the ball model. Thus we may assume from the outset that the flow is star-shaped for all $t\ge 0$ with respect to the chosen center $p$.

Now work in the conformally flat ball model centered at $p$. Theorem provides a smooth strictly negative function $f\in C^{\infty}(\mathbb{S}^n)$ such that

$$
e^{t/n}(u(t,\cdot)-2)\to f
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

Applying Lemma yields a function $\varphi\in C^{\infty}(\mathbb{S}^n)$ satisfying (), and () follows from the identity $f=-4e^{-\varphi}$.

It remains to derive the metric limits. By (),

$$
g_{ij}=\rho_i\rho_j+\sinh^2\rho\,\sigma_{ij}.
$$

Because () holds in $C^{\infty}(\mathbb{S}^n)$, we have

$$
\rho(t,\cdot)=\frac{t}{n}+\varphi+o_{C^{\infty}}(1)
 \text{and} 
 D\rho=D\varphi+o_{C^{\infty}}(1).
$$

Therefore

$$
e^{-2t/n}\rho_i\rho_j\longrightarrow 0
 \text{in } C^{\infty}(\mathbb{S}^n),
$$

while

$$
e^{-2t/n}\sinh^2\rho
 =\frac14 e^{-2t/n}\bigl(e^{\rho}-e^{-\rho}\bigr)^2
 \longrightarrow \frac14 e^{2\varphi}
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

This proves ().

Next, the area formula () gives

$$
d\mu_t
 =\bigl(\sinh\rho\bigr)^n
 \sqrt{1+\sinh^{-2}\rho\,|D\rho|_\sigma^2}\,d\mu_\sigma.
$$

Since $\sinh\rho\sim \tfrac12 e^{\rho}$ and $\sinh^{-2}\rho\,|D\rho|_\sigma^2\to 0$ in $C^{\infty}$, we obtain

$$
e^{-t}d\mu_t\longrightarrow 2^{-n}e^{n\varphi}\,d\mu_\sigma
 \text{in } C^{\infty}(\mathbb{S}^n).
$$

Integrating () over $\mathbb{S}^n$ yields

$$
e^{-t}|\Sigma_t|\longrightarrow 2^{-n}\int_{\mathbb{S}^n}e^{n\varphi}\,d\mu_\sigma.
$$

Finally,

$$
|\Sigma_t|^{-2/n}g_t
 =\bigl(e^{-t}|\Sigma_t|\bigr)^{-2/n}\,e^{-2t/n}g_t,
$$

and combining () with () gives (). The theorem is proved.

∎

**Remark.**

Theorem sharpens [BEM]. Once the flow enters the star-shaped regime, the full $C^{\infty}$ boundary profile of Gerhardt becomes available, not only the exponential convergence of the principal curvatures to $1$.

## Consequences for the limiting metric

The limiting metric in Theorem is conformal to the round metric. The following criterion is exactly the one used by Hung and Wang; see [HW].

**Lemma (Hung--Wang).**

Let $\psi\in C^{\infty}(\mathbb{S}^n)$. The conformal metric $e^{2\psi}\sigma$ has constant sectional curvature if and only if

$$
e^{-\psi}\in E_0\oplus E_1 = \operatorname{span}\{1,x_1,\dots,x_{n+1}\}.
$$

*Proof.*

[Proof of Corollary ]
By Theorem , the limiting area-normalized metric is

$$
\widehat g_\infty = c\,e^{2\varphi}\sigma,
 
 c:=\left(\int_{\mathbb{S}^n}e^{n\varphi}\,d\mu_\sigma\right)^{-2/n}>0.
$$

Multiplication by the positive constant $c$ does not affect whether the metric has constant sectional curvature, so Lemma applies directly with $\psi=\varphi$. This proves the first assertion. The second follows from the identity $-f=4e^{-\varphi}$.

∎

*Proof.*

[Proof of Corollary ]
Hung and Wang constructed star-shaped mean-convex examples in $\mathbb{H}^3$ whose area-normalized limiting metrics are not round, and they explained that the same phenomenon persists in higher dimensions; see [HW]. The conclusion now follows from Corollary .

∎

**Remark.**

Theorem identifies the natural first asymptotic datum for compact non-shifted inverse curvature flow in hyperbolic space as a smooth boundary profile $\varphi$ on $\mathbb{S}^n$. Any higher-order asymptotic theory must therefore be organized relative to this profile, not merely relative to center and scale modes.

## References

- T. Bourni, J. M. Espinar, and A. Mishra,
*Aleksandrov reflection for geometric flows in hyperbolic spaces*,
preprint, arXiv:2602.12186, 2026.

- C. Gerhardt,
*Inverse curvature flows in hyperbolic space*,
J. Differential Geom. **89** (2011), no. 3, 487--527;
corrected arXiv version arXiv:1101.2578v5, 2014.

- P.-K. Hung and M.-T. Wang,
*Inverse mean curvature flows in the hyperbolic 3-space revisited*,
Calc. Var. Partial Differential Equations **54** (2015), no. 1, 119--126.

