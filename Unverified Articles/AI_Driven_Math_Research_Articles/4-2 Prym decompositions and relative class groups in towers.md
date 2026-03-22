## Method Card
- **Short tag:** degree-controlled Prym splitting
- **Full name:** Degree-controlled Prym splitting in towers.
- **Input setting:** A tower of finite separable covers of smooth projective geometrically connected curves over a finite field.
- **New object / driver:** Addition maps between Prym varieties with kernels annihilated by deg(f), together with relative Weil polynomials and an explicit defect subgroup for relative class groups.
- **Obstruction resolved:** The classical isogeny P_(g o f) ~ P_f x P_g gives only coarse decomposition information and does not explain integral Frobenius control or the exact arithmetic defect in class groups.
- **Expected outputs:** Integral prime-to-degree splittings on Tate modules, multiplicativity of relative Weil polynomials and point counts, and exact prime-to-degree multiplicativity for relative class groups.
- **Transfer targets:** Arithmetic of curves over finite fields, explicit Jacobian/Prym calculations, and tower-level point-count or class-group formulas.
- **Main technical risk:** Degree-torsion defects persist exactly at the bad primes dividing deg(f) or the characteristic, so the clean multiplicative statements are genuinely prime-to-degree.
- **Mechanism type:** defect control, transport, rigidity
- **Tags:** Prym, tower, Frobenius, class-group, degree-torsion, Jacobian
- **Method link:** ../methods/degree_controlled_prym_splitting.md

**Condensation.** The new viewpoint is to refine Prym decomposition in towers from an isogeny statement to a degree-controlled and Frobenius-aware splitting package. This overcomes the obstruction that the usual factorization hides the integral defect and therefore says little about point counts or relative class groups. The operative mechanism is to analyze the addition maps, prove their kernels are annihilated by the intermediate degree, and then read off the induced factorization on Tate modules, Weil polynomials, and rational points. If it works, it yields multiplicative formulas for Pryms and relative class groups away from the degree torsion and makes the arithmetic defect completely explicit.

# Prym decompositions and relative class groups in towers of covers over finite fields

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

## Abstract

Let
$$X \xrightarrow{f} Y \xrightarrow{g} Z$$

be a tower of finite separable morphisms of smooth projective geometrically connected curves over a finite field $k=\mathbb{F}_q$. Writing $P_u$ for the Prym variety attached to a cover $u$, we strengthen the basic isogeny statement $P_{g\circ f}\sim P_f\times P_g$ in two ways. First, the addition maps
$$P_f\times J_Y\to J_X,\qquad P_f\times P_g\to P_{g\circ f}$$

are shown to have kernels annihilated by $\deg(f)$; consequently, for every prime $\ell\nmid \deg(f)\operatorname{char}(k)$, the associated $\ell$-adic Tate modules split integrally and Frobenius-equivariantly. Second, the relative Weil polynomials multiply in towers, giving point-count multiplicativity for Prym varieties over every finite extension of $k$. We also prove that the finite relative class groups
$$R_u:=J_{\mathrm{dom}(u)}(k)\big/u^*J_{\mathrm{cod}(u)}(k)$$

fit into an exact sequence with an explicit degree-torsion defect subgroup
$$K_f\big/\bigl(K_f\cap g^*J_Z(k)\bigr),\qquad K_f=\operatorname{Ker}\bigl(f^*:J_Y(k)\to J_X(k)\bigr).$$

This yields prime-to-$\deg(f)$ multiplicativity for relative class groups in towers, together with explicit examples over $\mathbb{F}_5$.

---

## Introduction

Let $k=\mathbb{F}_q$, and let $f\colon X\to Y$ be a finite separable morphism of smooth projective geometrically connected curves over $k$. Recent work of Kadets and Keliher studies the finite quotient
$$R_f := J_X(k)\big/f^*J_Y(k),$$

where $J_X$ and $J_Y$ denote Jacobians, and proves lower bounds for the exponent of $R_f$ [Kadets–Keliher, 2024, arXiv:2410.11962]. In a nearby direction, Arango-Piñeros, Chara, Hamakiotes, Kedlaya, and Rama organize the relative class number problem for function fields around a Prym variety attached to the cover [Arango-Piñeros et al., 2025, arXiv:2412.12467]. In the same-constant-field situation considered here, this Prym is
$$P_f := (\operatorname{Ker}(f_*\colon J_X\to J_Y))^0.$$

The two viewpoints are close but not identical. The group $R_f$ is a concrete quotient of rational points, while $P_f$ is an abelian subvariety. The first purpose of this note is to make the relation between them explicit:
$$|R_f| = |P_f(k)|\cdot \bigl|\operatorname{Ker}(f^*\colon J_Y(k)\to J_X(k))\bigr|.$$

Thus the only difference between the Kadets–Keliher relative class group and the Prym point count is the finite pullback kernel, which is always killed by $\deg(f)$.

The second purpose is to show that this relation behaves functorially in towers. For a tower
$$X \xrightarrow{f} Y \xrightarrow{g} Z,\qquad h=g\circ f,$$

we prove that the Prym variety $P_h$ admits a functorial decomposition relative to the intermediate cover. At the level of abelian varieties, we show that the addition maps
$$P_f\times J_Y\to J_X,\qquad P_f\times P_g\to P_h$$

are isogenies whose kernels are annihilated by $d:=\deg(f)$. This has three consequences.

First, away from the primes dividing $d$, the corresponding $\ell$-adic Tate modules split integrally and Frobenius-equivariantly:
$$T_\ell P_h \cong T_\ell P_f\oplus T_\ell P_g \qquad (\ell\nmid d\,\operatorname{char}(k)).$$

Equivalently, the tower becomes split exact in the isogeny category of abelian varieties over $k$.

Second, if $L_C(T)$ denotes the numerator of the zeta function of a curve $C$, and if $\mathcal W_u(T)$ is the Weil polynomial of $P_u$, then
$$L_X(T)=\mathcal W_f(T)L_Y(T),\qquad \mathcal W_h(T)=\mathcal W_f(T)\mathcal W_g(T).$$

Thus the relative Frobenius polynomial factors multiplicatively in towers. In particular,
$$|P_h(\mathbb{F}_{q^n})|=|P_f(\mathbb{F}_{q^n})|\,|P_g(\mathbb{F}_{q^n})| \qquad\text{for every }n\ge 1.$$

Third, on rational points the groups $R_g$, $R_h$, and $R_f$ fit into an exact sequence
$$0 \to \frac{\operatorname{Ker}(f^*)}{\operatorname{Ker}(f^*)\cap g^*J_Z(k)} \to R_g \to R_h \to R_f \to 0.$$

The defect term is explicit and is killed by $d$, so away from the primes dividing $d$ the relative class groups are exact in towers.

This should be compared with two earlier strands of work. First, Kani–Rosen decompositions of Jacobians are driven by automorphism groups and idempotent relations [Kani–Rosen, 1989, Math. Ann. 284, 307–327]. By contrast, our statement requires no group action and applies to an arbitrary tower of covers. Second, there is a substantial literature on realizing special Prym varieties as Jacobians of auxiliary curves or quotients of Galois closures; see for example [Mumford, 1974, Contributions to Analysis, pp. 325–350] and [Lombardo–Lorenzo García–Ritzenthaler–Sijsling, 2020, arXiv:2003.07774]. Our result goes in a different direction: it gives a general functorial decomposition tailored to the finite groups $R_f$ that arise in arithmetic questions.

### Why this target was chosen

The safer nearby statement is only the exact sequence on the finite groups $R_g\to R_h\to R_f$. That statement is true, but by itself it hides the geometric source of the defect term. The present formulation keeps the same concrete finite groups while showing that the surrounding abelian varieties already decompose functorially in the tower, and that this decomposition controls both the $\ell$-adic Frobenius modules and the relative zeta numerators. This makes the theorem structurally sharper and connects the recent exponent problem for $R_f$ to the Prym-based relative class number viewpoint.

The paper is organized as follows. Section 2 fixes notation and recalls the basic pullback/pushforward identities. Section 3 states the upgraded theorem. Section 4 proves the abelian-variety and $\ell$-adic decomposition statements. Section 5 treats the relative class groups and their order formulas, including base change to all finite extensions. Section 6 contains explicit examples over $\mathbb{F}_5$. We conclude with remarks and open questions.

---

## Notation and Preliminaries

Throughout, $k=\mathbb{F}_q$ is a finite field of characteristic $p$. A curve over $k$ means a smooth projective geometrically connected curve over $k$. For a curve $C/k$, we write $J_C$ for its Jacobian and $g(C)$ for its genus, so $\dim(J_C)=g(C)$. We write the zeta function of $C$ as
$$Z(C,T)=\frac{L_C(T)}{(1-T)(1-qT)},$$

where $L_C(T)\in \mathbb{Z}[T]$ has degree $2g(C)$.

Let $u\colon C\to D$ be a finite separable morphism of curves of degree $n$. We write
$$u^*\colon J_D \to J_C,\qquad u_*\colon J_C\to J_D$$

for the pullback and pushforward maps on Jacobians. These satisfy the standard identity
$$u_*u^*=[n]_{J_D}.$$

In particular, $u_*$ is surjective and the kernel of $u^*$ is killed by $n$, hence finite.

We also use the functorial identities
$$(v\circ u)^*=u^*v^*,\qquad (v\circ u)_*=v_*u_*$$

for composable finite separable morphisms.

### Definition

Let $u\colon C\to D$ be a finite separable morphism of curves.

1. The **Prym variety** of $u$ is
   $$P_u := (\operatorname{Ker}(u_*\colon J_C\to J_D))^0.$$

2. The **relative class group** of $u$ over $k$ is
   $$R_u := J_C(k)\big/u^*J_D(k).$$
   This is the finite group considered by Kadets and Keliher [2024, arXiv:2410.11962].

3. We write
   $$K_u := \operatorname{Ker}\bigl(u^*\colon J_D(k)\to J_C(k)\bigr).$$

4. For a prime $\ell\neq p$, we write
   $$T_\ell A := \varprojlim_m A[\ell^m](\bar k), \qquad V_\ell A := T_\ell A\otimes_{\mathbb{Z}_\ell}\mathbb{Q}_\ell$$
   for the Tate module and rational Tate module of an abelian variety $A/k$.

### Lemma (kernel-killed)

Let $u\colon C\to D$ be a finite separable morphism of degree $n$. Then $K_u\subseteq J_D(k)[n]$. In particular, every prime dividing $|K_u|$ divides $n$.

**Proof:** If $x\in K_u$, then $u^*x=0$, hence
$$[n]x = u_*u^*x =0.$$

Thus $x\in J_D(k)[n]$.

### Lemma (prym-dim)

For a finite separable morphism $u\colon C\to D$, the map $u_*\colon J_C\to J_D$ is surjective and
$$\dim(P_u)=g(C)-g(D).$$

**Proof:** Since $u_*u^*=[\deg(u)]$ and multiplication by $\deg(u)$ on $J_D$ is surjective, the map $u_*$ is surjective. Therefore
$$\dim(P_u)=\dim \operatorname{Ker}(u_*) = \dim(J_C)-\dim(J_D)=g(C)-g(D).$$

We will also use the standard fact that isogenous abelian varieties over $\mathbb{F}_q$ have the same characteristic polynomial of Frobenius and therefore the same number of $\mathbb{F}_{q^n}$-rational points for every $n\ge 1$; see [Tate, 1966, Invent. Math. 2, 134–144].

---

## Main Result

Let
$$X \xrightarrow{f} Y \xrightarrow{g} Z$$

be a tower of finite separable morphisms of curves over $k$, and let
$$h:=g\circ f, \qquad d:=\deg(f).$$

We write
$$P_f,\ P_g,\ P_h$$

for the corresponding Prym varieties, and
$$R_f,\ R_g,\ R_h$$

for the corresponding relative class groups.

### Theorem (main)

With notation as above, the following hold.

1. **(isog)** The addition maps
   $$\alpha_f\colon P_f\times J_Y \longrightarrow J_X,\qquad (u,v)\longmapsto u+f^*v,$$
   $$\alpha_{f,g}\colon P_f\times P_g \longrightarrow P_h,\qquad (u,v)\longmapsto u+f^*v,$$
   are isogenies over $k$. Moreover, both kernels are annihilated by $d$.

2. **(tate)** For every prime $\ell\neq p$, there are Frobenius-equivariant decompositions of $\mathbb{Q}_\ell$-vector spaces
   $$V_\ell J_X \cong V_\ell P_f \oplus V_\ell J_Y, \qquad V_\ell P_h \cong V_\ell P_f \oplus V_\ell P_g.$$
   If in addition $\ell\nmid d$, then these decompositions hold integrally on Tate modules:
   $$T_\ell J_X \cong T_\ell P_f \oplus T_\ell J_Y, \qquad T_\ell P_h \cong T_\ell P_f \oplus T_\ell P_g.$$
   Equivalently, for $\ell\nmid dp$ the sequences
   $$0\longrightarrow T_\ell P_f \longrightarrow T_\ell J_X \xrightarrow{\ T_\ell(f_*)\ } T_\ell J_Y \longrightarrow 0,$$
   $$0\longrightarrow T_\ell P_f \longrightarrow T_\ell P_h \xrightarrow{\ T_\ell(f_*)\ } T_\ell P_g \longrightarrow 0,$$
   are split exact, with splitting $d^{-1}T_\ell(f^*)$.

3. **(weil)** For a cover $u\colon C\to D$, let
   $$\mathcal W_u(T):=\det\bigl(1-T\operatorname{Frob}_q\mid V_\ell P_u\bigr)\in \mathbb{Z}[T].$$
   Then
   $$L_X(T)=\mathcal W_f(T)L_Y(T), \qquad \mathcal W_h(T)=\mathcal W_f(T)\mathcal W_g(T).$$
   In particular, for every $n\ge 1$,
   $$|P_h(\mathbb{F}_{q^n})| = |P_f(\mathbb{F}_{q^n})|\,|P_g(\mathbb{F}_{q^n})|.$$

4. **(exact)** Let
   $$\overline{f^*}\colon R_g\to R_h,\qquad [y]\longmapsto [f^*y],$$
   and let
   $$q\colon R_h\to R_f,\qquad [x]_h\longmapsto [x]_f$$
   be the natural quotient map. Then there is an exact sequence
   $$0\longrightarrow \frac{K_f}{K_f\cap g^*J_Z(k)} \xrightarrow{\ \iota\ } R_g \xrightarrow{\ \overline{f^*}\ } R_h \xrightarrow{\ q\ } R_f \longrightarrow 0,$$
   where $\iota$ sends the class of $y\in K_f$ to its class $[y]\in R_g$. In particular, the defect group
   $$D_{f,g}:=\frac{K_f}{K_f\cap g^*J_Z(k)}$$
   is annihilated by $d$.

The theorem immediately gives the bridge between Prym point counts, relative Weil polynomials, and the groups $R_u$.

### Corollary (order-bridge)

For any finite separable morphism $u\colon C\to D$ of curves over $k$,
$$|R_u| = |P_u(k)|\cdot |K_u|.$$

Equivalently,
$$|R_u| = \mathcal W_u(1)\cdot |K_u|.$$

In particular, if $K_u=0$, then $|R_u|=|P_u(k)|=\mathcal W_u(1)$.

### Corollary (prime-to-degree)

In the situation of Theorem (main),
$$|R_h| = \frac{|R_f|\,|R_g|}{|D_{f,g}|}.$$

Since $D_{f,g}$ is annihilated by $d$, we have
$$|R_h|_{d'} = |R_f|_{d'}\,|R_g|_{d'}.$$

Moreover, for every prime $\ell\nmid d$, there is a short exact sequence
$$0\longrightarrow R_g[\ell^\infty] \longrightarrow R_h[\ell^\infty] \longrightarrow R_f[\ell^\infty] \longrightarrow 0.$$

### Corollary (coprime)

In the situation of Theorem (main), suppose $\gcd(d,\exp(R_g))=1$. Then $D_{f,g}=0$, so
$$0\longrightarrow R_g \xrightarrow{\ \overline{f^*}\ } R_h \xrightarrow{\ q\ } R_f \longrightarrow 0$$

is exact. If, in addition, $\gcd(|R_f|,|R_g|)=1$, then this exact sequence splits, and
$$R_h \cong R_f\oplus R_g.$$

Finally, without any coprimality hypothesis, one always has
$$\exp(R_h)\mid \exp(R_f)\exp(R_g).$$

## Abelian-Variety and Tate-Module Decompositions

We begin with the two addition morphisms.

### Proposition (addition-isogenies)

The addition maps $\alpha_f$ and $\alpha_{f,g}$ of Theorem (main), part (isog) are isogenies. Their kernels are annihilated by $d$.

**Proof:** For $\alpha_f$, Lemma (prym-dim) gives
$$\dim(P_f)+\dim(J_Y)=(g(X)-g(Y))+g(Y)=g(X)=\dim(J_X).$$

If $(u,v)\in \operatorname{Ker}(\alpha_f)$, then
$$u=-f^*v.$$

Applying $f_*$ yields
$$0=f_*(u+f^*v)=f_*u+f_*f^*v=0+[d]v,$$

because $u\in P_f\subseteq \operatorname{Ker}(f_*)$. Thus $[d]v=0$, so $v\in J_Y[d]$. Since $u$ is determined by $v$, the kernel is finite and annihilated by $d$. Therefore $\alpha_f$ is an isogeny.

For $\alpha_{f,g}$, Lemma (prym-dim) gives
$$\dim(P_f)+\dim(P_g)=(g(X)-g(Y))+(g(Y)-g(Z))=g(X)-g(Z)=\dim(P_h).$$

We first check that $f^*(P_g)\subseteq P_h$. If $v\in P_g$, then
$$h_*f^*v=g_*f_*f^*v=g_*([d]v)=[d]g_*v=0,$$

so $f^*v\in \operatorname{Ker}(h_*)$, and since $f^*(P_g)$ is connected, it lies in $(\operatorname{Ker} h_*)^0=P_h$.

Now let $(u,v)\in \operatorname{Ker}(\alpha_{f,g})$. Then
$$u=-f^*v.$$

Applying $f_*$ gives
$$0=f_*(u+f^*v)=f_*u+[d]v=0+[d]v,$$

because $u\in P_f\subseteq \operatorname{Ker}(f_*)$. Thus $[d]v=0$, so $v\in P_g[d]$. Again $u$ is determined by $v$, hence $\operatorname{Ker}(\alpha_{f,g})$ is finite and annihilated by $d$. Therefore $\alpha_{f,g}$ is an isogeny. ∎

### Proposition (tate-splitting)

The Tate-module statements in Theorem (main), part (tate) hold.

**Proof:** Fix a prime $\ell\neq p$. Since $\alpha_f$ and $\alpha_{f,g}$ are isogenies defined over $k$, they induce Frobenius-equivariant isomorphisms on rational Tate modules:
$$V_\ell J_X \cong V_\ell P_f\oplus V_\ell J_Y, \qquad V_\ell P_h \cong V_\ell P_f\oplus V_\ell P_g.$$

This proves the first part.

Assume now that $\ell\nmid d$. Since the kernels of $\alpha_f$ and $\alpha_{f,g}$ are annihilated by $d$, they have no nontrivial $\ell$-power torsion. Hence the induced maps on $\ell$-divisible groups, and therefore on Tate modules, are isomorphisms:
$$T_\ell J_X \cong T_\ell P_f\oplus T_\ell J_Y, \qquad T_\ell P_h \cong T_\ell P_f\oplus T_\ell P_g.$$

It remains to identify the exact sequences. Under the first isomorphism,
$$T_\ell(f_*)\circ T_\ell(\alpha_f)(u,v) = T_\ell(f_*)(u+T_\ell(f^*)v) = d\,v,$$

because $T_\ell(f_*)u=0$ on $T_\ell P_f$. Since $d\in \mathbb{Z}_\ell^\times$, the map $T_\ell(f_*)$ corresponds to projection onto the second summand followed by multiplication by $d$. Therefore
$$0\to T_\ell P_f\to T_\ell J_X\xrightarrow{\ T_\ell(f_*)\ }T_\ell J_Y\to 0$$

is split exact, with splitting $d^{-1}T_\ell(f^*)$.

The same calculation with $\alpha_{f,g}$ gives
$$T_\ell(f_*)\circ T_\ell(\alpha_{f,g})(u,v)=d\,v,$$

so
$$0\to T_\ell P_f\to T_\ell P_h\xrightarrow{\ T_\ell(f_*)\ }T_\ell P_g\to 0$$

is split exact, again with splitting $d^{-1}T_\ell(f^*)$. ∎

### Corollary (isogeny-category)

In the isogeny category of abelian varieties over $k$, the sequence
$$0\longrightarrow P_f \longrightarrow P_h \xrightarrow{\ d^{-1}f_*\ } P_g \longrightarrow 0$$

is split exact, with splitting $f^*$. Equivalently,
$$P_h \cong P_f\oplus P_g$$

in the isogeny category.

**Proof:** This is immediate from Theorem (main), part (tate) on rational Tate modules, or directly from the fact that $\alpha_{f,g}$ is an isogeny and $f_*f^*=[d]$ on $P_g$. ∎

### Proposition (weil-factorization)

The relative Weil polynomial statement in Theorem (main), part (weil) holds.

**Proof:** Let $u\colon C\to D$ be a finite separable morphism. By Proposition (addition-isogenies), the addition map
$$P_u\times J_D\to J_C$$

is an isogeny over $k$. Therefore
$$V_\ell J_C \cong V_\ell P_u\oplus V_\ell J_D$$

as Frobenius modules. Taking characteristic polynomials of $\operatorname{Frob}_q$ gives
$$L_C(T)=\mathcal W_u(T)L_D(T).$$

Applying this first to $u=f$ yields
$$L_X(T)=\mathcal W_f(T)L_Y(T).$$

Applying it to $u=h$ and using Proposition (addition-isogenies) for $\alpha_{f,g}$ gives
$$\mathcal W_h(T)=\mathcal W_f(T)\mathcal W_g(T).$$

Finally, because $P_h$ is isogenous over $k$ to $P_f\times P_g$, the same Frobenius factorization holds over every finite extension $\mathbb{F}_{q^n}$, so
$$|P_h(\mathbb{F}_{q^n})| = |P_f(\mathbb{F}_{q^n})|\,|P_g(\mathbb{F}_{q^n})| \qquad (n\ge 1).$$

∎

## Relative Class Groups and Order Formulas

We now prove the exact sequence on relative class groups and its consequences.

### Proposition (exact-sequence)

The sequence in Theorem (main), part (exact) is exact.

**Proof:** The map $\iota$ is well-defined because if $y_1-y_2\in K_f\cap g^*J_Z(k)$, then $[y_1]=[y_2]$ in
$$R_g=J_Y(k)/g^*J_Z(k).$$

It is injective because if $y\in K_f$ maps to zero in $R_g$, then $y\in g^*J_Z(k)$, hence $y\in K_f\cap g^*J_Z(k)$.

The map $\overline{f^*}$ is well-defined because
$$f^*\bigl(g^*J_Z(k)\bigr)=h^*J_Z(k).$$

The map $q$ is well-defined because $h^*J_Z(k)\subseteq f^*J_Y(k)$.

We compute $\operatorname{Ker}(\overline{f^*})$. Let $[y]\in R_g$ be represented by $y\in J_Y(k)$. Then $\overline{f^*}([y])=0$ if and only if
$$f^*y \in h^*J_Z(k)=f^*g^*J_Z(k).$$

Equivalently, there exists $z\in J_Z(k)$ such that
$$f^*y=f^*g^*z,$$

which is equivalent to
$$y-g^*z\in K_f.$$

Thus
$$y\in g^*J_Z(k)+K_f.$$

Conversely, every element of $g^*J_Z(k)+K_f$ clearly maps to zero under $\overline{f^*}$. Therefore
$$\operatorname{Ker}(\overline{f^*})= \frac{g^*J_Z(k)+K_f}{g^*J_Z(k)}.$$

By the second isomorphism theorem,
$$\frac{g^*J_Z(k)+K_f}{g^*J_Z(k)} \cong \frac{K_f}{K_f\cap g^*J_Z(k)}.$$

Under the map $\iota$, this is exactly the image of the leftmost term. Hence
$$\operatorname{im}(\iota)=\operatorname{Ker}(\overline{f^*}).$$

Next,
$$\operatorname{im}(\overline{f^*})= \frac{f^*J_Y(k)}{h^*J_Z(k)},$$

which is exactly the kernel of the natural quotient map
$$q\colon J_X(k)/h^*J_Z(k)\to J_X(k)/f^*J_Y(k).$$

Thus
$$\operatorname{im}(\overline{f^*})=\operatorname{Ker}(q).$$

Finally, $q$ is surjective because $h^*J_Z(k)\subseteq f^*J_Y(k)$.

This proves the exactness of
$$0\longrightarrow \frac{K_f}{K_f\cap g^*J_Z(k)} \xrightarrow{\ \iota\ } R_g \xrightarrow{\ \overline{f^*}\ } R_h \xrightarrow{\ q\ } R_f \longrightarrow 0.$$

By Lemma (kernel-killed), the group $K_f$ is annihilated by $d$, hence so is its quotient $D_{f,g}$. ∎

### Proposition (kernel-tower)

With notation as in Theorem (main), there is a short exact sequence
$$0\longrightarrow K_g \longrightarrow K_h \xrightarrow{\ \beta\ } K_f\cap g^*J_Z(k) \longrightarrow 0,$$

where $\beta(z)=g^*z$.

**Proof:** If $z\in K_h$, then
$$0=h^*z=f^*g^*z,$$

so $g^*z\in K_f\cap g^*J_Z(k)$, and $\beta$ is well-defined. Its kernel consists of those $z\in J_Z(k)$ with $g^*z=0$, namely $K_g$.

If $y\in K_f\cap g^*J_Z(k)$, write $y=g^*z$ for some $z\in J_Z(k)$. Since $y\in K_f$,
$$0=f^*y=f^*g^*z=h^*z,$$

so $z\in K_h$ and $\beta(z)=y$. Thus $\beta$ is surjective. ∎

**Proof of Corollary (order-bridge):**
By Proposition (addition-isogenies), the abelian varieties $J_C$ and $P_u\times J_D$ are isogenous over $k$, so
$$|J_C(k)| = |P_u(k)|\,|J_D(k)|.$$

On the other hand,
$$|u^*J_D(k)|=\frac{|J_D(k)|}{|K_u|}$$

because $K_u$ is exactly the kernel of $u^*\colon J_D(k)\to J_C(k)$. Therefore
$$|R_u| = \frac{|J_C(k)|}{|u^*J_D(k)|} = \frac{|P_u(k)|\,|J_D(k)|}{|J_D(k)|/|K_u|} = |P_u(k)|\,|K_u|.$$

The second displayed formula follows from Theorem (main), part (weil), because $|P_u(k)|=\mathcal W_u(1)$. ∎

**Proof of Corollary (prime-to-degree):**
Taking orders in the exact sequence of Proposition (exact-sequence) gives
$$|R_h| = \frac{|R_f|\,|R_g|}{|D_{f,g}|}.$$

Since $D_{f,g}$ is annihilated by $d$, every prime dividing $|D_{f,g}|$ divides $d$. Hence
$$|R_h|_{d'} = |R_f|_{d'}\,|R_g|_{d'}.$$

For the statement on $\ell$-primary parts, note that the exact sequence in Proposition (exact-sequence) respects primary decomposition. If $\ell\nmid d$, then $D_{f,g}[\ell^\infty]=0$, so the $\ell$-primary part remains exact:
$$0\to R_g[\ell^\infty]\to R_h[\ell^\infty]\to R_f[\ell^\infty]\to 0.$$

∎

**Proof of Corollary (coprime):**
If $\gcd(d,\exp(R_g))=1$, then any subgroup of $R_g$ annihilated by $d$ must be trivial. Since $D_{f,g}\subseteq R_g$ and $dD_{f,g}=0$, we get $D_{f,g}=0$. This gives the short exact sequence
$$0\to R_g \to R_h \to R_f \to 0.$$

If, in addition, $\gcd(|R_f|,|R_g|)=1$, then every extension of $R_f$ by $R_g$ splits in the category of finite abelian groups, so
$$R_h\cong R_f\oplus R_g.$$

For the exponent divisibility, let $e_f=\exp(R_f)$ and $e_g=\exp(R_g)$. Given $x\in R_h$, the class $q(e_f x)$ is zero in $R_f$, so $e_f x\in \operatorname{im}(\overline{f^*})$. Thus there exists $y\in R_g$ with
$$\overline{f^*}(y)=e_f x.$$

Applying $e_g$ gives
$$e_ge_f x = \overline{f^*}(e_g y)=0.$$

Hence every element of $R_h$ is killed by $e_fe_g$, so
$$\exp(R_h)\mid e_fe_g.$$

∎

### Remark (kernel-orders)

Proposition (kernel-tower) shows that
$$|K_h| = |K_g|\,|K_f\cap g^*J_Z(k)| = \frac{|K_f|\,|K_g|}{|D_{f,g}|}.$$

Combined with Corollary (order-bridge) and the equality
$$|P_h(k)|=|P_f(k)|\,|P_g(k)|,$$

this gives a second derivation of the formula
$$|R_h| = \frac{|R_f|\,|R_g|}{|D_{f,g}|}.$$

∎

### Corollary (all-extensions)

For each $n\ge 1$, let
$$R_u^{(n)}:=J_{\mathrm{dom}(u)}(\mathbb{F}_{q^n})\big/u^*J_{\mathrm{cod}(u)}(\mathbb{F}_{q^n}),$$
$$K_{u,n}:=\operatorname{Ker}\bigl(u^*:J_{\mathrm{cod}(u)}(\mathbb{F}_{q^n})\to J_{\mathrm{dom}(u)}(\mathbb{F}_{q^n})\bigr).$$

Then the tower
$$X_{\mathbb{F}_{q^n}}\xrightarrow{f}Y_{\mathbb{F}_{q^n}}\xrightarrow{g}Z_{\mathbb{F}_{q^n}}$$

satisfies all conclusions of Theorem (main), with the same degree $d$. In particular,
$$0\longrightarrow \frac{K_{f,n}}{K_{f,n}\cap g^*J_Z(\mathbb{F}_{q^n})} \longrightarrow R_g^{(n)}\longrightarrow R_h^{(n)}\longrightarrow R_f^{(n)}\longrightarrow 0,$$

$$|P_h(\mathbb{F}_{q^n})|=|P_f(\mathbb{F}_{q^n})|\,|P_g(\mathbb{F}_{q^n})|,$$

and
$$|R_h^{(n)}|_{d'} = |R_f^{(n)}|_{d'}\,|R_g^{(n)}|_{d'}.$$

**Proof:** All statements follow by applying Theorem (main) over the finite field $\mathbb{F}_{q^n}$. ∎

---

## Examples and Applications

We give two explicit examples over $\mathbb{F}_5$.

### Example 1: An elliptic tower with nontrivial defect

Let
$$E/\mathbb{F}_5\colon y^2=x^3+1.$$

A direct count gives
$$E(\mathbb{F}_5)=\{O,(0,\pm 1),(2,\pm 2),(4,0)\},$$

so $|E(\mathbb{F}_5)|=6$, and
$$E(\mathbb{F}_5)[2]=\{O,(4,0)\}\cong \mathbb{Z}/2\mathbb{Z}.$$

Let
$$f=[2]\colon E\to E,$$

and let
$$g\colon E\to \mathbb{P}^1$$

be the quotient by the involution $(x,y)\mapsto (x,-y)$. Under the canonical principal polarization $J_E\simeq E$, the pullback $f^*$ is multiplication by $2$. Then $h=g\circ f$, $P_f=0$, and
$$R_g = E(\mathbb{F}_5),\qquad R_h=E(\mathbb{F}_5),\qquad R_f=E(\mathbb{F}_5)/2E(\mathbb{F}_5).$$

Since $K_f=E(\mathbb{F}_5)[2]$, Theorem (main) gives the exact sequence
$$0\longrightarrow E(\mathbb{F}_5)[2] \longrightarrow E(\mathbb{F}_5) \xrightarrow{[2]} E(\mathbb{F}_5) \longrightarrow E(\mathbb{F}_5)/2E(\mathbb{F}_5) \longrightarrow 0.$$

In particular,
$$|R_f|=2.$$

This example shows that the defect term in Theorem (main) can be nonzero even in a very simple tower.

### Example 2: A bielliptic genus-2 tower

Let
$$E/\mathbb{F}_5\colon v^2=u^3+1$$

and
$$C/\mathbb{F}_5\colon y^2=x^6+1.$$

The map
$$f\colon C\to E,\qquad (x,y)\longmapsto (x^2,y),$$

is a finite separable morphism of degree $2$. Let
$$g\colon E\to \mathbb{P}^1,\qquad (u,v)\longmapsto u,$$

so $h=g\circ f$ is the degree-$4$ map $C\to \mathbb{P}^1$ given by $u=x^2$.

Since $J_{\mathbb{P}^1}=0$, we have $P_g=E$ and $P_h=J_C$. We now compute the Weil polynomial of $J_C$. First,
$$|C(\mathbb{F}_5)|=6.$$

Indeed, for $x\in \mathbb{F}_5^\times$ we have $x^6=x^2$, so
$$y^2=x^6+1=x^2+1.$$

When $x=0$ there are two solutions $y=\pm 1$; when $x=\pm 1$ there are no solutions; when $x=\pm 2$ there is one solution $y=0$; and there are two points at infinity. Thus the total is $6$.

Next, a direct count over $\mathbb{F}_{25}$ gives
$$|C(\mathbb{F}_{25})|=46.$$

Let $\alpha_1,\dots,\alpha_4$ be the Frobenius eigenvalues of $J_C$. Then
$$|C(\mathbb{F}_5)| = 5+1-(\alpha_1+\cdots+\alpha_4)=6,$$

so
$$\alpha_1+\cdots+\alpha_4=0.$$

Also,
$$|C(\mathbb{F}_{25})| = 25+1-(\alpha_1^2+\cdots+\alpha_4^2)=46,$$

so
$$\alpha_1^2+\cdots+\alpha_4^2=-20.$$

Write
$$L_C(T)=T^4+a_1T^3+a_2T^2+5a_1T+25.$$

Then
$$a_1=-(\alpha_1+\cdots+\alpha_4)=0$$

and
$$\alpha_1^2+\cdots+\alpha_4^2=a_1^2-2a_2=-2a_2,$$

so $a_2=10$. Hence
$$L_C(T)=T^4+10T^2+25=(T^2+5)^2.$$

But $E$ has Weil polynomial
$$L_E(T)=T^2+5,$$

because $|E(\mathbb{F}_5)|=6$. Therefore
$$J_C \sim E^2.$$

Theorem (main) identifies the geometric meaning of this factorization. Since $P_h=J_C$ and $P_g=E$, we obtain an isogeny
$$J_C\sim P_f\times E.$$

Taking $\mathbb{F}_5$-points gives
$$|P_f(\mathbb{F}_5)| = \frac{|J_C(\mathbb{F}_5)|}{|E(\mathbb{F}_5)|} = \frac{L_C(1)}{6} = \frac{36}{6}=6.$$

Because $\dim(P_f)=g(C)-g(E)=1$, the Prym $P_f$ is an elliptic curve over $\mathbb{F}_5$ with $6$ rational points, hence it is isogenous to $E$. Thus
$$\mathcal W_f(T)=T^2+5, \qquad \mathcal W_g(T)=T^2+5, \qquad \mathcal W_h(T)=(T^2+5)^2,$$

exactly as predicted by Theorem (main), part (weil).

At the level of relative class groups, Corollary (prime-to-degree) with $d=2$ shows that the odd part of $|R_f|$ is $3$, since
$$|R_h|=|J_C(\mathbb{F}_5)|=36,\qquad |R_g|=|E(\mathbb{F}_5)|=6.$$

Thus this example exhibits both the Prym factorization and the prime-to-degree multiplicativity predicted by the theorem.

---

## Conclusion

Theorem (main) gives a conceptual bridge between the two recent arithmetic viewpoints mentioned in the introduction. For a single cover $u\colon C\to D$, Corollary (order-bridge) says that the finite quotient $R_u$ differs from the Prym point count $|P_u(k)|$ only by the pullback kernel $K_u$, which is killed by $\deg(u)$. In towers, Theorem (main) shows that the same degree-torsion phenomenon is the only obstruction to exact multiplicativity on the finite groups $R_u$, while the corresponding Prym varieties and relative Weil polynomials already factor exactly.

---

## Remarks and Open Questions

We close with several remarks and questions.

### Remark

Theorem (main), part (tate) upgrades the previous isogeny statement $P_h\sim P_f\times P_g$ to an integral splitting on $T_\ell$ for every $\ell\nmid dp$. Thus the only obstruction to integral exactness is concentrated at the primes dividing $d$.

### Remark

The theorem isolates the full obstruction to integral exactness of the groups $R_g\to R_h\to R_f$ in the finite subgroup $K_f$. In particular, understanding $K_f$ is the remaining structural issue once the Prym decomposition is known.

### Remark

The factorization
$$\mathcal W_h(T)=\mathcal W_f(T)\mathcal W_g(T)$$

may be viewed as the relative analogue of the tautological identity
$$\frac{L_X(T)}{L_Z(T)}=\frac{L_X(T)}{L_Y(T)}\cdot \frac{L_Y(T)}{L_Z(T)},$$

but the point is that each quotient is realized by an honest abelian variety, namely a Prym, and that the same geometry simultaneously controls the defect term on relative class groups.

### Open Questions

1. Can one describe the extension class of
   $$0\to R_g[\ell^\infty]\to R_h[\ell^\infty]\to R_f[\ell^\infty]\to 0$$
   for primes $\ell\nmid d$ in geometric terms?

2. Under what geometric hypotheses on $f$ can one show $K_f=0$, or at least bound $|K_f|$ sharply in terms of ramification data?

3. Can one promote the split exactness on $T_\ell$ for $\ell\nmid d$ to a useful statement about the associated finite flat group schemes or Néron models away from the bad primes?

4. Kadets and Keliher ask whether, for fixed exponent, only finitely many high-genus coverings can occur [Kadets–Keliher, 2024, arXiv:2410.11962, Question 5.3]. Can the tower exact sequence above be used to reduce that question to better-understood primitive or coprime cases?

---

## References

- **Arango:** Santiago Arango-Piñeros, María Chara, Asimina S. Hamakiotes, Kiran S. Kedlaya, and Gustavo Rama, *Bounds for the relative class number problem for function fields*, arXiv:2412.12467, 2025.

- **KadetsKeliher:** Borys Kadets and Daniel Keliher, *Exponents of Jacobians and relative class groups*, arXiv:2410.11962, 2024.

- **KaniRosen:** Ernst Kani and Michael Rosen, *Idempotent relations and factors of Jacobians*, Mathematische Annalen **284** (1989), 307–327.

- **Lombardo:** Davide Lombardo, Elisa Lorenzo García, Christophe Ritzenthaler, and Jeroen Sijsling, *Decomposing Jacobians via Galois covers*, arXiv:2003.07774, 2020.

- **Mumford:** David Mumford, *Prym Varieties I*, in *Contributions to Analysis (a collection of papers dedicated to Lipman Bers)*, Academic Press, 1974, pp. 325–350.

- **Tate:** John Tate, *Endomorphisms of abelian varieties over finite fields*, Inventiones Mathematicae **2** (1966), 134–144.



