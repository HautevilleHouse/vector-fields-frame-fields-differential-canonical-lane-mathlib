import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure HolonomyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  holonomyGroup : Type w
  parallelTransport : Prop
  holonomyInvariant : Prop
  reductionPrinciple : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  parallelTransportClosed : H.parallelTransport
  holonomyInvariantClosed : H.holonomyInvariant
  reductionPrincipleClosed : H.reductionPrinciple

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.parallelTransport ∧ H.holonomyInvariant ∧ H.reductionPrinciple

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.parallelTransportClosed (And.intro E.holonomyInvariantClosed E.reductionPrincipleClosed)

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
