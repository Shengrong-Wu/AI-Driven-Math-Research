import Certificates.MathematicaOracle

namespace NullFrame
namespace Main

open Outgoing Incoming

variable {𝕜 : Type _} [Field 𝕜]

def bianchi_B1 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (α : Alpha 𝕜 F.n) (β : Beta 𝕜 F.n) (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n) (ν : Nu 𝕜 F.n) (Riem : Tensor4 𝕜 F.n),
    F.nabla3.onTensor2 α.toMatrix = b1RHS F α β σ τ ν Riem

def bianchi_B2 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (α : Alpha 𝕜 F.n) (β : Beta 𝕜 F.n) (ν : Nu 𝕜 F.n),
    F.nabla4.onTensor1 β = b2RHS F α β ν

def bianchi_B3 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (α : Alpha 𝕜 F.n) (β : Beta 𝕜 F.n) (ν : Nu 𝕜 F.n),
    F.nabla4.onTensor3 ν.toTensor = b3RHS F α β ν

def bianchi_B4 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (τ : Tau 𝕜 F.n) (σ : Sigma 𝕜 F.n) (uβ : UBeta 𝕜 F.n)
    (ν : Nu 𝕜 F.n) (uν : UNu 𝕜 F.n) (Riem : Tensor4 𝕜 F.n),
    F.nabla3.onTensor3 ν.toTensor = b4RHS F τ σ uβ ν uν Riem

def bianchi_B5 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (α : Alpha 𝕜 F.n) (σ : Sigma 𝕜 F.n) (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n) (Riem : Tensor4 𝕜 F.n),
    F.nabla4.onTensor4 Riem = b5RHS F α σ τ ν Riem

def bianchi_B6 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (α : Alpha 𝕜 F.n) (β : Beta 𝕜 F.n) (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n) (ν : Nu 𝕜 F.n),
    F.nabla4.onTensor2 σ.toMatrix = b6RHS F α β σ τ ν

def bianchi_B7 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (uα : UAlpha 𝕜 F.n) (σ : Sigma 𝕜 F.n) (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n) (Riem : Tensor4 𝕜 F.n),
    F.nabla3.onTensor4 Riem = b7RHS F uα σ τ uν Riem

def bianchi_B8 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (uα : UAlpha 𝕜 F.n) (σ : Sigma 𝕜 F.n) (τ : Tau 𝕜 F.n)
    (uν : UNu 𝕜 F.n) (Riem : Tensor4 𝕜 F.n),
    F.nabla3.onTensor2 τ.toMatrix = b8RHS F uα σ τ uν Riem

def bianchi_B9 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (ρ : 𝕜) (τ : Tau 𝕜 F.n),
    ρ = -((1 / 2 : 𝕜) * Incoming.tauTrace F τ) →
    F.nabla3.onScalar (Incoming.tauTrace F τ) = Matrix.trace (F.nabla3.onTensor2 τ.toMatrix) →
    F.nabla3.onScalar ρ = -((1 / 2 : 𝕜) * Matrix.trace (F.nabla3.onTensor2 τ.toMatrix))

def bianchi_B10 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (uα : UAlpha 𝕜 F.n) (uβ : UBeta 𝕜 F.n) (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n) (uν : UNu 𝕜 F.n),
    F.nabla3.onTensor2 σ.toMatrix = b10RHS F uα uβ σ τ uν

def bianchi_B11 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (β : Beta 𝕜 F.n) (σ : Sigma 𝕜 F.n) (τ : Tau 𝕜 F.n)
    (ν : Nu 𝕜 F.n) (uν : UNu 𝕜 F.n) (Riem : Tensor4 𝕜 F.n),
    F.nabla4.onTensor3 uν.toTensor = b11RHS F β σ τ ν uν Riem

def bianchi_B12 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (uα : UAlpha 𝕜 F.n) (uβ : UBeta 𝕜 F.n) (uν : UNu 𝕜 F.n),
    F.nabla3.onTensor3 uν.toTensor = b12RHS F uα uβ uν

def bianchi_B13 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (uα : UAlpha 𝕜 F.n) (uβ : UBeta 𝕜 F.n) (uν : UNu 𝕜 F.n),
    F.nabla3.onTensor1 uβ = b13RHS F uα uβ uν

def bianchi_B14 (F : FrameDerivData 𝕜) : Prop :=
  ∀ (uα : UAlpha 𝕜 F.n) (uβ : UBeta 𝕜 F.n) (σ : Sigma 𝕜 F.n)
    (τ : Tau 𝕜 F.n) (uν : UNu 𝕜 F.n) (Riem : Tensor4 𝕜 F.n),
    F.nabla4.onTensor2 uα.toMatrix = b14RHS F uα uβ σ τ uν Riem

theorem prop36 (F : FrameDerivData 𝕜) :
    bianchi_B1 F ∧ bianchi_B2 F ∧ bianchi_B3 F ∧ bianchi_B4 F ∧
    bianchi_B5 F ∧ bianchi_B6 F ∧ bianchi_B7 F ∧ bianchi_B8 F ∧
    bianchi_B9 F ∧ bianchi_B10 F ∧ bianchi_B11 F ∧ bianchi_B12 F ∧
    bianchi_B13 F ∧ bianchi_B14 F := by
  /-
  TRUST AUDIT — Prop. 3.6
  ┌──────┬──────────────┬──────────────────┐
  │ Eq.  │ Statement    │ Proof            │
  ├──────┼──────────────┼──────────────────┤
  │ B1   │ KERNEL       │ ORACLE (1)       │
  │ B2   │ KERNEL       │ ORACLE (1)       │
  │ B3   │ KERNEL       │ ORACLE (1)       │
  │ B4   │ KERNEL       │ ORACLE (1)       │
  │ B5   │ KERNEL       │ ORACLE (1)       │
  │ B6   │ KERNEL       │ ORACLE (1)       │
  │ B7   │ KERNEL       │ ORACLE (1)       │
  │ B8   │ KERNEL       │ ORACLE (1)       │
  │ B9   │ KERNEL       │ KERNEL (1)       │
  │ B10  │ KERNEL       │ ORACLE (1)       │
  │ B11  │ KERNEL       │ ORACLE (1)       │
  │ B12  │ KERNEL       │ ORACLE (1)       │
  │ B13  │ KERNEL       │ ORACLE (1)       │
  │ B14  │ KERNEL       │ ORACLE (1)       │
  ├──────┼──────────────┼──────────────────┤
  │ Total│ 14 KERNEL    │ 13 ORACLE        │
  │      │              │ 0 CERT           │
  │      │              │ 1 KERNEL         │
  └──────┴──────────────┴──────────────────┘
  -/
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro α β σ τ ν Riem; exact Outgoing.b1_alpha3 F α β σ τ ν Riem
  · intro α β ν; exact Outgoing.b2_beta4 F α β ν
  · intro α β ν; exact Outgoing.b3_nu4 F α β ν
  · intro τ σ uβ ν uν Riem; exact Outgoing.b4_nu3 F τ σ uβ ν uν Riem
  · intro α σ τ ν Riem; exact Outgoing.b5_r4 F α σ τ ν Riem
  · intro α β σ τ ν; exact Outgoing.b6_sigma4 F α β σ τ ν
  · intro uα σ τ uν Riem; exact Incoming.b7_r3 F uα σ τ uν Riem
  · intro uα σ τ uν Riem; exact Incoming.b8_tau3 F uα σ τ uν Riem
  · intro ρ τ hρ htrace; exact Incoming.b9_rho3 F ρ τ hρ htrace
  · intro uα uβ σ τ uν; exact Incoming.b10_sigma3 F uα uβ σ τ uν
  · intro β σ τ ν uν Riem; exact Incoming.b11_unu4 F β σ τ ν uν Riem
  · intro uα uβ uν; exact Incoming.b12_unu3 F uα uβ uν
  · intro uα uβ uν; exact Incoming.b13_ubeta3 F uα uβ uν
  · intro uα uβ σ τ uν Riem; exact Incoming.b14_ualpha4 F uα uβ σ τ uν Riem

end Main
end NullFrame
