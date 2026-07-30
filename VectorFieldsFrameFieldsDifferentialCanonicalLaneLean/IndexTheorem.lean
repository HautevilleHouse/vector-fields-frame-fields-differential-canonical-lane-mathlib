import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure IndexTheoremPackage {Base : Type u} (M : Base) where
  vectorField : Type v
  isolatedZero : Prop
  indexSum : Int
  eulerCharacteristic : Int
  indexEqualsEuler : Prop

structure IndexTheoremEvidence {Base : Type u} {M : Base} (I : IndexTheoremPackage M) where
  isolatedZeroClosed : I.isolatedZero
  indexSumClosed : I.indexSum = I.eulerCharacteristic

def IndexTheoremClosed {Base : Type u} {M : Base} (I : IndexTheoremPackage M) : Prop :=
  I.isolatedZero ∧ I.indexSum = I.eulerCharacteristic

theorem index_theorem_closed_from_evidence {Base : Type u} {M : Base} (I : IndexTheoremPackage M) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.isolatedZeroClosed E.indexSumClosed

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
