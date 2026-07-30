import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure VectorBundleConnection (M : Type u) [TopologicalSpace M] (E : Type v) [TopologicalSpace E] where
  base : M
  fiber : Type w
  projection : E → M
  smoothStructure : Prop
  connectionForm : Type x
  curvatureForm : Type x
  torsionFree : Prop
  connectionFormTerm : connectionForm
  curvatureFormTerm : curvatureForm
  torsionFreeTerm : torsionFree

structure ConnectionEvidence (C : VectorBundleConnection M E) where
  smoothStructureClosed : C.smoothStructure
  connectionFormClosed : C.connectionForm
  curvatureFormClosed : C.curvatureForm
  torsionFreeClosed : C.torsionFree

def ConnectionClosed (C : VectorBundleConnection M E) : Prop :=
  C.smoothStructure ∧ C.connectionForm ∧ C.curvatureForm ∧ C.torsionFree

theorem connection_closed_from_evidence (C : VectorBundleConnection M E) (E : ConnectionEvidence C) : ConnectionClosed C :=
  And.intro E.smoothStructureClosed (And.intro E.connectionFormClosed (And.intro E.curvatureFormClosed E.torsionFreeClosed))

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
