import canonicalLaneMathlib.AdmissibleClass

/-!
# Integral Curve and Flow Package
-/

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure IntegralCurveAndFlowPackage where
  vectorField : Type u
  integralCurve : Type v
  localFlow : Type w
  globalFlow : Prop
  maximalExistence : Prop
  exponentialMap : Prop
  completeness : Prop

structure IntegralCurveAndFlowEvidence (I : IntegralCurveAndFlowPackage) where
  globalFlowClosed : I.globalFlow
  maximalExistenceClosed : I.maximalExistence
  exponentialMapClosed : I.exponentialMap
  completenessClosed : I.completeness

def IntegralCurveAndFlowClosed (I : IntegralCurveAndFlowPackage) : Prop :=
  I.globalFlow ∧ I.maximalExistence ∧ I.exponentialMap ∧ I.completeness

theorem integral_curve_and_flow_closed_from_evidence
    (I : IntegralCurveAndFlowPackage) (E : IntegralCurveAndFlowEvidence I) :
    IntegralCurveAndFlowClosed I := by
  exact And.intro E.globalFlowClosed
    (And.intro E.maximalExistenceClosed
      (And.intro E.exponentialMapClosed E.completenessClosed))

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
