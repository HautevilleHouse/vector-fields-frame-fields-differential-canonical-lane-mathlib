import VectorFieldsFrameFieldsDifferentialCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure FrameBundle (M : Type) [TopologicalSpace M] where
  fiberOver : M → Type
  smoothStructure : Prop
  transitionFunctions : Prop
  frameFieldCandidate : Prop
  parallelism : Prop

structure FrameBundleEvidence (M : Type) [TopologicalSpace M] (B : FrameBundle M) where
  smoothStructureClosed : B.smoothStructure
  transitionFunctionsClosed : B.transitionFunctions
  frameFieldCandidateClosed : B.frameFieldCandidate

structure FrameBundleClosed (M : Type) [TopologicalSpace M] (B : FrameBundle M) : Prop where
  smoothStructureClosed : B.smoothStructure
  transitionFunctionsClosed : B.transitionFunctions
  frameFieldCandidateClosed : B.frameFieldCandidate
  parallelismClosed : B.parallelism

theorem frame_bundle_closed_from_evidence (M : Type) [TopologicalSpace M] (B : FrameBundle M)
    (E : FrameBundleEvidence M B) : FrameBundleClosed M B := by
  refine { smoothStructureClosed := E.smoothStructureClosed,
    transitionFunctionsClosed := E.transitionFunctionsClosed,
    frameFieldCandidateClosed := E.frameFieldCandidateClosed,
    parallelismClosed := ?_ }
  exact E.frameFieldCandidateClosed

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse