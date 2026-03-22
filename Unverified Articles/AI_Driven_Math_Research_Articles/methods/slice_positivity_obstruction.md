# Method: Slice-positivity obstruction for separated sub-static line factors.
- **Short tag:** slice positivity obstruction
- **Mechanism type:** rigidity, defect control, comparison geometry
- **Tags:** sub-static, line-factor, slice-positivity, splitting, obstruction, rigidity
- **Input setting:** A separated sub-static splitting g = beta(y)^2 dt^2 + h(y) and V = A(t) beta(y) with bounded positive line factor A.
- **New object / driver:** The slice positivity quantity Q_h(beta) extracted from the sub-static tensor inequality.
- **Obstruction resolved:** After a line-splitting argument one still lacks a criterion forcing the line factor to be constant in the sub-static regime.
- **Expected outputs:** A sharp necessary condition for nonconstant line dependence: if A is nonconstant then Q_h(beta) must be strictly positive everywhere.
- **Transfer targets:** Wang-type sub-static splitting problems, separated rigidity tests, and collar models where one wants to rule out residual line dependence.
- **Main technical risk:** The method gives a one-sided obstruction rather than a full classification, and the sign pattern is sensitive to the exact tensor computation.

**Condensation.** The new viewpoint is to reduce the unresolved line-dependence issue in sub-static splittings to a scalar positivity test on the slice geometry. This overcomes the bottleneck that the tensor inequality S(V,g) >= 0 does not directly show whether the line factor must be constant after splitting. The operative mechanism is an explicit computation of the separated ansatz, which isolates Q_h(beta) as the quantity that every bounded nonconstant line factor must force to stay positive. If it works, it gives an immediate rigidity check: any point where Q_h(beta) <= 0 collapses the line factor to a constant.

## Used in
- [../3-1 A Positivity Obstruction to Nontrivial Line Dependence in Sub-static Splittings.md](../3-1 A Positivity Obstruction to Nontrivial Line Dependence in Sub-static Splittings.md)
