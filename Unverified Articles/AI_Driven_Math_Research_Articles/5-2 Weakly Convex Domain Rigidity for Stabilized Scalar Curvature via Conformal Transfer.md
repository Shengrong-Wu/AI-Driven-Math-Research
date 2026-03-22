## Method Card
- **Short tag:** conformal stabilized rigidity transfer
- **Full name:** Conformal transfer from stabilized to ordinary boundary rigidity.
- **Input setting:** A compact manifold with boundary equipped with stabilized scalar-curvature data and a conformal factor built from phi.
- **New object / driver:** The conformal transfer identity sending stabilized scalar and boundary quantities to ordinary scalar curvature and mean curvature while preserving the tensor B_phi^2 g on the boundary.
- **Obstruction resolved:** Existing Euclidean boundary-rigidity theorems are stated for ordinary scalar and mean curvature, not for the stabilized scalar-curvature package.
- **Expected outputs:** Immediate stabilized analogues of Ko--Yao rigidity for weakly convex or convex domains, forcing phi to be constant and the metric to be Euclidean up to homothety.
- **Transfer targets:** Any rigidity theorem whose assumptions only involve scalar curvature, mean curvature, and the scale-invariant boundary tensor H^2 g.
- **Main technical risk:** The transfer works only because the correction terms are sign-controlled and the boundary tensor is exactly invariant under the chosen conformal change.
- **Mechanism type:** variational reduction, rigidity, comparison geometry
- **Tags:** conformal-transfer, stabilized-scalar-curvature, boundary-rigidity, weakly-convex, mean-curvature, Euclidean
- **Method link:** ../methods/conformal_stabilized_rigidity_transfer.md

**Condensation.** The new viewpoint is that stabilized scalar-curvature rigidity with boundary can be reduced to an ordinary scalar-curvature problem by the right conformal transfer, rather than attacked directly. This overcomes the obstruction that the established rigidity theorems live in the unweighted Euclidean framework and do not mention the stabilizing field phi. The operative mechanism is an exact conformal formula: the interior term becomes ordinary scalar curvature up to a nonnegative correction, the boundary term becomes mean curvature, and the key boundary tensor stays unchanged. If it works, existing Euclidean rigidity results apply immediately and force both the stabilized field and the metric to collapse to the rigid model.

# Weakly Convex Domain Rigidity for Stabilized Scalar Curvature via Conformal Transfer

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

**MSC:** 53C21, 53C24, 53C42, 58J05

**Keywords:** stabilized scalar curvature, weighted scalar curvature, weakly convex domains, boundary rigidity, conformal change

## Abstract

We record a simple conformal transfer principle for rigidity theorems with boundary. Let $(M^n,g)$, $n\ge 3$, be a compact Riemannian manifold with smooth boundary and let $\phi\in C^\infty(M)$. Under the conformal change $\widehat g=e^{\frac{2\phi}{n-1}}g$, the stabilized scalar curvature

$$
R_\phi(g):=R_g-2\Delta_g\phi-|\nabla \phi|_g^2
$$

becomes ordinary scalar curvature up to the nonnegative correction $\frac{1}{n-1}|\nabla\phi|_g^2$, while the boundary quantity

$$
B_\phi(g):=H_g+\partial_\eta\phi
$$

becomes the mean curvature of $(\partial M,\widehat g)$. Moreover, the scale-invariant boundary tensor $B_\phi(g)^2\, g|_{T\partial M}$ is exactly unchanged by this conformal transformation. As a consequence, any Euclidean rigidity theorem whose hypotheses involve only $R_g$, $H_g$, and $H_g^2 g|_{T\partial M}$ has an immediate stabilized analogue. We apply this observation to Ko--Yao's rigidity theorems for weakly convex domains in dimension three and smooth convex domains in dimension four. In both cases the stabilized hypotheses force $\phi$ to be constant and $g$ to be Euclidean up to homothety. To the best of our knowledge, these corollaries have not been recorded explicitly.

## Introduction

For a compact Riemannian manifold $(M^n,g)$ with smooth boundary and a smooth function $\phi\in C^\infty(M)$, consider the stabilized scalar curvature

$$
R_\phi(g):=R_g-2\Delta_g\phi-|\nabla\phi|_g^2
$$

and the associated boundary quantity

$$
B_\phi(g):=H_g+\partial_\eta\phi,
$$

where $\eta$ denotes the outward unit normal along $\partial M$ and $H_g$ is the mean curvature of $\partial M$ with respect to $\eta$. Following Wang [Wan25], one may regard $R_\phi(g)$ as a weak or weighted form of scalar curvature, also known in the literature as $P$-scalar curvature.

Recent work of Wang [Wan25] develops rigidity statements in the stabilized setting by means of weighted hypersurface foliations. On the other hand, Ko and Yao proved Euclidean rigidity theorems for compact manifolds with boundary under the scale-invariant boundary comparison

$$
H_g^2\, g|_{T\partial M}\ge H_0^2\,g_{\mathrm{Eucl}},
$$

first in dimension three for weakly convex domains [KY24] and then in dimension four for smooth convex domains [KY26]. Their proofs use capillary minimal surfaces in dimension three and weighted capillary minimal slicing in dimension four.

It is then natural to ask whether these weakly convex-domain rigidity theorems admit stabilized analogues with $R_g$ replaced by $R_\phi(g)$ and $H_g$ replaced by $B_\phi(g)$. The purpose of this note is to observe that the answer is yes, and that no new weighted capillary theory is needed. Indeed, if one sets

$$
\widehat g:=e^{\frac{2\phi}{n-1}}g,
$$

then the standard conformal change formulas show that

$$
R_{\widehat g}=e^{-\frac{2\phi}{n-1}}\left(R_\phi(g)+\frac{1}{n-1}|\nabla\phi|_g^2\right),
 
H_{\widehat g}=e^{-\frac{\phi}{n-1}}B_\phi(g),
$$

while the boundary tensor is exactly invariant:

$$
H_{\widehat g}^2\,\widehat g|_{T\partial M}=B_\phi(g)^2\,g|_{T\partial M}.
$$

Therefore any rigidity theorem depending only on $R_g$, $H_g$, and $H_g^2g|_{T\partial M}$ transfers verbatim to the stabilized setting.

The point is modest but useful. It shows that the weakly convex-domain rigidity theorems of Ko--Yao already contain stabilized analogues, even though the proofs in [KY24, KY26] and [Wan25] proceed by rather different geometric mechanisms. Closely related weighted rigidity results have recently appeared in other settings, for example in the weighted Llarull theorem of Zhou--Zhu [ZZ25], in scalar-mean rigidity for certain conformal model spaces due to Wang--Xie [WX25], and in McCormick's conformal reduction of weighted positive mass and Penrose-type inequalities [McC26]. To the best of our knowledge, however, the specific weakly convex-domain corollaries below do not appear explicitly in the literature.

Our first result is a general transfer principle.

**Proposition (Transfer principle).**

Let $n\ge 3$, let $(M^n,g)$ be a compact connected Riemannian manifold with smooth boundary, and let $\phi\in C^\infty(M)$. Suppose that a rigidity theorem is available for ordinary metrics on $M$ with the following form: whenever a metric $\gamma$ on $M$ satisfies

$$
R_\gamma\ge 0, H_\gamma\ge 0, H_\gamma^2\,\gamma|_{T\partial M}\ge \mathcal Q
$$

for a prescribed nonnegative symmetric $2$-tensor $\mathcal Q$ on $\partial M$, the manifold $(M,\gamma)$ is isometric to a Euclidean domain. Then the same conclusion holds for any pair $(g,\phi)$ satisfying

$$
R_\phi(g)\ge 0, B_\phi(g)\ge 0, B_\phi(g)^2\,g|_{T\partial M}\ge \mathcal Q.
$$

More precisely, $\widehat g=e^{\frac{2\phi}{n-1}}g$ is isometric to a Euclidean domain, $\phi$ is constant, and $g$ is Euclidean up to homothety.

We then obtain two concrete corollaries.

**Theorem.**

Let $\Omega\subset\mathbb{R}^3$ be a smooth weakly convex compact domain in the sense of [KY24], and let $\sigma_0$ and $H_0$ denote the induced metric and mean curvature of $\partial\Omega$ in the Euclidean metric. Let $M^3$ be a connected compact manifold with smooth boundary and let $F\colon M\to \Omega$ be a diffeomorphism. Assume that $g$ is a Riemannian metric on $M$ and $\phi\in C^\infty(M)$ satisfy

$$
R_\phi(g)\ge 0 \text{on } M,
 
B_\phi(g)\ge 0 \text{on } \partial M,
$$

and

$$
B_\phi(g)^2\,g|_{T\partial M}\ge (F|_{\partial M})^*(H_0^2\sigma_0)
$$

as quadratic forms on $T\partial M$. Then $\phi$ is constant and $(M,g)$ is isometric to the Euclidean metric on a homothetic copy of $\Omega$.

**Theorem.**

Let $\Omega\subset\mathbb{R}^4$ be a smooth convex compact domain, and let $\sigma_0$ and $H_0$ denote the induced metric and mean curvature of $\partial\Omega$ in the Euclidean metric. Let $M^4$ be a connected compact manifold with smooth boundary, and let $f\colon\partial M\to\partial\Omega$ be a diffeomorphism. Assume that $g$ is a Riemannian metric on $M$ and $\phi\in C^\infty(M)$ satisfy

$$
R_\phi(g)\ge 0 \text{on } M,
 
B_\phi(g)\ge 0 \text{on } \partial M,
$$

and

$$
B_\phi(g)^2\,g|_{T\partial M}\ge f^*(H_0^2\sigma_0)
$$

as quadratic forms on $T\partial M$. Then $\phi$ is constant and $(M,g)$ is isometric to the Euclidean metric on a homothetic copy of $\Omega$.

The scale-free nature of the conclusion is unavoidable: if $g$ is replaced by $c^2g$ and $\phi$ is replaced by $\phi+(n-1)\log c$, then $R_\phi(g)$ and $B_\phi(g)^2 g|_{T\partial M}$ transform in exactly the same way as before. Accordingly, the most natural conclusion is Euclideanity up to overall homothety. Any additional normalization fixing the constant part of $\phi$ also fixes the homothety factor.

## Conformal transfer formulas

Throughout the paper, $\sigma:=g|_{T\partial M}$ denotes the induced metric on the boundary, and our mean curvature convention is the one for which the boundary of the Euclidean unit ball has positive mean curvature.

**Lemma (Conformal transfer formulas).**

Let $(M^n,g)$, $n\ge 3$, be a compact Riemannian manifold with smooth boundary, let $\phi\in C^\infty(M)$, and set

$$
\widehat g=e^{\frac{2\phi}{n-1}}g.
$$

Then

"`math
R_{\widehat g}
&=e^{-\frac{2\phi}{n-1}}\left(R_g-2\Delta_g\phi-\frac{n-2}{n-1}|\nabla\phi|_g^2\right) \\
&=e^{-\frac{2\phi}{n-1}}\left(R_\phi(g)+\frac{1}{n-1}|\nabla\phi|_g^2\right),
"`

$$
H_{\widehat g}=e^{-\frac{\phi}{n-1}}\bigl(H_g+\partial_\eta\phi\bigr)=e^{-\frac{\phi}{n-1}}B_\phi(g),
$$

and

$$
H_{\widehat g}^2\,\widehat g|_{T\partial M}=B_\phi(g)^2\,g|_{T\partial M}.
$$

*Proof.*

Write $u:=\phi/(n-1)$, so that $\widehat g=e^{2u}g$. The standard conformal change formulas give

$$
R_{\widehat g}=e^{-2u}\bigl(R_g-2(n-1)\Delta_g u-(n-1)(n-2)|\nabla u|_g^2\bigr),
$$

and

$$
H_{\widehat g}=e^{-u}\bigl(H_g+(n-1)\partial_\eta u\bigr).
$$

Substituting $u=\phi/(n-1)$ yields () and (). Equation () is just a rearrangement of (). Finally,

$$
\widehat g|_{T\partial M}=e^{2u}g|_{T\partial M},
$$

so by () we obtain

$$
H_{\widehat g}^2\,\widehat g|_{T\partial M}
=e^{-2u}B_\phi(g)^2\,e^{2u}g|_{T\partial M}
=B_\phi(g)^2\,g|_{T\partial M},
$$

which is ().

∎

**Corollary.**

Under the assumptions of Lemma , if

$$
R_\phi(g)\ge 0 \text{on } M,
 
B_\phi(g)\ge 0 \text{on } \partial M,
$$

then

$$
R_{\widehat g}\ge 0 \text{on } M,
 
H_{\widehat g}\ge 0 \text{on } \partial M.
$$

Moreover, every quadratic-form comparison involving $B_\phi(g)^2g|_{T\partial M}$ is equivalent to the corresponding comparison involving $H_{\widehat g}^2\widehat g|_{T\partial M}$.

*Proof.*

The first claim follows from () and (). The second is exactly ().

∎

## A general transfer principle

*Proof.*

[Proof of Proposition ]
Let

$$
\widehat g=e^{\frac{2\phi}{n-1}}g.
$$

By Corollary , the hypotheses

$$
R_\phi(g)\ge 0,
 
B_\phi(g)\ge 0,
 
B_\phi(g)^2g|_{T\partial M}\ge \mathcal Q
$$

imply

$$
R_{\widehat g}\ge 0,
 
H_{\widehat g}\ge 0,
 
H_{\widehat g}^2\widehat g|_{T\partial M}\ge \mathcal Q.
$$

Hence the assumed rigidity theorem applies to $\widehat g$, so $(M,\widehat g)$ is isometric to a Euclidean domain. In particular,

$$
R_{\widehat g}\equiv 0.
$$

Using (), we obtain

$$
0=e^{-\frac{2\phi}{n-1}}\left(R_\phi(g)+\frac{1}{n-1}|\nabla\phi|_g^2\right).
$$

Since both terms in parentheses are nonnegative, they must both vanish identically. Therefore

$$
R_\phi(g)\equiv 0,
 
|\nabla\phi|_g\equiv 0,
$$

so $\phi$ is constant. Writing $\phi\equiv c$, we have

$$
g=e^{-\frac{2c}{n-1}}\widehat g,
$$

which shows that $g$ is Euclidean up to homothety. If the unweighted rigidity theorem identifies a specific Euclidean model, then $g$ is isometric to the corresponding homothetic copy of that model.

∎

**Remark.**

The boundary tensor $H_g^2\,g|_{T\partial M}$ is invariant under constant rescalings of $g$. The same is therefore true of $B_\phi(g)^2\,g|_{T\partial M}$. This is why the transfer principle naturally yields Euclidean rigidity only up to homothety unless an additional normalization is imposed.

## The three-dimensional weakly convex case

We now apply the transfer principle to the smooth case of Ko--Yao's three-dimensional rigidity theorem for weakly convex domains.

*Proof.*

[Proof of Theorem ]
Set

$$
\widehat g=e^{\phi}g.
$$

Since $n=3$, Corollary gives

$$
R_{\widehat g}\ge 0,
 
H_{\widehat g}\ge 0,
 
H_{\widehat g}^2\,\widehat g|_{T\partial M}=B_\phi(g)^2\,g|_{T\partial M}.
$$

Hence the boundary comparison () is equivalent to

$$
H_{\widehat g}^2\,\widehat g|_{T\partial M}\ge (F|_{\partial M})^*(H_0^2\sigma_0).
$$

Now [KY24] applies to $(M,\widehat g)$, so $(M,\widehat g)$ is isometric to the Euclidean metric on $\Omega$.

Consequently $R_{\widehat g}\equiv 0$, and Proposition implies that $\phi$ is constant. Therefore $g$ differs from the Euclidean metric on $\Omega$ by a positive constant factor, i.e. $(M,g)$ is isometric to the Euclidean metric on a homothetic copy of $\Omega$.

∎

**Remark.**

The same proof also transfers the generalized prism-type case in [KY24]. We restrict to the smooth case here only to keep the statement uncluttered.

## The four-dimensional convex case

We next apply the transfer principle to Ko--Yao's four-dimensional theorem.

*Proof.*

[Proof of Theorem ]
Set

$$
\widehat g=e^{\frac{2\phi}{3}}g.
$$

Since $n=4$, Corollary yields

$$
R_{\widehat g}\ge 0,
 
H_{\widehat g}\ge 0,
 
H_{\widehat g}^2\,\widehat g|_{T\partial M}=B_\phi(g)^2\,g|_{T\partial M}.
$$

Therefore the boundary comparison () becomes

$$
H_{\widehat g}^2\,\widehat g|_{T\partial M}\ge f^*(H_0^2\sigma_0).
$$

By [KY26], the metric $\widehat g$ is isometric to the Euclidean metric on $\Omega$.

As in the proof of Theorem , we conclude from Proposition that $\phi$ is constant. Hence $g$ is Euclidean up to homothety, equivalently $(M,g)$ is isometric to the Euclidean metric on a homothetic copy of $\Omega$.

∎

## Remarks and further directions

**Remark (No new weighted capillary theory is needed).**

The weights appearing in Ko--Yao's capillary minimal slicing construction [KY26] are generated recursively from first eigenfunctions of stability operators on successive slices. They are internal to the slicing scheme and are conceptually different from the external potential $\phi$ entering $R_\phi(g)$. The point of the present note is that the stabilized weakly convex-domain corollaries follow directly from the conformal metric $\widehat g=e^{\frac{2\phi}{n-1}}g$, without the need to build a new ambient weighted capillary theory for $R_\phi(g)$.

**Remark (Relation to other recent weighted rigidity results).**

The literature on weighted or stabilized scalar curvature has developed rapidly in the last two years. Wang [Wan25] proves rigidity theorems in the stabilized setting by weighted hypersurface foliations. Zhou--Zhu [ZZ25] obtain a weighted Llarull theorem, and Wang--Xie [WX25] prove scalar-mean rigidity for a class of conformal metrics extending the known warped-product examples. In a different asymptotically flat setting, McCormick [McC26] shows that weighted positive mass and Penrose-type inequalities can be reduced to the classical unweighted statements by a conformal change. The present note fits into that circle of ideas: it shows that the weakly convex-domain rigidity theorems of Ko--Yao already imply stabilized analogues through the same sort of conformal reduction.

**Remark (Future transfer statements).**

Any future higher-dimensional Ko--Yao type rigidity theorem, or more generally any boundary rigidity theorem whose hypotheses depend only on $R_g$, $H_g$, and the scale-invariant tensor $H_g^2 g|_{T\partial M}$, automatically has a stabilized counterpart by Proposition . The main geometric content is therefore not the weighted extension itself, but identifying which unweighted theorems are formulated in a sufficiently scale-invariant way for the transfer to apply.

## References

- D. Ko and X. Yao,
*Scalar curvature comparison and rigidity of $3$-dimensional weakly convex domains*,
preprint, arXiv:2410.20548, 2024.

- D. Ko and X. Yao,
*Capillary minimal slicing and scalar curvature rigidity*,
preprint, arXiv:2602.21071, 2026.

- B. McCormick,
*Mass, staticity, and a Riemannian Penrose inequality for weighted manifolds*,
preprint, arXiv:2601.19875, 2026.

- Y. Wang,
*Rigidity results involving stabilized scalar curvature*,
preprint, arXiv:2501.06951, 2025.

- J. Wang and Z. Xie,
*Scalar-mean rigidity beyond warped product spaces*,
preprint, arXiv:2512.05769, 2025.

- L. Zhou and G. Zhu,
*A weighted Llarull type theorem and its applications*,
preprint, arXiv:2511.12517, 2025.

