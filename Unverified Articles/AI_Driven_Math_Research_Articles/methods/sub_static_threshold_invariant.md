# Method: Threshold invariant for separated sub-static line factors.
- **Short tag:** sub-static threshold invariant
- **Mechanism type:** rigidity, defect control, comparison geometry
- **Tags:** sub-static, threshold-invariant, line-factor, ODE, slice-tensor, collar
- **Input setting:** The separated sub-static ansatz on R x N with metric g = beta(y)^2 dt^2 + h(y) and potential V = A(t) beta(y).
- **New object / driver:** The slice tensor T_h(beta) and its threshold invariant kappa_* = inf lambda_min(T_h(beta)).
- **Obstruction resolved:** The full tensor inequality is hard to read directly, so there was no exact criterion for when bounded positive nonconstant line factors can exist.
- **Expected outputs:** An equivalence between the tensor inequality and the ODE A'' + kappa_* A >= 0, a sharp existence criterion kappa_* > 0, and local corollaries in terms of trace, directions, determinants, and collars.
- **Transfer targets:** Threshold-type rigidity questions for split or warped structures, especially in boundary collars and low-dimensional slice geometries.
- **Main technical risk:** The criterion is exact only inside the separated ansatz, and connecting it back to broader geometric frameworks requires additional pointwise input.

**Condensation.** The new viewpoint is to compress the full separated sub-static tensor inequality into a single threshold invariant on the slice, so the line factor is governed by one number instead of an opaque tensor system. This overcomes the obstruction that bounded nonconstant line factors were hard to detect or rule out from the original inequality. The operative mechanism is to identify the slice tensor T_h(beta), reduce the problem to the ODE A'' + kappa_* A >= 0, and then read off existence and rigidity directly from the sign of kappa_*. If it works, it gives an exact threshold criterion for nontrivial line dependence together with sharp local tests in compact, three-dimensional, and boundary-collar situations.

## Used in
- [../6-1 Threshold Rigidity for Separated Sub-Static Splittings.md](../6-1 Threshold Rigidity for Separated Sub-Static Splittings.md)
