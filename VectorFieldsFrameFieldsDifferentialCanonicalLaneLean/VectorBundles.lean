import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure VectorBundlePackage (Base : Type u) (Fiber : Type v) where
  totalSpace : Type (max u v)
  projection : totalSpace → Base
  trivializationAtlas : Type w
  smoothStructure : Prop
  fiberLinearStructure : Prop
  transitionFunctionsSmooth : Prop

structure VectorBundleEvidence {Base : Type u} {Fiber : Type v} (V : VectorBundlePackage Base Fiber) where
  smoothStructureClosed : V.smoothStructure
  fiberLinearStructureClosed : V.fiberLinearStructure
  transitionFunctionsSmoothClosed : V.transitionFunctionsSmooth

def VectorBundleClosed {Base : Type u} {Fiber : Type v} (V : VectorBundlePackage Base Fiber) : Prop :=
  V.smoothStructure ∧ V.fiberLinearStructure ∧ V.transitionFunctionsSmooth

theorem vector_bundle_closed_from_evidence {Base : Type u} {Fiber : Type v} (V : VectorBundlePackage Base Fiber) (E : VectorBundleEvidence V) : VectorBundleClosed V := by
  exact And.intro E.smoothStructureClosed (And.intro E.fiberLinearStructureClosed E.transitionFunctionsSmoothClosed)

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
