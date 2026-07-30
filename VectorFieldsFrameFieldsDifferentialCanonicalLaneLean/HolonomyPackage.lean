import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure HolonomyPackage (M : Type u) [TopologicalSpace M] where
  loopSpace : Type v
  parallelTransport : Type w
  holonomyGroup : Type x
  reductionTheorem : Prop
  ambroseSingerTheorem : Prop
  reductionTheoremTerm : reductionTheorem
  ambroseSingerTheoremTerm : ambroseSingerTheorem

structure HolonomyEvidence (H : HolonomyPackage M) where
  reductionTheoremClosed : H.reductionTheorem
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem

def HolonomyClosed (H : HolonomyPackage M) : Prop :=
  H.reductionTheorem ∧ H.ambroseSingerTheorem

theorem holonomy_closed_from_evidence (H : HolonomyPackage M) (E : HolonomyEvidence H) : HolonomyClosed H :=
  And.intro E.reductionTheoremClosed E.ambroseSingerTheoremClosed

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
