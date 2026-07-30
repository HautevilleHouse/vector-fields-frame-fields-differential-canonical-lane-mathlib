import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure HolonomyPackage where
  connection : Type u
  parallelTransport : Type v
  holonomyGroup : Type w
  curvatureTwoForm : Type x
  ambarRelationship : Prop
  curvatureBianchiIdentity : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  ambarRelationshipClosed : H.ambarRelationship
  curvatureBianchiIdentityClosed : H.curvatureBianchiIdentity

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.ambarRelationship ∧ H.curvatureBianchiIdentity

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H :=
  And.intro E.ambarRelationshipClosed E.curvatureBianchiIdentityClosed

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse