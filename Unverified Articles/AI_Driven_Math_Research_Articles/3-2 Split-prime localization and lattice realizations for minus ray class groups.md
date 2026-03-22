## Method Card
- **Short tag:** split-prime minus localization
- **Full name:** Split-prime minus-localization and lattice realization method.
- **Input setting:** A finite Galois extension of number fields, especially the CM split case G = Gamma x <j> with odd |Gamma|, together with ray-class data (S,T).
- **New object / driver:** An orbitwise localization sequence on the minus part, linked to the Greither--Kataoka lattice map.
- **Obstruction resolved:** It is not transparent which prime orbits change the minus ray class group or whether arbitrary minus submodules can be realized as localization kernels.
- **Expected outputs:** A split-prime criterion for when minus localization contributes, realization of every R-submodule as a minus localization kernel, and exact unit-lattice sequences.
- **Transfer targets:** Equivariant class-group theory, CM Iwasawa-style module constructions, and explicit annihilator or quotient descriptions.
- **Main technical risk:** The realization theorem relies on the split CM product structure and on inverting 2, so it is genuinely sensitive to the ambient Galois decomposition.
- **Mechanism type:** defect control, rigidity, transport
- **Tags:** split-prime, minus-part, ray-class-group, localization, CM-field, Galois
- **Method link:** ../methods/split_prime_minus_localization.md

**Condensation.** The new viewpoint is that the minus ray class group in a CM tower should be analyzed orbit by orbit through localization, with the split primes serving as the only genuine drivers. This overcomes the usual ambiguity about which primes can alter the minus part and whether prescribed minus submodules arise geometrically. The operative mechanism is a G-equivariant localization sequence, followed by passage to the minus component and comparison with the Greither--Kataoka lattice package. If it works, it shows exactly which prime orbits matter, realizes every minus R-submodule as a localization kernel in the split case, and packages the result in explicit exact sequences for units and class groups.

# Split-prime localization and lattice realizations for minus ray class groups

**Shengrong Wu**  
National University of Singapore

_Automatic Pipeline with ChatGPT_

**MSC 2020:** 11R29, 11R33, 11R37  
**Keywords:** ray class groups, CM fields, localization, minus part, Galois modules, lattices

## Abstract

Let $L/K$ be a finite Galois extension of number fields, let $G=\operatorname{Gal}(L/K)$, and let $S,T$ be finite disjoint $G$-stable sets of finite primes of $L$. We first record the classical localization sequence for $T$-ray class groups in an explicit orbitwise $G$-equivariant form. For CM extensions we pass to the minus part after inverting $2$ and prove that a prime orbit contributes to the minus localization term if and only if its decomposition group does not contain complex conjugation. Equivalently, only prime orbits split in $L/L^{+}$ can change the minus ray class group.

The main new result concerns the split case $G\simeq \Gamma\times\langle j\rangle$ with $|\Gamma|$ odd. Writing $R=\mathbb{Z}[1/2][\Gamma]$ and $A=A^{-}$, we show that every $R$-submodule $M\subseteq A$ occurs as a localization kernel $K_{S,T}^{-}$ for a finite set $S$ supported above totally split primes of $K$. For such an $S$ we obtain an exact sequence

$$0\longrightarrow \left(E_{L,S}^{T}/E_{L}^{T}\right)^{-}
\longrightarrow R^{\oplus n}
\longrightarrow M
\longrightarrow 0,$$

so the injective Greither–Kataoka lattice map $\Phi$ sends $[M]$ to the projective-equivalence class of the minus $S$-unit lattice. In the one-generator case this identifies $M$ with a quotient $R/J$ by an annihilator ideal $J$.

---

## 1. Introduction

Localization has always been a natural source of class-group quotients. In a Dedekind domain one kills ideal classes by inverting primes, and in the arithmetic setting this is the mechanism behind the classical overring theorem of Claborn. Recent work of Coykendall and Kettinger revisits this phenomenon from a Galois-theoretic viewpoint, emphasizing class groups of localizations of rings of integers in Galois extensions. On the other hand, Greither and Kataoka have developed a precise framework for studying minus class groups as modules up to equivalence, and for encoding their classes by lattices via an injective map

$$\Phi: C/\!\sim\; \hookrightarrow \operatorname{Lat},$$

where $C$ is the category of finite $R$-modules for a suitable commutative group ring $R$ and $\operatorname{Lat}$ denotes $R$-lattices up to projective equivalence.

This paper begins with an elementary bridge between the two viewpoints. The underlying localization sequence for ray class groups is classical in spirit, but its orbitwise $G$-equivariant form is the correct input for the minus-part analysis. Once one projects to the minus part, a clean structural fact appears: a prime orbit contributes nothing whenever its decomposition group contains complex conjugation. This isolates the slogan that only primes split in the CM direction can affect minus ray class groups.

The main point of the paper is that one can go further. If $L/K$ is abelian CM with

$$G\simeq \Gamma\times \langle j\rangle,
\qquad |\Gamma|\ \text{odd},
\qquad R=\mathbb{Z}[1/2][\Gamma],$$

and if $A=A^{-}$, then localization at totally split primes of $K$ produces free projective presentations of submodules of $A$. Using the ray class field and the Cebotarev density theorem, we prove that **every** $R$-submodule of $A$ arises in this way. This gives a concrete arithmetic source for lattice representatives on the image side of $\Phi$.

The first theorem is the preparatory localization sequence.

**Theorem 1.1.** Let $L/K$ be a finite Galois extension of number fields with group $G$, and let $S,T$ be finite disjoint $G$-stable sets of finite primes of $L$. Choose orbit representatives $w_1,\dots,w_r\in S$, and let $D_i\subseteq G$ be the decomposition group of $w_i$. Then there is a natural exact sequence of $\mathbb{Z}[G]$-modules

$$0\longrightarrow E_{L,S}^{T}/E_{L}^{T}
\longrightarrow \bigoplus_{i=1}^{r} \mathbb{Z}[G/D_i]
\longrightarrow \operatorname{Cl}_{L}^{T}
\longrightarrow \operatorname{Cl}_{L,S}^{T}
\longrightarrow 0.$$

For CM extensions we obtain the following refinement.

**Theorem 1.2.** Assume in addition that $L$ is a CM field and let $j\in G$ be complex conjugation. Put

$$M^{-}:=\frac{1-j}{2}\left(\mathbb{Z}[1/2]\otimes_{\mathbb{Z}} M\right)$$

for every $\mathbb{Z}[G]$-module $M$. Then there is an exact sequence

$$0\longrightarrow \left(E_{L,S}^{T}/E_{L}^{T}\right)^{-}
\longrightarrow \bigoplus_{i=1}^{r} \left(\mathbb{Z}[1/2][G/D_i]\right)^{-}
\longrightarrow \operatorname{Cl}_{L}^{T,-}
\longrightarrow \operatorname{Cl}_{L,S}^{T,-}
\longrightarrow 0.$$

Moreover,

$$\left(\mathbb{Z}[1/2][G/D_i]\right)^{-}=0
\qquad\Longleftrightarrow\qquad
j\in D_i.$$

Hence only those prime orbits on which complex conjugation acts without fixed points can affect $\operatorname{Cl}_{L}^{T,-}$.

The genuinely new result is the following realization theorem.

**Theorem 1.3.** Assume that $L/K$ is a finite abelian CM extension with

$$G\simeq \Gamma\times\langle j\rangle,
\qquad |\Gamma|\ \text{odd},
\qquad R=\mathbb{Z}[1/2][\Gamma],
\qquad A=\operatorname{Cl}_{L}^{T,-}.$$

For every $R$-submodule $M\subseteq A$ there exists a finite set $S_0$ of finite primes of $K$, all totally split in $L/K$, such that if $S$ is the set of primes of $L$ above $S_0$, then

$$K_{S,T}^{-}:=\ker\!\bigl(\operatorname{Cl}_{L}^{T,-}\to \operatorname{Cl}_{L,S}^{T,-}\bigr)=M.$$

More precisely, if $M$ is generated by $c_1,\dots,c_n\in A$, one may choose $S_0=\{v_1,\dots,v_n\}$ and primes $\mathfrak p_i\mid v_i$ of $L$ such that the localization sequence becomes

$$0\longrightarrow \left(E_{L,S}^{T}/E_{L}^{T}\right)^{-}
\longrightarrow R^{\oplus n}
\xrightarrow{\ \lambda\ }
M
\longrightarrow 0,
\qquad \lambda(e_i)=[\mathfrak p_i]^{-},$$

and $R[\mathfrak p_i]^{-}=Rc_i$ for each $i$. Consequently,

$$\Phi([M])=\left[\left(E_{L,S}^{T}/E_{L}^{T}\right)^{-}\right]
\in \operatorname{Lat}.$$

Theorem 1.1 should be viewed as infrastructure, not as the new contribution. The novelty lies first in the exact minus-part criterion of Theorem 1.2, and then in Theorem 1.3, which shows that localization at totally split primes naturally lands inside the Greither–Kataoka lattice formalism.

---

## 2. Notation and preliminaries

### 2.1 Ray class groups and $S$-units

Let $L$ be a number field, and let $T$ be a finite set of finite primes of $L$. We write

$$L_T^{\times} := \{a\in L^{\times} : a\equiv 1 \pmod{w}\text{ for all }w\in T\}.$$

Let $I_L^T$ be the free abelian group on the finite primes of $L$ outside $T$. Define

$$P_L^T := \{(a)\in I_L^T : a\in L_T^{\times}\}
\qquad\text{and}\qquad
\operatorname{Cl}_{L}^{T}:=I_L^T/P_L^T.$$

Thus $\operatorname{Cl}_{L}^{T}$ is the $T$-ray class group of $L$.

Now let $S$ be a finite set of finite primes of $L$ disjoint from $T$. Let $I_{L,S}^{T}$ be the free abelian group on the finite primes outside $S\cup T$. The natural projection

$$\pi_S:I_L^T\longrightarrow I_{L,S}^{T}$$

deletes the $S$-coordinates. We define

$$P_{L,S}^{T}:=\pi_S(P_L^T)
\qquad\text{and}\qquad
\operatorname{Cl}_{L,S}^{T}:=I_{L,S}^{T}/P_{L,S}^{T}.$$

Equivalently, $\operatorname{Cl}_{L,S}^{T}$ is the $T$-ray class group of the ring of $S$-integers.

We also use the $T$-ray unit groups

$$E_{L}^{T}:=\mathcal{O}_L^{\times}\cap L_T^{\times}$$

and

$$E_{L,S}^{T}:=\{a\in L_T^{\times}: \operatorname{ord}_w(a)=0\ \text{for all finite }w\notin S\cup T\}.$$

Thus $E_{L,S}^{T}$ is the group of $T$-ray $S$-units. Its quotient by $E_{L}^{T}$ injects into the free abelian group on $S$ via valuations.

### 2.2 Minus parts

Assume that $L$ is a CM field, and let $j$ denote complex conjugation. Since $j$ is central of order $2$, the idempotents

$$e^{\pm}:=\frac{1\pm j}{2}\in \mathbb{Z}[1/2][G]$$

act on every $\mathbb{Z}[1/2][G]$-module. For a $\mathbb{Z}[G]$-module $M$ we set

$$M^{\pm}:=e^{\pm}(\mathbb{Z}[1/2]\otimes_{\mathbb{Z}} M).$$

Because $e^{\pm}$ are complementary idempotents, the functors $M\mapsto M^{\pm}$ are exact after inverting $2$.

In the split abelian situation

$$G\simeq \Gamma\times\langle j\rangle,
\qquad |\Gamma|\ \text{odd},$$

we identify the minus quotient ring

$$\mathbb{Z}[1/2][G]^{-}:=\mathbb{Z}[1/2][G]/(1+j)$$

with $R=\mathbb{Z}[1/2][\Gamma]$ through the inclusion $\Gamma\hookrightarrow G$. Any minus module is then naturally an $R$-module, and $j$ acts as $-1$.

### 2.3 The Greither–Kataoka lattice map

Let $R=\mathbb{Z}[1/2][\Gamma]$ with $\Gamma$ finite abelian of odd order. Let $C$ be the category of finite $R$-modules. Following Greither and Kataoka, let $\operatorname{Lat}$ denote the commutative monoid of $R$-lattices up to projective equivalence: an $R$-lattice is a finitely generated torsion-free $R$-module, and two lattices $L,L'$ are projectively equivalent if $L\oplus P\cong L'\oplus P'$ for some finitely generated projective $R$-modules $P,P'$.

For $X\in C$, choose a surjection $F\twoheadrightarrow X$ from a finitely generated projective $R$-module and let $L_X$ be its kernel. By Greither–Kataoka, the projective-equivalence class of $L_X$ depends only on the equivalence class $[X]\in C/\!\sim$, and this defines an injective monoid homomorphism

$$\Phi:C/\!\sim\;\hookrightarrow \operatorname{Lat}.$$

The basic point for us is that every short exact sequence

$$0\longrightarrow L\longrightarrow P\longrightarrow X\longrightarrow 0$$

with $P$ finitely generated projective represents $\Phi([X])$ by the class of the lattice $L$.

---

## 3. Localization sequences

We first record the underlying localization sequence without the group action.

**Lemma 3.1.** Let $L$ be a number field and let $S,T$ be finite disjoint sets of finite primes of $L$. Then there is an exact sequence

$$0\longrightarrow E_{L,S}^{T}/E_{L}^{T}
\longrightarrow \bigoplus_{w\in S}\mathbb{Z}\cdot w
\longrightarrow \operatorname{Cl}_{L}^{T}
\longrightarrow \operatorname{Cl}_{L,S}^{T}
\longrightarrow 0.$$

**Proof.** There is a short exact sequence

$$0\longrightarrow \bigoplus_{w\in S}\mathbb{Z}\cdot w
\longrightarrow I_L^T
\xrightarrow{\ \pi_S\ } I_{L,S}^{T}
\longrightarrow 0.$$

Consider the commutative diagram with exact rows

$$\begin{array}{ccccccccc}
0&\longrightarrow&P_L^T&\longrightarrow&I_L^T&\longrightarrow&\operatorname{Cl}_{L}^{T}&\longrightarrow&0\\
&&\downarrow \pi_S|_{P_L^T}&&\downarrow \pi_S&&\downarrow&&\\
0&\longrightarrow&P_{L,S}^{T}&\longrightarrow&I_{L,S}^{T}&\longrightarrow&\operatorname{Cl}_{L,S}^{T}&\longrightarrow&0.
\end{array}$$

The snake lemma yields an exact sequence

$$0\longrightarrow \ker(\pi_S|_{P_L^T})
\longrightarrow \bigoplus_{w\in S}\mathbb{Z}\cdot w
\longrightarrow \operatorname{Cl}_{L}^{T}
\longrightarrow \operatorname{Cl}_{L,S}^{T}
\longrightarrow 0.$$

Now $(a)\in P_L^T$ lies in the kernel exactly when $a\in L_T^{\times}$ and the support of $(a)$ is contained in $S$, i.e. when $a\in E_{L,S}^{T}$. Two such elements define the same principal divisor if and only if they differ by an element of $E_{L}^{T}$. Hence

$$\ker(\pi_S|_{P_L^T})\cong E_{L,S}^{T}/E_{L}^{T},$$

and the result follows. $\square$

The next statement is the orbitwise $G$-equivariant reformulation.

**Theorem 3.2.** Let $L/K$ be a finite Galois extension of number fields with group $G$, and let $S,T$ be finite disjoint $G$-stable sets of finite primes of $L$. Choose orbit representatives $w_1,\dots,w_r\in S$, and let $D_i\subseteq G$ be the decomposition group of $w_i$. Then there is a natural exact sequence of $\mathbb{Z}[G]$-modules

$$0\longrightarrow E_{L,S}^{T}/E_{L}^{T}
\longrightarrow \bigoplus_{i=1}^{r} \mathbb{Z}[G/D_i]
\longrightarrow \operatorname{Cl}_{L}^{T}
\longrightarrow \operatorname{Cl}_{L,S}^{T}
\longrightarrow 0.$$

**Proof.** Lemma 3.1 is $G$-equivariant because $S$ and $T$ are $G$-stable. Moreover,

$$\bigoplus_{w\in S}\mathbb{Z}\cdot w
\cong \bigoplus_{i=1}^{r} \mathbb{Z}[G/D_i]$$

as $\mathbb{Z}[G]$-modules, since each orbit $G\cdot w_i$ is identified with $G/D_i$. Substituting this decomposition into Lemma 3.1 gives the result. $\square$

We now pass to the minus part.

**Theorem 3.3.** Assume in addition that $L$ is CM and let $j\in G$ be complex conjugation. Then there is an exact sequence

$$0\longrightarrow \left(E_{L,S}^{T}/E_{L}^{T}\right)^{-}
\longrightarrow \bigoplus_{i=1}^{r}\left(\mathbb{Z}[1/2][G/D_i]\right)^{-}
\longrightarrow \operatorname{Cl}_{L}^{T,-}
\longrightarrow \operatorname{Cl}_{L,S}^{T,-}
\longrightarrow 0.$$

**Proof.** Tensor the sequence of Theorem 3.2 with $\mathbb{Z}[1/2]$. Exactness is preserved because $\mathbb{Z}[1/2]$ is flat over $\mathbb{Z}$. Applying the exact projector $e^{-}=(1-j)/2$ gives the stated sequence. $\square$

The contribution of each orbit is controlled by the action of complex conjugation.

**Proposition 3.4.** Let $G$ be a finite group with central involution $j$, and let $D\leq G$. Then

$$\left(\mathbb{Z}[1/2][G/D]\right)^{-}=0
\qquad\Longleftrightarrow\qquad
j\in D.$$

If $j\notin D$, then $\left(\mathbb{Z}[1/2][G/D]\right)^{-}$ is a free $\mathbb{Z}$-module of rank $[G:D]/2$.

**Proof.** Let $X=G/D$. If $j\in D$, then $jgD=gD$ for every $g\in G$, so $j$ acts trivially on $X$ and therefore on $\mathbb{Z}[1/2][X]$; hence the minus part is zero.

Conversely, assume $j\notin D$. If $jgD=gD$ for some $g$, then $g^{-1}jg\in D$. Since $j$ is central, this implies $j\in D$, a contradiction. Thus the action of $j$ on $X$ is free, every $\langle j\rangle$-orbit on $X$ has size $2$, and choosing one representative from each such orbit yields a $\mathbb{Z}$-basis of $\left(\mathbb{Z}[1/2][X]\right)^{-}$ consisting of the differences $x-jx$. The number of these basis vectors is $\#X/2=[G:D]/2$. $\square$

**Corollary 3.5.** Under the hypotheses of Theorem 3.3, only those prime orbits in $S$ whose decomposition groups do not contain $j$ can affect $\operatorname{Cl}_{L}^{T,-}$. In particular, if $j\in D_i$ for every $i$, then

$$\operatorname{Cl}_{L}^{T,-}\cong \operatorname{Cl}_{L,S}^{T,-}.$$

Equivalently, localizing at primes of $L$ above primes of $L^{+}$ that are inert or ramified in $L/L^{+}$ leaves the minus ray class group unchanged.

**Proof.** This follows immediately from Theorem 3.3 and Proposition 3.4. $\square$

In the split case, the orbit modules become honest permutation modules over $R=\mathbb{Z}[1/2][\Gamma]$.

**Proposition 3.6.** Assume $G=\Gamma\times\langle j\rangle$ and let $D\leq G$. Write $\bar D$ for the image of $D$ in $\Gamma$.

1. If $j\in D$, then $\left(\mathbb{Z}[1/2][G/D]\right)^{-}=0$.
2. If $j\notin D$, then the projection $D\to \bar D$ is an isomorphism and there is a natural isomorphism of $R$-modules
$$\left(\mathbb{Z}[1/2][G/D]\right)^{-}\cong \mathbb{Z}[1/2][\Gamma/\bar D].$$

In particular, if $D=1$, then $\left(\mathbb{Z}[1/2][G]\right)^{-}\cong R$.

**Proof.** Part (i) is Proposition 3.4. Assume $j\notin D$. Then $D\cap \langle j\rangle=1$, so the projection $D\to \bar D$ is injective and hence an isomorphism onto its image. Define

$$\Psi:\mathbb{Z}[1/2][\Gamma/\bar D]\longrightarrow \left(\mathbb{Z}[1/2][G/D]\right)^{-}$$

on basis elements by

$$\Psi(\gamma\bar D)=\frac{1-j}{2}(\gamma D).$$

This is well defined because if $\gamma_1\bar D=\gamma_2\bar D$, then $\gamma_2^{-1}\gamma_1\in \bar D$ and therefore $\gamma_1D=\gamma_2D$. The map is $R$-linear and surjective by construction. Both source and target are free $\mathbb{Z}$-modules of rank $[\Gamma:\bar D]=[G:D]/2$, so $\Psi$ is an isomorphism. $\square$

**Remark.** Theorem 3.2 is classical in spirit; it is the ray-class localization sequence written in orbitwise $G$-equivariant form. The genuinely new structural observation begins with Theorem 3.3 and Proposition 3.4, where decomposition groups containing complex conjugation disappear from the minus localization term.

---

## 4. Split-prime localization kernels and lattice realizations

From now on we assume that $L/K$ is a finite abelian CM extension with

$$G\simeq \Gamma\times\langle j\rangle,
\qquad |\Gamma|\ \text{odd},
\qquad R=\mathbb{Z}[1/2][\Gamma],
\qquad A=\operatorname{Cl}_{L}^{T,-}.$$

Let $S_0$ be a finite set of finite primes of $K$ that are totally split in $L/K$, and let $S$ be the set of primes of $L$ above $S_0$. Since each $v\in S_0$ has trivial decomposition group in $L/K$, the corresponding localization term is free over $R$.

**Proposition 4.1.** With notation as above, suppose $S_0=\{v_1,\dots,v_n\}$ consists of finite primes of $K$ totally split in $L/K$, and let $S$ be the set of primes of $L$ above $S_0$. Then there is an exact sequence of $R$-modules

$$0\longrightarrow U_{S,T}^{-}
\longrightarrow R^{\oplus n}
\longrightarrow A
\longrightarrow \operatorname{Cl}_{L,S}^{T,-}
\longrightarrow 0,$$

where

$$U_{S,T}^{-}:=\left(E_{L,S}^{T}/E_{L}^{T}\right)^{-}.$$

Equivalently, if

$$K_{S,T}^{-}:=\ker\!\bigl(A\to \operatorname{Cl}_{L,S}^{T,-}\bigr),$$

then

$$0\longrightarrow U_{S,T}^{-}
\longrightarrow R^{\oplus n}
\longrightarrow K_{S,T}^{-}
\longrightarrow 0$$

is exact.

**Proof.** Each prime $v_i\in S_0$ contributes one $G$-orbit in $S$, and its decomposition group is trivial. Therefore Proposition 3.6 identifies the corresponding summand in Theorem 3.3 with $R$. Summing over the $n$ totally split primes gives the first exact sequence. The second is obtained by restricting the middle map to its image, which is precisely $K_{S,T}^{-}$. $\square$

The next lemma says that every minus class has an honest lift to the full ray class group.

**Lemma 4.2.** The natural map

$$\operatorname{Cl}_{L}^{T}\longrightarrow A=\operatorname{Cl}_{L}^{T,-},
\qquad x\longmapsto x^{-},$$

is surjective.

**Proof.** Let $B=\operatorname{Cl}_{L}^{T}$. Since $B$ is finite, the localization map $B\to \mathbb{Z}[1/2]\otimes_{\mathbb{Z}}B$ kills the $2$-primary part and identifies $\mathbb{Z}[1/2]\otimes_{\mathbb{Z}}B$ with the odd part $B_{\text{odd}}$ of $B$. Because $2$ is invertible on $B_{\text{odd}}$, we have a direct sum decomposition

$$B_{\text{odd}}=B_{\text{odd}}^{+}\oplus B_{\text{odd}}^{-}.$$

Thus the composite

$$B\twoheadrightarrow B_{\text{odd}}\twoheadrightarrow B_{\text{odd}}^{-}=A$$

is surjective. $\square$

The key arithmetic input is that classes can be represented by primes totally split in $L/K$.

**Lemma 4.3.** Let $c\in A$. Then there exists a finite prime $v$ of $K$, totally split in $L/K$, and a prime $\mathfrak p$ of $L$ above $v$ such that

$$R[\mathfrak p]^{-}=Rc$$

in $A$.

More generally, given any finite set of primes of $K$ to be avoided, one may choose $v$ outside that set.

**Proof.** Choose $x\in \operatorname{Cl}_{L}^{T}$ with $x^{-}=c$ by Lemma 4.2. Let $H^{T}/L$ be the $T$-ray class field of $L$, so that Artin reciprocity identifies

$$\operatorname{Gal}(H^{T}/L)\cong \operatorname{Cl}_{L}^{T}$$

canonically. Let $\sigma_x\in \operatorname{Gal}(H^{T}/L)$ be the element corresponding to $x$.

Because $L/K$ is Galois and $T$ is $G$-stable, the ray class subgroup defining $H^{T}$ is $G$-stable. Hence $H^{T}/K$ is Galois and $\operatorname{Gal}(H^{T}/L)$ is a normal subgroup of $\operatorname{Gal}(H^{T}/K)$. By the Cebotarev density theorem, there exist infinitely many finite primes $v$ of $K$, outside any prescribed finite set, whose Frobenius conjugacy class in $\operatorname{Gal}(H^{T}/K)$ is the conjugacy class of $\sigma_x$.

Fix such a prime $v$, and let $\mathfrak p$ be any prime of $L$ above $v$. Since $\sigma_x\in \operatorname{Gal}(H^{T}/L)$, its image in $\operatorname{Gal}(L/K)$ is trivial. Therefore the Frobenius of $v$ in $L/K$ is trivial, so $v$ is totally split in $L/K$.

For the chosen $\mathfrak p$, the class $[\mathfrak p]\in \operatorname{Cl}_{L}^{T}$ corresponds under Artin reciprocity to a conjugate of $\sigma_x$ inside $\operatorname{Gal}(H^{T}/K)$. Because $L/K$ is abelian, this means that $[\mathfrak p]$ is a $G$-translate of $x$. Passing to the minus part gives

$$[\mathfrak p]^{-}\in G\cdot c.$$

Now every element of $G$ acts on the $R$-module $A$ by a unit of $R$: elements of $\Gamma$ are group-ring units and $j$ acts as $-1$. Hence

$$R[\mathfrak p]^{-}=Rc,$$

as claimed. $\square$

We can now realize arbitrary submodules of $A$ as localization kernels.

**Theorem 4.4.** Let $M\subseteq A$ be an $R$-submodule.

1. There exists a finite set $S_0$ of finite primes of $K$, all totally split in $L/K$, such that if $S$ is the set of primes of $L$ above $S_0$, then
$$K_{S,T}^{-}=M.$$

2. If $M$ is generated by $c_1,\dots,c_n\in A$, then one may choose $S_0=\{v_1,\dots,v_n\}$ and primes $\mathfrak p_i\mid v_i$ of $L$ so that the exact sequence of Proposition 4.1 takes the form
$$0\longrightarrow U_{S,T}^{-}
\longrightarrow R^{\oplus n}
\xrightarrow{\ \lambda\ }
M
\longrightarrow 0,
\qquad \lambda(e_i)=[\mathfrak p_i]^{-},$$
with $R[\mathfrak p_i]^{-}=Rc_i$ for each $i$.

3. Consequently,
$$\Phi([M])=[U_{S,T}^{-}]\in \operatorname{Lat}.$$

**Proof.** Choose generators $c_1,\dots,c_n$ of $M$. By Lemma 4.3, after avoiding finitely many primes already chosen and all primes below $T$, we may choose pairwise distinct finite primes $v_1,\dots,v_n$ of $K$, all totally split in $L/K$, and primes $\mathfrak p_i\mid v_i$ of $L$ such that

$$R[\mathfrak p_i]^{-}=Rc_i
\qquad (1\leq i\leq n).$$

Let $S_0=\{v_1,\dots,v_n\}$ and let $S$ be the set of primes of $L$ above $S_0$.

By Proposition 4.1, there is an exact sequence

$$0\longrightarrow U_{S,T}^{-}
\longrightarrow R^{\oplus n}
\xrightarrow{\ \mu\ }
A
\longrightarrow \operatorname{Cl}_{L,S}^{T,-}
\longrightarrow 0,$$

where, after choosing the ordered primes $\mathfrak p_i$ as orbit representatives, the $i$th basis vector $e_i$ maps to $[\mathfrak p_i]^{-}$. Therefore

$$\operatorname{im}(\mu)=\sum_{i=1}^{n} R[\mathfrak p_i]^{-}
=\sum_{i=1}^{n}Rc_i=M.$$

But $\operatorname{im}(\mu)$ is exactly the kernel of $A\to \operatorname{Cl}_{L,S}^{T,-}$, so $K_{S,T}^{-}=M$. This proves (1) and (2).

For (3), observe that the short exact sequence in (2) is a projective presentation of the finite $R$-module $M$, since $R^{\oplus n}$ is finitely generated projective. By the definition of the Greither–Kataoka map $\Phi$, the lattice representing $\Phi([M])$ is the kernel of any such projective presentation. Hence

$$\Phi([M])=[U_{S,T}^{-}]. \square$$

The one-generator case yields an explicit annihilator-ideal description.

**Corollary 4.5.** Let $c\in A$, and put $M=Rc$. Then there exists a finite prime $v$ of $K$, totally split in $L/K$, and a prime $\mathfrak p$ of $L$ above $v$ such that if $S$ is the set of primes of $L$ above $v$, then

$$K_{S,T}^{-}=Rc$$

and there is an exact sequence

$$0\longrightarrow J(c)
\longrightarrow R
\longrightarrow Rc
\longrightarrow 0,
\qquad J(c):=\operatorname{Ann}_R(c).$$

Consequently,

$$Rc\cong R/J(c),
\qquad
\Phi([Rc])=[J(c)],
\qquad
\operatorname{Fitt}_R(Rc)=J(c).$$

If $Rc=A$, then $\operatorname{Cl}_{L,S}^{T,-}=0$ for a single totally split prime orbit.

**Proof.** Apply Theorem 4.4 with $n=1$. Then we have an exact sequence

$$0\longrightarrow U_{S,T}^{-}
\longrightarrow R
\longrightarrow Rc
\longrightarrow 0,$$

where $1\in R$ maps to $[\mathfrak p]^{-}$ and $R[\mathfrak p]^{-}=Rc$. The kernel is therefore the annihilator ideal of the chosen generator, which equals $\operatorname{Ann}_R(c)$ because $[\mathfrak p]^{-}$ differs from $c$ by a unit in $R$. This proves the displayed exact sequence and the isomorphism $Rc\cong R/J(c)$. The identity $\Phi([Rc])=[J(c)]$ is part (3) of Theorem 4.4, and $\operatorname{Fitt}_R(R/J)=J$ for every ideal $J$ of a commutative ring. If $Rc=A$, then $K_{S,T}^{-}=A$, so the map $A\to \operatorname{Cl}_{L,S}^{T,-}$ is zero and therefore $\operatorname{Cl}_{L,S}^{T,-}=0$. $\square$

**Corollary 4.6.** If $A=\operatorname{Cl}_{L}^{T,-}$ is generated by $n$ elements as an $R$-module, then there exists a set $S_0$ of $n$ finite primes of $K$, totally split in $L/K$, such that localizing at the primes above $S_0$ kills the minus ray class group:

$$\operatorname{Cl}_{L,S}^{T,-}=0.$$

In particular, if $A$ is cyclic as an $R$-module, one totally split prime orbit suffices.

**Proof.** Apply Theorem 4.4 to the submodule $M=A$. $\square$

---

## 5. Examples and applications

We retain the two basic imaginary quadratic examples from the localization sequence, and then reinterpret the split case through Corollary 4.5. In an imaginary quadratic field we have $G=\{1,j\}$, so $\Gamma=1$ and $R=\mathbb{Z}[1/2]$.

**Example 5.1.** *An inert prime does not change the minus part.*

Let

$$L=\mathbb{Q}(\sqrt{-23}),
\qquad
\mathcal{O}_L=\mathbb{Z}[\omega],
\qquad
\omega=\frac{1+\sqrt{-23}}{2}.$$

The reduced positive definite binary quadratic forms of discriminant $-23$ are

$$[1,1,6],\qquad [2,1,3],\qquad [2,-1,3],$$

so the class number of $L$ is $3$ and $\operatorname{Cl}_L\simeq C_3$. Now

$$\left(\frac{-23}{5}\right)=-1,$$

so $5$ is inert in $L/\mathbb{Q}$. Let $\mathfrak q$ be the unique prime of $L$ above $5$. Then $j$ fixes $\mathfrak q$, so $j\in D_{\mathfrak q}$. Corollary 3.5 gives

$$\operatorname{Cl}_L^{-}\cong \operatorname{Cl}_{L,\{\mathfrak q\}}^{-}.$$

Since $\operatorname{Cl}_L$ has odd order and $j$ acts by inversion, its minus part is all of $\operatorname{Cl}_L$. Thus

$$\operatorname{Cl}_{L,\{\mathfrak q\}}^{-}\cong C_3.$$

So localizing at an inert prime leaves the minus class group unchanged.

**Example 5.2.** *A split orbit kills the minus class group.*

Keep $L=\mathbb{Q}(\sqrt{-23})$. Since $-23\equiv 1\pmod 8$, the prime $2$ splits:

$$2\mathcal{O}_L=\mathfrak p\,\bar{\mathfrak p},
\qquad
\mathfrak p=(2,\omega),
\qquad
\bar{\mathfrak p}=(2,\omega-1).$$

The two nonprincipal reduced forms above correspond to the two nontrivial ideal classes, so $[\mathfrak p]$ is a nontrivial element of $\operatorname{Cl}_L\simeq C_3$ and hence generates the whole class group. Put

$$S=\{\mathfrak p,\bar{\mathfrak p}\},
\qquad T=\varnothing.$$

Then $S$ is one $G$-orbit with trivial decomposition group. Theorem 3.2 gives

$$\operatorname{Cl}_{L,S}\cong \operatorname{Cl}_L/\langle [\mathfrak p]\rangle=0.$$

In particular,

$$\operatorname{Cl}_{L,S}^{-}=0.$$

This is the simplest instance of Corollary 4.6: the minus class group is cyclic over $R=\mathbb{Z}[1/2]$, so one split prime orbit suffices.

**Example 5.3.** *The annihilator ideal in the quadratic example.*

Continue with Example 5.2, and let $c\in A=\operatorname{Cl}_L^{-}\simeq C_3$ be a generator. Since $R=\mathbb{Z}[1/2]$, we have

$$J(c)=\operatorname{Ann}_{\mathbb{Z}[1/2]}(c)=3\mathbb{Z}[1/2].$$

Corollary 4.5 shows that for the split orbit $S=\{\mathfrak p,\bar{\mathfrak p}\}$ above $2$ there is an exact sequence

$$0\longrightarrow 3\mathbb{Z}[1/2]
\longrightarrow \mathbb{Z}[1/2]
\longrightarrow \operatorname{Cl}_L^{-}
\longrightarrow 0,$$

so

$$\operatorname{Cl}_L^{-}\cong \mathbb{Z}[1/2]/3\mathbb{Z}[1/2]
\qquad\text{and}\qquad
\Phi([\operatorname{Cl}_L^{-}])=[3\mathbb{Z}[1/2]].$$

Thus in this case the Greither–Kataoka lattice representative is literally the ideal $3\mathbb{Z}[1/2]$.

---

## 6. Remarks and open questions

**Remark.** *What is classical and what is new.*

Theorem 3.2 is a convenient $G$-equivariant packaging of the classical localization sequence for ray class groups. The first new structural point is Theorem 3.3 together with Proposition 3.4. The main new theorem is Theorem 4.4, which shows that localization at totally split primes realizes arbitrary submodules of a fixed minus ray class group and places them directly inside the lattice formalism.

**Remark.** *Comparison with Greither–Kataoka local terms.*

In the recent nonabelian work of Greither and Kataoka, local minus modules also exhibit a dichotomy governed by whether complex conjugation lies in the decomposition subgroup. Our localization terms arise from deleting prime orbits rather than from ramification modules, so the constructions are different, but the same decomposition-group principle reappears.

**Remark.** *What remains open.*

Theorem 4.4 places every submodule $M\subseteq A$ into the $\Phi$-formalism by identifying $\Phi([M])$ with a minus $S$-unit lattice. What it does **not** yet do is identify this lattice class with an explicit combination of admissible generators appearing in prior work. Making that comparison precise would turn the present bridge into a deeper structural dictionary.

**Remark.** *Non-split extensions.*

Theorem 4.4 uses the splitting $G\simeq \Gamma\times\langle j\rangle$ in an essential way: totally split prime orbits then contribute free $R$-modules. It would be interesting to formulate an analogue for non-split CM extensions directly over the minus quotient ring $\mathbb{Z}[1/2][G]^{-}$.

**Remark.** *The 2-primary problem.*

Everything in the paper takes place after inverting $2$. This is unavoidable for the idempotent projector $e^{-}=(1-j)/2$. A refined statement that retains $2$-primary information would require a different formulation of the minus part and a more delicate control of localization kernels.

---

## References

1. Claborn, L. (1965). Dedekind domains: Overrings and semi-prime elements. *Pacific Journal of Mathematics*, 15(3), 799–804.

2. Coykendall, J., & Kettinger, J. (2025). Galois Action and Localization in Number Fields. arXiv:2510.10018.

3. Greither, C., & Kataoka, T. (2024). Fitting ideals and various notions of equivalence for modules. *manuscripta mathematica*, 173(1–2), 259–291.

4. Greither, C., & Kataoka, T. (2024). On the Galois module structure of minus class groups. arXiv:2404.11823.

5. Greither, C., & Kataoka, T. (2025). Determining class groups as Galois modules up to equivalence for some nonabelian extensions. arXiv:2508.15242.

6. Marcus, D. A. (2018). *Number Fields* (2nd ed.). Springer.

7. Neukirch, J. (1999). *Algebraic Number Theory*. Springer.




