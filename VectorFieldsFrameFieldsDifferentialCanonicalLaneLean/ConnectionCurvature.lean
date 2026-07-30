import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure ConnectionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  connection : Type w
  linearConnection : Prop
  torsionFree : Prop
  metricCompatible : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  linearConnectionClosed : C.linearConnection
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.linearConnection ∧ C.torsionFree ∧ C.metricCompatible

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.linearConnectionClosed (And.intro E.torsionFreeClosed E.metricCompatibleClosed)

structure CurvaturePackage (C : ConnectionPackage) where
  curvatureTensor : Type u
  riemannCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  bianchiIdentity : Prop

structure CurvatureEvidence {C : ConnectionPackage} (R : CurvaturePackage C) where
  riemannCurvatureClosed : R.riemannCurvature
  ricciCurvatureClosed : R.ricciCurvature
  scalarCurvatureClosed : R.scalarCurvature
  bianchiIdentityClosed : R.bianchiIdentity

def CurvatureClosed {C : ConnectionPackage} (R : CurvaturePackage C) : Prop :=
  R.riemannCurvature ∧ R.ricciCurvature ∧ R.scalarCurvature ∧ R.bianchiIdentity

theorem curvature_closed_from_evidence {C : ConnectionPackage} (R : CurvaturePackage C) (E : CurvatureEvidence R) :
    CurvatureClosed R := by
  exact And.intro E.riemannCurvatureClosed (And.intro E.ricciCurvatureClosed (And.intro E.scalarCurvatureClosed E.bianchiIdentityClosed))

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
