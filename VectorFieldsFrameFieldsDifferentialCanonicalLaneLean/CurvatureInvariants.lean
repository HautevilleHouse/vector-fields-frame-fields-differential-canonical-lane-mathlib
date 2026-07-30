import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure CurvatureInvariantPackage {Base : Type u} {Fiber : Type v} (V : VectorBundlePackage Base Fiber) (C : ConnectionPackage V) where
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  sectionalCurvature : Prop
  einsteinCondition : Prop

structure CurvatureInvariantEvidence {Base : Type u} {Fiber : Type v} {V : VectorBundlePackage Base Fiber} {C : ConnectionPackage V} (I : CurvatureInvariantPackage V C) where
  sectionalCurvatureClosed : I.sectionalCurvature
  einsteinConditionClosed : I.einsteinCondition

def CurvatureInvariantClosed {Base : Type u} {Fiber : Type v} {V : VectorBundlePackage Base Fiber} {C : ConnectionPackage V} (I : CurvatureInvariantPackage V C) : Prop :=
  I.sectionalCurvature ∧ I.einsteinCondition

theorem curvature_invariant_closed_from_evidence {Base : Type u} {Fiber : Type v} {V : VectorBundlePackage Base Fiber} {C : ConnectionPackage V} (I : CurvatureInvariantPackage V C) (E : CurvatureInvariantEvidence I) : CurvatureInvariantClosed I := by
  exact And.intro E.sectionalCurvatureClosed E.einsteinConditionClosed

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
