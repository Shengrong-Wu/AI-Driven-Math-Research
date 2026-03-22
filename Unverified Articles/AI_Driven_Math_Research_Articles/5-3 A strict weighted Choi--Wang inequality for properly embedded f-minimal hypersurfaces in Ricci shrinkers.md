## Method Card
- **Short tag:** Choi-Wang equality elimination
- **Full name:** Equality-case elimination for the weighted Choi--Wang bound.
- **Input setting:** A properly embedded f-minimal hypersurface inside a Ricci shrinker with positive weighted Ricci curvature and mild potential-growth control.
- **New object / driver:** The equality analysis of the Reilly-type inequality used in the existing lower-bound proof.
- **Obstruction resolved:** The known estimate only gave lambda_1 >= k/2 and left open whether equality could occur.
- **Expected outputs:** A strict spectral gap lambda_1 > k/2 and, for self-shrinkers in Euclidean space, the explicit corollary lambda_1 > 1/4.
- **Transfer targets:** Weighted spectral rigidity questions on shrinkers and other settings where a Reilly inequality leaves a potentially degenerate equality case.
- **Main technical risk:** The contradiction depends on squeezing every consequence out of the threshold case, especially the affine extension and the weighted Bochner identity.
- **Mechanism type:** spectral cancellation, rigidity, defect control
- **Tags:** Choi-Wang, f-minimal, Ricci-shrinker, spectral-gap, weighted-Bochner, equality-case
- **Method link:** ../methods/choi_wang_equality_elimination.md

**Condensation.** The new viewpoint is that the weighted Choi--Wang inequality should be sharpened not by inventing a new estimate but by dissecting the equality case already hidden in the current proof. This overcomes the obstruction that the available theorem stopped at a non-strict lower bound with no mechanism excluding the threshold. The operative mechanism is to show that equality would force the Reilly extension to be affine, after which the weighted Bochner formula contradicts the positive ambient weighted Ricci geometry. If it works, the spectral estimate becomes strict and yields an immediate quantitative corollary for self-shrinkers.

# A strict weighted Choi--Wang inequality for properly embedded $f$-minimal hypersurfaces in Ricci shrinkers

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

A recent theorem of Conrado and Zhou shows that if $M$ is a properly embedded $f$-minimal hypersurface in a Ricci shrinker $(\overline{M}^{n+1},\bar g,f)$ with $\operatorname{Ric}_{f} = k\bar g$ and a mild potential-growth hypothesis, then the first nonzero eigenvalue of the drifted Laplacian on $M$ satisfies $\lambda_{1}(\Delta_{f}) \ge k/2$. We show that the inequality is in fact strict. The point is that the proof in [CZ25] already produces a one-sided Reilly-type inequality with a nonnegative Hessian term. At the threshold value $\lambda_{1}=k/2$, that term forces the weighted harmonic extension used in their argument to be affine, and the weighted Bochner formula then contradicts the positivity of $\operatorname{Ric}_{f}$. As an immediate corollary, every properly embedded self-shrinker in $\mathbb{R}^{n+1}$ satisfies $\lambda_{1}(\Delta_{f})>1/4$.

## Introduction

Let $(\overline{M}^{n+1},\bar g,f)$ be a complete Ricci shrinker, so that

$$
\operatorname{Ric}_{f} = \operatorname{Ric} + \overline{\nabla}^{2} f = k\bar g
$$

for some $k>0$. If $M^{n}\subset \overline{M}$ is an $f$-minimal hypersurface, the induced drifted Laplacian on $M$ is

$$
\Delta_{f}u = \Delta u - \langle \nabla f,\nabla u\rangle.
$$

In the compact Einstein case $f\equiv \mathrm{const.}$, the first eigenvalue problem for minimal hypersurfaces goes back to the classical work of Choi and Wang [CW83]. In the self-shrinker setting, Ding and Xin obtained the compact lower bound $\lambda_{1}\ge 1/4$ [DX13], and Brendle and Tsiamis extended the lower bound to properly embedded noncompact self-shrinkers [BT24]. More recently, Conrado and Zhou proved a Ricci-shrinker version: under a mild condition on the potential, the spectrum of $\Delta_f$ is discrete and

$$
\lambda_{1}(\Delta_f)\ge \frac{k}{2}.
$$

See [CZ25]. The purpose of this note is to show that equality cannot occur.

**Why this target was chosen.**

The recent proof in [CZ25] contains more information than the published theorem statement uses. After choosing one side of the embedded hypersurface, their argument yields a one-sided integral inequality whose left-hand side contains the nonnegative term $\int |\overline{\nabla}^{2} \Phi|^{2}$, where $\Phi$ is the weighted harmonic extension of a first eigenfunction. At the threshold value $\lambda_{1}=k/2$, this term forces $\overline{\nabla}^{2}\Phi\equiv 0$. The weighted Bochner formula then rules out the existence of such a nonconstant affine weighted-harmonic function on a domain with positive Bakry--Emery Ricci curvature. Thus the proof mechanism itself already suggests the stronger theorem.

Our main result is the following strict version of the Conrado--Zhou estimate.

**Theorem.**

Let $M^{n}$ be an $f$-minimal properly embedded hypersurface in a Ricci shrinker $(\overline{M}^{n+1},\bar g,f)$ such that

$$
\operatorname{Ric}_{f} = k\bar g,
 k>0.
$$

Assume that there exists a constant $0\le \varepsilon < 2k$ such that

$$
\overline{R}+2\,\operatorname{tr}_{M^{\perp}}\overline{\nabla}^{2} f \ge -\varepsilon f
$$

outside a compact set of $M$. Then the spectrum of $\Delta_f$ on $L^{2}(M,e^{-f}\,d\mu)$ is discrete and the first nonzero eigenvalue satisfies

$$
\lambda_{1}(\Delta_f)>\frac{k}{2}.
$$

The Euclidean self-shrinker case is immediate.

**Corollary.**

Let $M^{n}\subset \mathbb{R}^{n+1}$ be a properly embedded self-shrinker. Then the spectrum of the drifted Laplacian

$$
\Delta_f = \Delta - \frac12\langle x,\nabla\cdot\rangle,
 f=\frac{|x|^{2}}{4},
$$

is discrete and

$$
\lambda_{1}(\Delta_f)>\frac14.
$$

We also obtain the following reformulation, which is really the geometric content of the note.

**Corollary.**

Under the hypotheses of Theorem , equality in the lower bound of Conrado and Zhou cannot occur.

## Background and Preliminaries

We briefly record the ingredients we need from [CZ25]. Let $M\subset \overline{M}$ be as in Theorem . Conrado and Zhou prove two statements relevant here.

First, under exactly the hypothesis appearing in Theorem , the spectrum of $\Delta_f$ on $L^{2}(M,e^{-f}\,d\mu)$ is discrete [CZ25]. In particular, there exists a nonconstant smooth eigenfunction $\varphi$ satisfying

$$
\Delta_f \varphi + \lambda_{1}(\Delta_f)\,\varphi = 0.
$$

Second, after normalizing to the case $\operatorname{Ric}_{f} = \frac12\bar g$, their proof constructs a weighted harmonic extension $\Phi$ of $\varphi$ into the complement of $M$ and derives a one-sided Reilly-type inequality. The precise form we need is isolated in Proposition below.

We will also use the weighted Bochner formula on $(\overline{M},\bar g,f)$:

$$
\frac12\overline{\Delta}_{f} |\overline{\nabla} u|^{2} = |\overline{\nabla}^{2} u|^{2} + \langle \overline{\nabla} u,\overline{\nabla} \overline{\Delta}_{f} u\rangle + \operatorname{Ric}_{f}(\overline{\nabla} u,\overline{\nabla} u)
$$

for every smooth function $u$.

Finally, note the homothetic scaling convention. If $\tilde g = c\bar g$ with $c>0$, then

$$
\operatorname{Ric}_{f} = k\bar g = \frac{k}{c}\,\tilde g,
 
\lambda_{1}^{\tilde g}(\Delta_f)=\frac{1}{c}\lambda_{1}^{\bar g}(\Delta_f).
$$

Therefore Theorem is equivalent to the normalized case $k=\frac12$.

## Main Identities and Structural Lemmas

The first lemma is the abstract equality obstruction.

**Lemma.**

Let $\Omega$ be a connected open set in a weighted manifold $(N,g,e^{-f}d\nu)$ with

$$
\operatorname{Ric}_{f} \ge \kappa g
$$

on $\Omega$ for some $\kappa>0$. If $\Phi\in C^{\infty}(\Omega)$ satisfies

$$
\Delta_f \Phi = 0
 \text{and} 
\nabla^{2}\Phi \equiv 0
$$

on $\Omega$, then $\Phi$ is constant on $\Omega$.

*Proof.*

Since $\nabla^{2}\Phi\equiv 0$, the vector field $\nabla\Phi$ is parallel, hence $|\nabla\Phi|^{2}$ is constant on $\Omega$. Therefore $\Delta_f |\nabla\Phi|^{2}=0$. Applying the weighted Bochner formula () to $\Phi$ gives

$$
0
= \frac12\Delta_f |\nabla\Phi|^{2}
= |\nabla^{2}\Phi|^{2} + \langle \nabla\Phi,\nabla\Delta_f\Phi\rangle + \operatorname{Ric}_{f}(\nabla\Phi,\nabla\Phi)
\ge \kappa |\nabla\Phi|^{2}.
$$

Hence $\nabla\Phi\equiv 0$ on $\Omega$, and thus $\Phi$ is constant.

∎

The next proposition is exactly the inequality extracted from the proof of [CZ25].

**Proposition (Conrado--Zhou one-sided inequality).**

Assume that $(\overline{M}^{n+1},\bar g,f)$ is a Ricci shrinker with $\operatorname{Ric}_{f} = \frac12\bar g$, and let $M^{n}\subset \overline{M}$ be a properly embedded $f$-minimal hypersurface satisfying the hypothesis of Theorem . Let $\varphi$ be a first eigenfunction of $\Delta_f$ on $M$, with eigenvalue $\lambda_{1}=\lambda_{1}(\Delta_f)$, and let $\Phi$ be the weighted harmonic extension constructed in [CZ25]. Then for one of the two connected components $\Omega$ of $\overline{M}\setminus M$ one has

$$
\int_{\Omega}|\overline{\nabla}^{2} \Phi|^{2}\,e^{-f}\,d\nu + (1-4\lambda_{1})\int_{\Omega}|\overline{\nabla} \Phi|^{2}\,e^{-f}\,d\nu \le 0.
$$

*Proof.*

In the compact case, this is exactly equation (5.3) in [CZ25] after choosing the side for which the boundary term $\int_{M}B(\nabla\varphi,\nabla\varphi)\,e^{-f}\,d\mu$ is nonpositive. In the noncompact case, [CZ25] proves the corresponding cutoff inequality and then passes to the limit by dominated convergence and monotone convergence; the resulting limiting inequality is again ().

∎

## Main Result

We now prove the strict lower bound.

*Proof.*

[Proof of Theorem ]
As recalled above, the discreteness of the spectrum is already part of [CZ25]. It remains to show strictness of the eigenvalue bound.

By homothetic rescaling, it is enough to treat the normalized case

$$
\operatorname{Ric}_{f} = \frac12\bar g.
$$

We split the proof into two cases.

*Case 1: $\overline{M*$ is simply connected.}
Since $\overline{M}$ is simply connected and $M$ is properly embedded, $M$ separates $\overline{M}$ into two connected components; compare [CZ25]. Let $\varphi$ be a nonconstant first eigenfunction of $\Delta_f$ on $M$, and let $\Phi$ be the weighted harmonic extension furnished by the proof of [CZ25]. By Proposition , there exists a component $\Omega$ of $\overline{M}\setminus M$ such that

$$
\int_{\Omega}|\overline{\nabla}^{2} \Phi|^{2}\,e^{-f}\,d\nu + (1-4\lambda_{1})\int_{\Omega}|\overline{\nabla} \Phi|^{2}\,e^{-f}\,d\nu \le 0.
$$

Conrado and Zhou use this inequality to conclude $\lambda_{1}\ge 1/4$. Suppose for contradiction that $\lambda_{1}=1/4$. Then the second term vanishes and we obtain

$$
\int_{\Omega}|\overline{\nabla}^{2} \Phi|^{2}\,e^{-f}\,d\nu \le 0.
$$

Hence $\overline{\nabla}^{2} \Phi\equiv 0$ on $\Omega$. Since also $\overline{\Delta}_{f}\Phi=0$ on $\Omega$, Lemma implies that $\Phi$ is constant on $\Omega$. Therefore its trace $\Phi|_{M}=\varphi$ is constant on $M$, contradicting the choice of $\varphi$. Thus $\lambda_{1}>1/4$.

*Case 2: $\overline{M*$ is not simply connected.}
By [CZ25], a Ricci shrinker has finite fundamental group, so its universal cover

$$
\pi : \widehat{\overline{M}} \to \overline{M}
$$

is finite-sheeted. Let $\widehat{M}=\pi^{-1}(M)$ and $\widehat{f}=f\circ\pi$. Then $(\widehat{\overline{M}},\widehat{g},\widehat{f})$ is again a Ricci shrinker with $\operatorname{Ric}_{f} = \frac12\widehat g$, and $\widehat{M}$ is a properly embedded $\widehat f$-minimal hypersurface satisfying the same normal-bundle Hessian hypothesis. By Case 1,

$$
\lambda_{1}(\widehat{\Delta}_{\widehat f})>\frac14.
$$

Now let $u\in C^{\infty}(M)$ with $\int_{M}u\,e^{-f}\,d\mu =0$ and $u\not\equiv 0$. Its pullback $\widehat u=u\circ \pi$ satisfies $\int_{\widehat M}\widehat u\,e^{-\widehat f}d\widehat\mu=0$, and because $\pi|_{\widehat M}$ is a local isometry with finitely many sheets,

$$
\frac{\int_{\widehat M}|\widehat\nabla \widehat u|^{2}e^{-\widehat f}d\widehat\mu}{\int_{\widehat M}\widehat u^{2}e^{-\widehat f}d\widehat\mu}
=
\frac{\int_{M}|\nabla u|^{2}e^{-f}\,d\mu}{\int_{M}u^{2}e^{-f}\,d\mu}.
$$

Taking the infimum over all admissible $u$ shows

$$
\lambda_{1}(\Delta_f)\ge \lambda_{1}(\widehat{\Delta}_{\widehat f})>\frac14.
$$

This proves the normalized theorem. Scaling back gives

$$
\lambda_{1}(\Delta_f)>\frac{k}{2}.
$$

∎

**Corollary (Equality cannot occur).**

Under the hypotheses of Theorem , the equality case $\lambda_{1}(\Delta_f)=k/2$ is impossible.

*Proof.*

This is just the contrapositive form of Theorem .

∎

**Corollary (Euclidean self-shrinkers).**

Let $M^{n}\subset \mathbb{R}^{n+1}$ be a properly embedded self-shrinker. Then

$$
\lambda_{1}(\Delta_f)>\frac14.
$$

*Proof.*

In the Gaussian shrinker $(\mathbb{R}^{n+1},g_{\mathrm{eucl}},f)$ with $f=|x|^{2}/4$, one has $\operatorname{Ric}_{f} = \frac12 g_{\mathrm{eucl}}$, $\overline R=0$, and $\overline{\nabla}^{2} f = \frac12 g_{\mathrm{eucl}}$. Since $M$ is a hypersurface,

$$
\overline R + 2\,\operatorname{tr}_{M^{\perp}}\overline{\nabla}^{2} f = 1.
$$

Thus the hypothesis of Theorem holds with $k=\frac12$ and $\varepsilon=0$.

∎

## Proofs

For completeness, we record the short logical structure of the proof in its most compressed form. After normalizing to $k=1/2$, the proof of [CZ25] gives the one-sided inequality

$$
\int_{\Omega}|\overline{\nabla}^{2} \Phi|^{2}\,e^{-f}\,d\nu + (1-4\lambda_{1})\int_{\Omega}|\overline{\nabla} \Phi|^{2}\,e^{-f}\,d\nu \le 0.
$$

At equality $\lambda_{1}=1/4$, one gets $\overline{\nabla}^{2}\Phi\equiv 0$. Since $\overline{\Delta}_{f}\Phi=0$, the weighted Bochner formula forces $\overline{\nabla}\Phi\equiv 0$, hence $\Phi$ is constant, contradicting the fact that its boundary trace is a first nonconstant eigenfunction. This is the entire mechanism.

## Examples, Equality Cases, or Sharpness Remarks

Theorem is a strictness result, not an optimal lower-bound theorem. In particular, the constant $k/2$ (or $1/4$ in the Gaussian normalization) is still not expected to be sharp for all examples. The theorem only shows that the threshold value produced by the recent Reilly inequality is unattainable.

Corollary is therefore the sharpest conclusion directly supported by the current argument. Any quantitative gap above $k/2$ would require additional input beyond the equality obstruction furnished by Lemma .

## Remarks and Open Questions

**Remark.**

The note should be viewed as an equality-obstruction sharpening of [CZ25], rather than as a new general theory of weighted Choi--Wang inequalities. The key point is that the recent proof already contains the decisive nonnegative Hessian term; the weighted Bochner formula simply shows that the threshold value cannot be attained.

**Remark.**

A natural next question is whether a similar strictness or rigidity statement can be extracted from the weighted Choi--Wang theorem of Fujitani and Sakurai [FS24]. Their proof uses a different weighted connection and they explicitly note a technical obstruction to extending the result to a weaker setting, so the corresponding equality theory appears subtler.

**Remark.**

Another open problem is quantitative: under additional curvature or topology assumptions, can one upgrade

$$
\lambda_{1}(\Delta_f)>\frac{k}{2}
$$

to a uniform gap

$$
\lambda_{1}(\Delta_f)\ge \frac{k}{2}+c
$$

with $c>0$ depending on geometric data? The present argument does not produce such a constant.

## References

- S. Brendle and R. Tsiamis,
*Eigenvalue estimates on shrinkers*,
arXiv:2402.11803, 2024.

- H. I. Choi and A. N. Wang,
*A first eigenvalue estimate for minimal hypersurfaces*,
J. Differential Geom. **18** (1983), 559--562.

- F. Conrado and D. Zhou,
*An eigenvalue estimate for self-shrinkers in a Ricci shrinker*,
Adv. Nonlinear Stud. **25** (2025), no. 4, 1032--1046; arXiv:2505.03499.

- Q. Ding and Y. L. Xin,
*Volume growth, eigenvalue and compactness for self-shrinkers*,
Asian J. Math. **17** (2013), 443--456.

- Y. Fujitani and Y. Sakurai,
*Geometric analysis on weighted manifolds under lower $0$-weighted Ricci curvature bounds*,
arXiv:2408.15744, 2024.

- R. Reilly,
*Applications of the Hessian operator in a Riemannian manifold*,
Indiana Univ. Math. J. **26** (1977), 459--472.

