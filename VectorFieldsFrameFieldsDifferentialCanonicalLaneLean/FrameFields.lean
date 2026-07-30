import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure FrameFieldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  tangentBundle : Type v
  frameField : tangentBundle → Type w
  pointwiseBasis : Prop
  smoothFrame : Prop
  rank : Nat

structure FrameFieldEvidence (F : FrameFieldPackage) where
  pointwiseBasisClosed : F.pointwiseBasis
  smoothFrameClosed : F.smoothFrame

def FrameFieldClosed (F : FrameFieldPackage) : Prop :=
  F.pointwiseBasis ∧ F.smoothFrame

theorem frame_field_closed_from_evidence (F : FrameFieldPackage) (E : FrameFieldEvidence F) :
    FrameFieldClosed F := by
  exact And.intro E.pointwiseBasisClosed E.smoothFrameClosed

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
