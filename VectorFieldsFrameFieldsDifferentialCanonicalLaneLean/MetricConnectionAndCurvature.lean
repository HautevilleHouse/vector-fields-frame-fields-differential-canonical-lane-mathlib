import canonicalLaneMathlib.AdmissibleClass

/-!
# Metric Connection and Curvature Package
-/

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure MetricConnectionAndCurvaturePackage where
  riemannianMetric : Type u
  leviCivitaConnection : Type v
  riemannCurvature : Type w
  ricciCurvature : Type x
  scalarCurvature : Type y
  sectionalCurvature : Type z
  parallelTransport : Prop
  curvatureIdentities : Prop

structure MetricConnectionAndCurvatureEvidence
    (M : MetricConnectionAndCurvaturePackage) where
  parallelTransportClosed : M.parallelTransport
  curvatureIdentitiesClosed : M.curvatureIdentities

def MetricConnectionAndCurvatureClosed
    (M : MetricConnectionAndCurvaturePackage) : Prop :=
  M.parallelTransport ∧ M.curvatureIdentities

theorem metric_connection_and_curvature_closed_from_evidence
    (M : MetricConnectionAndCurvaturePackage)
    (E : MetricConnectionAndCurvatureEvidence M) :
    MetricConnectionAndCurvatureClosed M := by
  exact And.intro E.parallelTransportClosed E.curvatureIdentitiesClosed

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
