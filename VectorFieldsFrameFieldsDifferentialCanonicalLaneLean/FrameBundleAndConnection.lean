import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure FrameBundlePackage where
  baseManifold : Type u
  tangentBundle : Type v
  frameBundle : Type w
  connection : Type x
  smoothFrame : Prop
  connectionCompatible : Prop
  structureGroupReduction : Prop

structure FrameBundleEvidence (F : FrameBundlePackage) where
  smoothFrameClosed : F.smoothFrame
  connectionCompatibleClosed : F.connectionCompatible
  structureGroupReductionClosed : F.structureGroupReduction

def FrameBundleClosed (F : FrameBundlePackage) : Prop :=
  F.smoothFrame ∧ F.connectionCompatible ∧ F.structureGroupReduction

theorem frame_bundle_closed_from_evidence (F : FrameBundlePackage) (E : FrameBundleEvidence F) : FrameBundleClosed F :=
  And.intro E.smoothFrameClosed (And.intro E.connectionCompatibleClosed E.structureGroupReductionClosed)

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse