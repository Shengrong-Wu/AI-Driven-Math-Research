## Method Card
- **Short tag:** weighted Teukolsky flux sharpening
- **Full name:** Weighted Teukolsky flux sharpening for Hermitian ALF mode stability.
- **Input setting:** A Hermitian non-Kähler ALF gravitational instanton with a linearized vacuum perturbation and explicit inverse Weyl decay at infinity.
- **New object / driver:** The weighted Teukolsky field χ together with the Psi_2-weighted boundary flux identity.
- **Obstruction resolved:** The published argument used standard ALF decay and did not isolate the exact control needed for the inverse Weyl factor in the boundary term.
- **Expected outputs:** Vanishing of the linearized extreme Weyl scalar under the weaker threshold gamma > 1/2, with a sharp weighted reformulation of mode stability.
- **Transfer targets:** Other positive-flux or Teukolsky-based stability arguments on special noncompact Einstein backgrounds.
- **Main technical risk:** The conclusion is sharp in the boundary decay, so any slip in the asymptotics of Psi_2^-1 or the linearized Weyl estimate breaks the flux closure.
- **Mechanism type:** boundary-layer, spectral cancellation, asymptotic matching
- **Tags:** weighted-Teukolsky, ALF-instanton, boundary-flux, mode-stability, Hermitian, asymptotic
- **Method link:** ../methods/weighted_teukolsky_flux_sharpening.md

**Condensation.** The new viewpoint is that Hermitian ALF mode stability is fundamentally a weighted boundary-flux problem for the Teukolsky field, not just a theorem about the classical r^-1 perturbation class. This overcomes the apparent decay barrier by identifying the true obstruction: rigorous control of the inverse Weyl weight in the boundary term. The operative mechanism is a positive-flux identity combined with exact asymptotic bookkeeping for χ and Psi_2^-1. If it works, it yields vanishing of the linearized extreme Weyl scalar under the sharp weaker threshold gamma > 1/2 and gives a cleaner template for weighted ALF stability arguments.

# A weighted mode-stability theorem for Hermitian ALF gravitational instantons

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

Recent work on gravitational instantons has advanced along several fronts at once: explicit construction, classification by asymptotic type and symmetry, and increasingly sharp rigidity results. The Hermitian ALF class sits in a particularly narrow corner of this landscape. It is rigid enough to admit explicit conformally Kähler structure and Teukolsky-type identities, but still flexible enough that precise perturbative questions remain meaningful. In this note we isolate one such question. Andersson--Araneda--Dahl proved mode stability for Hermitian non-Kähler ALF instantons under the standard ALF decay $h=O^\ast(r^{-1})$ for the perturbation. We show that the positive-flux argument actually yields a stronger weighted result under the weaker hypothesis $\nabla^k h=O(r^{-\gamma-k})$ for $0\leq k\leq 3$ and every $\gamma>\tfrac12$, provided one makes explicit the precise asymptotic $\Psi_2^{-1}=O(r^3)$ for the background Weyl scalar. This extra input is exactly what is needed to control the factor $\Psi_2^{-4/3}$ in the boundary term. The proof clarifies the analytic niche of the Hermitian ALF theory: once the special geometry is fixed, the decisive issue is not a new operator, but the exact asymptotic bookkeeping that turns a qualitative mode-stability theorem into a sharp weighted statement.

## 1. Introduction

Hermitian gravitational instantons occupy a distinctive place in four-dimensional Einstein geometry. They are simultaneously Einstein metrics, complex surfaces after a conformal change, and examples of complete noncompact geometries whose asymptotic structure is sufficiently rigid to support delicate spinorial identities. This combination is rare. Many active directions in current instanton research emphasize either the global geometry of large families or the construction of new examples. By contrast, the linear theory of Hermitian ALF instantons remains a much smaller literature, and the present paper belongs to that smaller circle.

The reason this niche is worth isolating is structural rather than sociological. In the Hermitian ALF setting, the geometry is special enough that linearized curvature can be encoded in a gauge-invariant Teukolsky field. That is already an exceptional feature from the point of view of Riemannian Einstein geometry. Once this structure is available, one can ask a sharper question than mere vanishing: exactly which boundary decay is needed for the positive-energy identity to close? The answer turns out to be more subtle than a first reading of the published proof suggests.

The immediate background is the paper of Andersson, Araneda, and Dahl [AAD]. They proved that for a Hermitian non-Kähler ALF gravitational instanton, every ALF vacuum perturbation $h$ with the standard decay

$$
\nabla^k h = O(r^{-1-k}) \qquad (k\geq 0)
$$

has vanishing linearized extreme Weyl scalar $\vartheta\Psi_0$. Their argument is built from two ingredients:

- a Teukolsky equation for the weighted curvature scalar $\chi=\dot\Omega^{-1}\vartheta\Psi_0$, and
- a positive flux identity whose boundary term is evaluated on large ALF coordinate spheres.

The original proof uses the standard ALF decay of $h$ to make that boundary term vanish. The natural question, already implicit in the research notes that motivated this article, is whether the exponent $1$ is optimal for the method.

The short answer is no: the boundary method works under any exponent strictly larger than $\tfrac12$. The longer answer is the real point of this note. A line-by-line verification shows that one must be careful with the inverse Weyl weight in the flux identity. The estimate $\Psi_2=O(r^{-3})$ does not by itself imply $\Psi_2^{-4/3}=O(r^4)$. To obtain a rigorous weighted theorem, one must state explicitly the additional asymptotic

$$
\Psi_2^{-1}=O(r^3).
$$

Once that is done, the weighted refinement is clean and the threshold $\gamma>\tfrac12$ emerges exactly from the area growth of the ALF boundary and the decay of the boundary density.

The present note therefore does two things at once. First, it sharpens the decay assumption in the ALF mode-stability theorem. Second, and more importantly from the point of view of mathematical exposition, it isolates the only extra asymptotic ingredient really used by the proof. This is a modest contribution in scale, but it is a precise one: it takes a recent theorem in a narrow subfield and records the exact analytic threshold carried by the underlying identity.

Our main result is the following.

**Theorem.** Let $(M,g,J)$ be a Hermitian non-Kähler ALF gravitational instanton. Assume that on the ALF end

$$
\Psi_2>0,
\qquad
\Psi_2^{-1}=O(r^3).
$$

Let $h$ be a linearized vacuum perturbation of $g$, so that $\vartheta\Ric=0$. Suppose that for some $\gamma>\tfrac12$,

$$
\nabla^k h = O(r^{-\gamma-k}),
\qquad
0\leq k\leq 3.
$$

Then the linearized extreme Weyl scalar vanishes:

$$
\vartheta\Psi_0=0.
$$

The proof is short once the statement is written in the correct form. The exact linearized Weyl formula gives

$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0=O(r^{-2-\gamma}),
\qquad
\nabla\chi=O(r^{-3-\gamma}).
$$

The conformally Kähler structure implies that the Lee form satisfies $f=O(r^{-1})$. Since the $P_a$-part of the GHP connection is purely imaginary, only the real part of the boundary integrand matters, and one obtains

$$
\Psi_2^{-4/3}\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)=O(r^{-1-2\gamma}).
$$

The boundary of an ALF ball has area $O(R^2)$, hence the boundary flux is $O(R^{1-2\gamma})$. The flux therefore vanishes precisely when $\gamma>\tfrac12$.

This weighted theorem sits in a very specific niche of the current literature. The surrounding field is moving quickly: the explicit geometry of Hermitian instantons has been clarified by work of Biquard, Gauduchon, LeBrun, Li, and others [BG], [BGL], [Li]; the linear theory of Hermitian ALF instantons was sharpened by the mode-stability theorem of [AAD]; and the deformation picture has recently been clarified further by the infinitesimal rigidity results of Araneda and Andersson [AA26]. At the same time, the broader instanton landscape has expanded beyond the Hermitian setting through new constructions, for example the harmonic-map approach of Li and Sun [LS25]. Against that backdrop, the present result is intentionally focused: it optimizes the decay threshold in one linear identity on one highly structured class of backgrounds.

The paper is organized as follows. Section 2 explains the current research landscape and why weighted mode stability is a genuinely narrow but useful problem. Section 3 compares the present theorem with the original mode-stability theorem and isolates the exact point at which the weighted refinement enters. Section 4 collects the geometric and analytic input from the Hermitian ALF setting. Section 5 propagates the perturbation decay to the Teukolsky field and isolates the boundary density estimate. Section 6 proves the main theorem and records two immediate corollaries. Section 7 discusses examples and neighboring asymptotic regimes. Section 8 closes with a discussion of the endpoint exponent, the inverse Weyl asymptotic, and several natural open directions.

## 2. Current research landscape and the niche of the present result

### 2.1. Three active threads

The recent literature around gravitational instantons is developing along at least three distinct threads. The first is the explicit and classificatory thread. On the Hermitian side, this includes the toric and conformally Kähler descriptions developed by Biquard and Gauduchon [BG], the Weyl-curvature analysis of Biquard, Gauduchon, and LeBrun [BGL], and related classification results for conformally Kähler instantons [Li]. In this part of the subject, the major questions concern which asymptotic types occur, how much symmetry must be assumed, and how strongly conformal Kähler geometry constrains the underlying Einstein metric.

The second thread is the perturbative and rigidity thread. The mode-stability paper [AAD] shows that Hermitian ALF instantons admit a positive-definite Teukolsky operator on the relevant weighted curvature scalar. More recently, Araneda and Andersson proved infinitesimal rigidity for Hermitian gravitational instantons under natural boundary conditions [AA26]. That work changes the role of linear theory in the subject. Instead of being merely preparatory to a future deformation theory, linear analysis now becomes an end in itself: one can ask exactly which weighted hypotheses are needed for a given gauge-invariant statement, because the ambient moduli picture is already much more constrained.

The third thread is the expansion of the non-Hermitian landscape. The harmonic-map constructions of Li and Sun [LS25] produce infinitely many new gravitational instantons on new diffeomorphism types. This enlarges the global instanton universe dramatically, but it also makes the Hermitian ALF class more, not less, interesting. In a broader and more flexible landscape, any theorem that exploits the special Hermitian structure becomes more sharply identifiable. One sees more clearly which parts of the analysis are genuinely special and which might survive in a more general setting.

### 2.2. Why the present problem is narrow

Within that broader context, the result of this paper is intentionally local in ambition. It does not produce new instantons, classify a new asymptotic type, or build a moduli space. It sharpens one exponent in one already established theorem. Yet this is exactly the sort of small theorem that becomes meaningful in a mature corner of the subject. Once the geometry is explicit enough and the linearized operator is understood well enough, the next honest question is often not how to generalize wildly, but how to identify the exact threshold built into the proof already on the table.

That is the sense in which weighted mode stability is a niche problem. The Hermitian ALF class is itself a narrow class. Inside that class, the Teukolsky scalar $\chi$ is a very specific gauge-invariant curvature quantity. Inside that linear theory, the proof of mode stability depends on a very specific boundary identity. And inside that identity, the whole improvement turns on a single balance:

$$
R^2 \cdot R^{-1-2\gamma}\to 0.
$$

This note is therefore small in scope but sharp in focus. It isolates the exact exponent at which the positive-flux argument starts and stops working.

### 2.3. Why the problem is still useful

There are at least three reasons such a refinement is worth recording. First, it clarifies the analytical content of the original theorem. The standard ALF decay class is geometrically natural, but the proof does not need the full force of that class. Second, it identifies the only place where a stronger asymptotic assumption on the background is required. Third, it puts the Hermitian ALF theory in a more transparent relation to the current rigidity literature: once integrability and infinitesimal rigidity are better understood, weighted vanishing theorems become useful as precise curvature-level statements rather than as merely auxiliary lemmas.

From that point of view, the present paper should be read less as a generalization by brute force and more as a cleanup of the proof architecture. The geometry already supplies a distinguished scalar $\Psi_2$, a distinguished weighted field $\chi$, and a distinguished flux identity. The task is then to state the minimal hypotheses under which those ingredients force vanishing. That task is narrow, but it is mathematically legitimate and, in this setting, genuinely informative.

## 3. Comparison with the original mode-stability theorem

This section makes explicit what changes and what does not change relative to [AAD]. The point is simple but worth recording: the weighted refinement proved here is not based on a new equation, a new coercive identity, or a new geometric structure. It is obtained by leaving almost all of the original proof intact and replacing only the final boundary estimate by a sharper weighted one.

### 3.1. What remains unchanged

The ALF part of Theorem 1.4 of [AAD] starts from a linearized vacuum perturbation $h$ and forms the weighted scalar

$$
\chi=\dot\Omega^{-1}\vartheta\Psi_0.
$$

The proof then proceeds through the following chain:

1. Corollary 2.4 of [AAD] implies that $\chi$ satisfies the Teukolsky equation.
2. Lemma 2.6 of [AAD] gives the positive flux identity.
3. Lemma 3.1 of [AAD] gives positivity of $\Psi_2$ on Hermitian non-Kähler ALF instantons.
4. The boundary integral is shown to vanish as the radius tends to infinity.

Only the fourth step depends on the precise perturbation decay. The first three steps are imported unchanged into the present note.

**Proposition.** Assume the geometric hypotheses of the main theorem, and let $h$ be a linearized vacuum perturbation. If

$$
\lim_{R\to\infty}
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
=0,
$$

then $\vartheta\Psi_0=0$.

**Proof.** Apply the flux identity on $V_R$ and pass to the limit. The boundary term disappears by assumption, so one obtains

$$
0=
\int_M\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$

Since $\Psi_2>0$ by Lemma 3.1 of [AAD], the integrand is pointwise nonnegative and must vanish identically. In particular $\chi\equiv 0$, hence $\vartheta\Psi_0=0$.

This proposition is the conceptual reduction behind the whole paper: once the boundary term is understood, mode stability follows formally from the published identity.

### 3.2. What actually changes

The original theorem assumes the standard ALF decay $h=O^\ast(r^{-1})$. Our refinement replaces that by the weaker hypothesis

$$
\nabla^k h = O(r^{-\gamma-k}),
\qquad
0\leq k\leq 3.
$$

If one propagates the decay naively through the linearized Weyl formula, one is led to the heuristic count

$$
\chi=O(r^{-2-\gamma}),
\qquad
n^aC_a\chi=O(r^{-3-\gamma}),
\qquad
\Psi_2^{-4/3}=O(r^4),
$$

and therefore to the boundary estimate

$$
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
=O(R^{1-2\gamma}).
$$

This is exactly the count that suggests the threshold $\gamma>\tfrac12$.

The role of the present paper is to make that heuristic rigorous without overclaiming. Two points require care. First, one has to use the exact linearized Weyl formula rather than dimensional reasoning alone. Second, the factor $\Psi_2^{-4/3}$ is only controlled once one assumes the inverse asymptotic

$$
\Psi_2^{-1}=O(r^3).
$$

With that correction in place, the heuristic becomes a proof.

### 3.3. Why the refinement is genuinely sharp for this method

The weighted exponent $\tfrac12$ is not an artifact of a crude estimate. It is the exponent forced by the geometry of the ALF end and the structure of the flux identity. The boundary has area $O(R^2)$. The density in Proposition 5.4 below decays like $O(R^{-1-2\gamma})$. Multiplying the two shows that the boundary flux is exactly $O(R^{1-2\gamma})$. There is no slack left in that power count. In this sense, the present theorem identifies the sharp exponent for the *known* positive-flux method even though it leaves the true endpoint question open.

## 4. Geometric and analytic setup

### 4.1. ALF background geometry

We use the notation of [AAD]. In particular, $r$ is an ALF radius function on the unique end of $(M,g)$. For the argument below, the only geometric facts we use are the standard ALF area and curvature estimates:

$$
\Area(\partial V_R)=O(R^2),
\qquad
|\Rm|=O(r^{-3}),
\qquad
|\nabla \Rm|=O(r^{-4}),
$$

where $V_R=\{r<R\}$ for $R$ sufficiently large. The first estimate reflects the cubic volume growth of ALF spaces, while the second and third are the curvature-decay properties relevant to the Weyl spinor. In the explicit Hermitian ALF families these estimates are standard; for the background used in the mode-stability theorem they are part of the asymptotic structure summarized in [AAD] and in the conformally Kähler analysis of [BGL].

**Definition.** Let $t$ be a tensor field on an ALF end. We write

$$
t=O(r^\alpha)
$$

if $|t|\leq C r^\alpha$ for $r$ sufficiently large, and

$$
t=O^\ast(r^\alpha)
$$

if $\nabla^k t = O(r^{\alpha-k})$ for every integer $k\geq 0$.

The point of the main theorem is that one does not need the full $O^\ast(r^{-\gamma})$ scale for all derivatives. Only the bounds up to order three enter the proof. This is already a useful refinement of the bookkeeping in the original theorem.

### 4.2. Spinorial data and the Teukolsky field

Let $\Psi_{ABCD}$ be the unprimed Weyl spinor and $\Psi_0,\Psi_1,\Psi_2$ its components with respect to the Hermitian spin dyad. The scalar $\Psi_2$ is real and, on a Hermitian non-Kähler ALF instanton, strictly positive by Lemma 3.1 of [AAD]. The linearized Weyl spinor is governed by the exact formula

$$
\vartheta\Psi_{ABCD}
=
\frac12 \nabla_{A'(A}\nabla_{B'}{}_{B} h_{CD)}{}^{A'B'}
+\frac14(\operatorname{tr}_g h)\Psi_{ABCD}.
$$

Let $\dot\Omega$ be the auxiliary constant conformal factor appearing in Corollary 2.4 of [AAD], and define

$$
\chi:=\dot\Omega^{-1}\vartheta\Psi_0.
$$

Then $\chi$ has GHP weights $(-3,4)$ and satisfies the Teukolsky equation

$$
L[\chi]=0.
$$

The analytic advantage of the Hermitian setting is that the curvature perturbation can be expressed in terms of this distinguished weighted scalar, and the corresponding operator $L$ admits a positive identity.

### 4.3. The flux identity and the inverse-weight issue

If $V\subset M$ is a compact domain with smooth boundary, the main identity of [AAD] reads

$$
0
=
\int_{\partial V}\Psi_2^{-4/3}\,\overline{\chi}\,(n^a C_a\chi)\,d\Sigma
-
\int_V \Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$

This is the source of mode stability. The bulk term is nonnegative because $\Psi_2>0$, so vanishing of the boundary term forces $\chi\equiv 0$.

The catch is the prefactor $\Psi_2^{-4/3}$. From the ALF decay $|\Rm|=O(r^{-3})$ one gets only $\Psi_2=O(r^{-3})$. That bound is one-sided. It does not imply any useful upper control on $\Psi_2^{-4/3}$. For the weighted argument one therefore needs a genuine inverse asymptotic, namely

$$
\Psi_2^{-1}=O(r^3).
$$

This is the only additional assumption introduced in the main theorem, and it pinpoints the exact place where the original proof must be read with care.

### 4.4. The Lee form

The conformally Kähler character of Einstein--Hermitian geometry is the other structural input. By Remark 2.1(5) of [AAD], there exists a scalar $\varphi$ of weights $(-1,0)$ such that

$$
C_a\varphi=0,
\qquad
\varphi\propto \Psi_2^{1/3}.
$$

If $f_a$ denotes the Lee form, then the scalar-weight formula for $C_a$ gives

$$
0=C_a\varphi=\nabla_a\varphi-f_a\varphi,
\qquad\text{hence}\qquad
f_a=\nabla_a\log\varphi.
$$

This relation is the bridge from the Weyl asymptotic to the boundary estimate: once one knows both $\nabla\Psi_2=O(r^{-4})$ and $\Psi_2^{-1}=O(r^3)$, the Lee form is automatically $O(r^{-1})$.

**Remark.** The logical structure of the paper is now transparent. The decay of $h$ controls $\chi$ through the linearized Weyl formula. The geometry controls $f$ through the equation $C_a\varphi=0$. The inverse asymptotic of $\Psi_2$ controls the prefactor in the flux identity. Once these three pieces are available, the proof is a single boundary estimate.

## 5. Weighted estimates for the Teukolsky field

We now propagate the perturbation decay to the gauge-invariant field $\chi$ and isolate the exact boundary density appearing in the flux identity.

**Lemma.** Under the hypotheses of the main theorem,

$$
\chi=O(r^{-2-\gamma}),
\qquad
\nabla\chi=O(r^{-3-\gamma}).
$$

**Proof.** By the linearized Weyl formula, $\vartheta\Psi_{ABCD}$ is the sum of a second-derivative term in $h$ and a zeroth-order term $(\operatorname{tr}_g h)\Psi_{ABCD}$. The weighted decay hypothesis gives

$$
\nabla^2 h = O(r^{-2-\gamma}),
\qquad
h = O(r^{-\gamma}).
$$

Using the ALF curvature estimate, we have $\Psi_{ABCD}=O(r^{-3})$, so the lower-order term satisfies

$$
(\operatorname{tr}_g h)\Psi_{ABCD}=O(r^{-3-\gamma}).
$$

The leading term is therefore $O(r^{-2-\gamma})$, and the linearized Weyl formula yields

$$
\vartheta\Psi_{ABCD}=O(r^{-2-\gamma}).
$$

Contracting with the Hermitian dyad and multiplying by the constant factor $\dot\Omega^{-1}$ does not change the decay order, so $\chi=O(r^{-2-\gamma})$.

To obtain the derivative estimate, differentiate the linearized Weyl formula once. The term involving third derivatives of $h$ is $O(r^{-3-\gamma})$ by hypothesis. The derivative of the curvature term is $O(r^{-4-\gamma})$ because $\nabla\Rm=O(r^{-4})$ on the ALF end. Hence

$$
\nabla(\vartheta\Psi_{ABCD})=O(r^{-3-\gamma}),
$$

and therefore $\nabla\chi=O(r^{-3-\gamma})$.

**Lemma.** Under $\Psi_2^{-1}=O(r^3)$, the Lee form satisfies

$$
f=O(r^{-1}).
$$

**Proof.** Since $\varphi\propto \Psi_2^{1/3}$, we have

$$
f_a=\nabla_a\log\varphi=\frac13 \nabla_a\log\Psi_2.
$$

The ALF curvature estimate gives $|\nabla\Psi_2|=O(r^{-4})$. The inverse asymptotic gives $|\Psi_2|^{-1}=O(r^3)$. Therefore

$$
|f|
\leq \frac13 |\nabla\Psi_2|\,|\Psi_2|^{-1}
=O(r^{-4})O(r^3)
=O(r^{-1}).
$$

The next observation is what makes the boundary estimate simpler than a full GHP analysis might suggest.

**Lemma.** For the weighted scalar $\chi$ of weights $(-3,4)$,

$$
\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)
=
\operatorname{Re}\!\bigl(\overline{\chi}\,n^a\nabla_a\chi\bigr)
-3(n\cdot f)|\chi|^2.
$$

**Proof.** By definition,

$$
C_a\chi=\nabla_a\chi-3f_a\chi+4P_a\chi,
$$

where $P_a$ is purely imaginary and $C_a$ is real in the sense explained in [AAD]. Taking the real part of $\overline{\chi}\,n^aC_a\chi$, the $P_a$-term drops out because

$$
\operatorname{Re}\!\bigl(4\,\overline{\chi}\,(n\cdot P)\chi\bigr)=0.
$$

This gives the stated identity.

**Proposition.** Under the hypotheses of the main theorem,

$$
\Psi_2^{-4/3}\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)=O(r^{-1-2\gamma}).
$$

**Proof.** By the previous lemmas,

$$
\operatorname{Re}\!\bigl(\overline{\chi}\,n^a\nabla_a\chi\bigr)=O(r^{-5-2\gamma}),
\qquad
(n\cdot f)|\chi|^2=O(r^{-1})O(r^{-4-2\gamma})=O(r^{-5-2\gamma}).
$$

Hence

$$
\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)=O(r^{-5-2\gamma}).
$$

The inverse asymptotic implies

$$
\Psi_2^{-4/3}=O(r^4),
$$

so multiplying the two estimates yields

$$
\Psi_2^{-4/3}\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)=O(r^{-1-2\gamma}).
$$

**Remark.** This proposition is the whole analytic heart of the paper. The exponent $-1-2\gamma$ comes from three sources only: two derivatives lost in passing from $h$ to $\chi$, one more derivative in the normal derivative, and the compensating factor $r^4$ coming from $\Psi_2^{-4/3}$. There is no additional cancellation hidden in the proof.

## 6. Boundary flux and proof of the main theorem

**Proposition.** Let $V_R:=\{r<R\}$ for $R$ sufficiently large. Under the hypotheses of the main theorem,

$$
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
=O(R^{1-2\gamma}).
$$

In particular, if $\gamma>\tfrac12$, the boundary term in the flux identity tends to zero as $R\to\infty$.

**Proof.** By the flux identity, the boundary integral is real, so it equals the integral of its real part. The previous proposition gives the pointwise estimate

$$
\Psi_2^{-4/3}\operatorname{Re}\!\bigl(\overline{\chi}\,n^aC_a\chi\bigr)=O(r^{-1-2\gamma}).
$$

Using the area estimate $\Area(\partial V_R)=O(R^2)$, we obtain

$$
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
=
O(R^2)\cdot O(R^{-1-2\gamma})
=
O(R^{1-2\gamma}),
$$

which tends to zero when $\gamma>\tfrac12$.

**Proof of the main theorem.** By Corollary 2.4 of [AAD], the field $\chi=\dot\Omega^{-1}\vartheta\Psi_0$ satisfies the Teukolsky equation. Apply the flux identity to $V_R=\{r<R\}$. By the previous proposition,

$$
\lim_{R\to\infty}
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma
=0.
$$

Passing to the limit gives

$$
0=
\int_M\Psi_2^{-4/3}\bigl(|C\chi|^2+18\Psi_2|\chi|^2\bigr)\,d\mu.
$$

By Lemma 3.1 of [AAD], $\Psi_2>0$ on every Hermitian non-Kähler ALF instanton, so the integrand is pointwise nonnegative. Therefore it vanishes identically. In particular, $\Psi_2|\chi|^2\equiv 0$, whence $\chi\equiv 0$. Since $\dot\Omega$ is constant and nowhere vanishing, this is equivalent to

$$
\vartheta\Psi_0=0.
$$

**Corollary.** Under the hypotheses of the main theorem, only the bounds

$$
\nabla^k h = O(r^{-\gamma-k}),
\qquad 0\leq k\leq 3,
$$

are used. In particular, the proof does not require full $O^\ast(r^{-\gamma})$ control of all higher derivatives.

**Corollary.** For the positive-flux method based on the flux identity, the exponent $\gamma=\tfrac12$ is critical. At the endpoint one obtains only the uniform bound

$$
\int_{\partial V_R}\Psi_2^{-4/3}\,\overline{\chi}\,(n^aC_a\chi)\,d\Sigma=O(1),
$$

so the argument does not force vanishing.

**Remark.** This does not show that mode stability fails at $\gamma=\tfrac12$; it shows only that the present proof method reaches its natural endpoint there. This distinction matters. The theorem identifies the optimal exponent for the known identity, not necessarily for the underlying geometric statement.

## 7. Examples, applications, and relation to nearby results

### 7.1. Known Hermitian ALF examples

The present theorem is most naturally read against the geometry of the currently known Hermitian ALF families. These metrics are highly structured: they arise from explicit ansätze, admit conformally Kähler descriptions, and carry enough hidden geometry that curvature components such as $\Psi_2$ can be singled out canonically. This is very different from the general Ricci-flat ALF world, where one often lacks both explicit formulas and a distinguished complex-geometric framework.

In that sense, the main theorem should be viewed as a result tailored to the explicit Hermitian corner of the instanton landscape. It does not attempt to speak to every ALF instanton. Instead it uses the extra structure already available in the Hermitian class and asks a sharper perturbative question there. For the explicit Kerr, Taub-bolt, and Chen--Teo type backgrounds discussed in the Hermitian literature [BG], [BGL], [AADS], one expects the stronger two-sided asymptotic

$$
\Psi_2\asymp r^{-3}.
$$

Once that asymptotic is verified in a given family, the main theorem applies directly and yields weighted mode stability for all linearized vacuum perturbations with decay exponent $\gamma>\tfrac12$.

### 7.2. Relation to rigidity

The weighted vanishing theorem proved here is not a substitute for infinitesimal rigidity, nor is it implied by it. The two statements live at different levels. Infinitesimal rigidity concerns the space of deformations modulo gauge and boundary conditions. Weighted mode stability concerns a specific gauge-invariant curvature scalar extracted from a perturbation. The recent rigidity theorem of Araneda and Andersson [AA26] nonetheless changes the conceptual place of the present result. Once one knows that the Hermitian ALF class is much more rigid than previously understood, a weighted vanishing theorem becomes a refined statement about how that rigidity is seen at the level of Weyl curvature.

This is one reason the present article highlights the niche rather than apologizing for it. In a rapidly developing subject, broad classification results and narrow analytical refinements are not competitors. They play different roles. Broad results tell us which geometries exist. Narrow refinements tell us how the special identities attached to those geometries actually behave under perturbation.

### 7.3. Relation to non-Hermitian constructions

The theorem also marks a boundary between the Hermitian theory and the wider non-Hermitian instanton program. Recent constructions of Li and Sun [LS25] show that the full gravitational-instanton landscape is far larger than the classical Hermitian families. Those new examples fall outside the scope of the present paper. They do not come equipped, at least not a priori, with the same conformally Kähler structure, the same scalar $\Psi_2$, or the same flux identity. This is not a defect of the theorem; it is a precise statement of where the Hermitian technology genuinely applies.

Seen from this angle, the theorem is a calibration result. It says: within the Hermitian ALF world, the positive-flux identity already carries a better decay threshold than the published theorem states. Beyond that world, one should not expect the same argument without additional structure.

### 7.4. Neighboring asymptotic regimes

It is also useful to compare the ALF result with neighboring asymptotic settings. On the ALE side, recent work of Araneda and Lucietti studies toric Hermitian ALE instantons [AL25]. Even when analogous conformally Kähler structure is present, the asymptotic bookkeeping is different there because the geometry at infinity is different. The boundary area growth, the natural radial powers, and the way curvature components feed into weighted energies all change with the asymptotic model. Thus the exponent $\gamma>\tfrac12$ should be understood as specific to the ALF balance encoded in the flux identity; it is not a universal threshold across all gravitational-instanton asymptotics.

This comparison reinforces the main point of the paper. Weighted vanishing theorems are not merely statements about decay of perturbations. They are statements about the interaction between perturbation decay, background curvature weights, and the geometry of infinity. The Hermitian ALF setting is special precisely because all three of those ingredients can be written down in a sharp and usable way.

## 8. Discussion

### 8.1. What the theorem really proves

The weighted theorem proved here is deliberately precise about its hypotheses. It does not merely say that the original ALF decay can be weakened. It says something stronger and more informative: the proof works under exactly the decay needed to make the boundary flux vanish, and that threshold is $\gamma>\tfrac12$, provided the inverse asymptotic of $\Psi_2$ is stated explicitly. This is a better theorem mathematically because it separates the two roles played by asymptotics in the argument:

- the perturbation decay controls $\chi$ and $\nabla\chi$;
- the background decay controls the weights $\Psi_2^{-4/3}$ and $f$.

Once these roles are disentangled, one sees that the perturbation exponent and the background asymptotic answer different questions.

### 8.2. Why the inverse Weyl asymptotic matters

The extra assumption $\Psi_2^{-1}=O(r^3)$ is not an artificial embellishment. It is the minimal way to justify the factor $\Psi_2^{-4/3}$ in the boundary integral. One of the useful byproducts of rechecking the proof is therefore conceptual clarity: in weighted arguments with curvature-dependent densities, upper decay of a curvature component is not automatically enough. Whenever inverse powers appear, one needs some form of two-sided asymptotic control.

For the present theorem, that observation is especially important because it explains why the proof is both stronger and narrower than the heuristic notes first suggest. Stronger, because it captures the sharp decay threshold for $h$. Narrower, because it makes explicit a background assumption that had previously remained tacit in the argument. Both directions matter.

### 8.3. A niche worth keeping

It is reasonable to ask whether such a focused theorem is too small to be useful. The answer, in our view, is no. Current research on gravitational instantons is pulled toward two extremes. On one side lie large classification and construction programs. On the other side lie global rigidity theorems. The present result sits between these scales. It does not enlarge the class of metrics and it does not classify them. Instead it sharpens the exact analytic conclusion one can draw once the special Hermitian ALF structure is already in place.

That intermediate scale is easy to overlook, but it is often where proofs become genuinely transparent. A mature geometric theory needs not only existence, classification, and rigidity, but also small theorems that say exactly what the canonical identities in the theory really imply. This note is intended in that spirit.

### 8.4. Open directions

Several natural questions remain.

First, can the assumption $\Psi_2^{-1}=O(r^3)$ be derived abstractly for every Hermitian non-Kähler ALF instanton from the known structural theory, rather than checked family by family? A positive answer would turn the main theorem into an unconditional sharpening of the ALF mode-stability theorem.

Second, what happens at the endpoint $\gamma=\tfrac12$? The present method is critical there, but criticality of the method is not the same as criticality of the truth. It would be interesting to know whether a renormalized boundary argument, a logarithmic correction, or a different weighted energy can treat the endpoint.

Third, can one formulate an energy version of the theorem? A natural guess is that finite weighted energy

$$
\int_M \Psi_2^{-4/3}\bigl(|C\chi|^2+\Psi_2|\chi|^2\bigr)\,d\mu < \infty
$$

should imply $\chi\equiv 0$, perhaps by a cutoff argument compatible with the flux identity. Such a result would repackage the pointwise decay theorem into a more invariant functional statement.

Fourth, how much of this picture survives outside the Hermitian class? The new non-Hermitian families constructed in [LS25] make this question especially timely. At present the theorem should be understood as intrinsically Hermitian. Any extension beyond that setting would require a substitute for the conformally Kähler structure, or a new gauge-invariant scalar playing the role of $\chi$.

These questions show the natural boundary of the present note. The theorem is complete as a weighted statement inside the Hermitian ALF framework, but it also points beyond itself: to sharper asymptotics, endpoint analysis, and eventually to the much larger non-Hermitian universe.

## References

- **[AAD]** L. Andersson, B. Araneda, and M. Dahl, *Mode stability of Hermitian instantons*, SIGMA **21** (2025), Paper No. 022, 13 pp. DOI: [10.3842/SIGMA.2025.022](https://doi.org/10.3842/SIGMA.2025.022).
- **[AA26]** B. Araneda and L. Andersson, *Infinitesimal rigidity of Hermitian gravitational instantons*, preprint, arXiv:2601.17206.
- **[AADS]** S. Aksteiner, L. Andersson, M. Dahl, G. Nilsson, and W. Simon, *Gravitational instantons with $S^1$ symmetry*, *J. Reine Angew. Math.* **826** (2025), 45--90. DOI: [10.1515/crelle-2025-0037](https://doi.org/10.1515/crelle-2025-0037), arXiv:2306.14567.
- **[AL25]** B. Araneda and S. Lucietti, *All toric Hermitian ALE gravitational instantons*, preprint, arXiv:2510.09291.
- **[BG]** O. Biquard and P. Gauduchon, *On toric Hermitian ALF gravitational instantons*, *Comm. Math. Phys.* **399** (2023), no. 1, 389--422. DOI: [10.1007/s00220-022-04562-z](https://doi.org/10.1007/s00220-022-04562-z).
- **[BGL]** O. Biquard, P. Gauduchon, and C. LeBrun, *Gravitational instantons, Weyl curvature, and conformally Kähler geometry*, *Int. Math. Res. Not. IMRN* **2024** (2024), no. 20, 13295--13311. DOI: [10.1093/imrn/rnae200](https://doi.org/10.1093/imrn/rnae200).
- **[Li]** M. Li, *Classification results for conformally Kähler gravitational instantons*, preprint, arXiv:2310.13197.
- **[LS25]** X. Li and S. Sun, *Gravitational instantons and harmonic maps*, preprint, arXiv:2507.15284.

