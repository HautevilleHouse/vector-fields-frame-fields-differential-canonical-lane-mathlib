import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure ConnectionPackage {Base : Type u} {Fiber : Type v} (V : VectorBundlePackage Base Fiber) where
  connectionForm : Type w
  covariantDerivative : Type x
  curvatureForm : Type y
  torsionForm : Prop
  metricCompatibility : Prop
  linearConnection : Prop

structure ConnectionEvidence {Base : Type u} {Fiber : Type v} {V : VectorBundlePackage Base Fiber} (C : ConnectionPackage V) where
  torsionFormClosed : C.torsionForm
  metricCompatibilityClosed : C.metricCompatibility
  linearConnectionClosed : C.linearConnection

def ConnectionClosed {Base : Type u} {Fiber : Type v} {V : VectorBundlePackage Base Fiber} (C : ConnectionPackage V) : Prop :=
  C.torsionForm ∧ C.metricCompatibility ∧ C.linearConnection

theorem connection_closed_from_evidence {Base : Type u} {Fiber : Type v} {V : VectorBundlePackage Base Fiber} (C : ConnectionPackage V) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.torsionFormClosed (And.intro E.metricCompatibilityClosed E.linearConnectionClosed)

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
