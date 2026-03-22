# Method: Weighted P-function wall-shear reduction.
- **Short tag:** weighted wall-shear P-function
- **Mechanism type:** boundary-layer, monotonicity, comparison geometry
- **Tags:** weighted-Bochner, P-function, wall-shear, Serrin, Bakry-Emery, drift-Laplacian
- **Input setting:** A bounded domain in a smooth metric measure space with drift-Laplacian equation, finite-dimensional Bakry--Emery lower curvature bound, and Dirichlet boundary data.
- **New object / driver:** The weighted P_m function and the normalized wall shear stress threshold tau_m.
- **Obstruction resolved:** Weighted Serrin results generally assume constant Neumann data from the start, and a weighted wall-shear inequality criterion was missing.
- **Expected outputs:** A sharp implication from tau_m <= 2/m to constancy of P_m and hence constancy of the boundary normal derivative.
- **Transfer targets:** Weighted Serrin rigidity, smooth metric measure geometry, quasi-Einstein models, and other overdetermined drift-Laplacian problems.
- **Main technical risk:** The sharp constant depends on the finite-dimensional Bakry--Emery Bochner algebra and on a clean maximum-principle passage to the boundary.

**Condensation.** The new viewpoint is to treat wall shear stress in the weighted setting through a synthetic-dimension P-function rather than by imposing the full overdetermined boundary condition. This overcomes the gap between existing weighted Serrin theorems and the weaker boundary information one would like to use in applications. The operative mechanism is a weighted Bochner identity for P_m tied to the Bakry--Emery dimension m, together with a sharp boundary inequality at the level 2/m. If it works, it upgrades a single wall-shear bound to constant Neumann data and thereby unlocks the usual weighted Serrin rigidity conclusions.

## Used in
- [../2-2 A weighted wall shear stress criterion for Serrin-type problems.md](../2-2 A weighted wall shear stress criterion for Serrin-type problems.md)
