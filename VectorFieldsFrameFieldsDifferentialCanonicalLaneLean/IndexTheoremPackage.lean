import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure IndexTheoremPackage (M : Type u) [TopologicalSpace M] where
  ellipticOperator : Type v
  indexFormula : Prop
  chernCharacter : Type w
  toddClass : Type x
  indexFormulaTerm : indexFormula
  chernCharacterTerm : chernCharacter
  toddClassTerm : toddClass

structure IndexTheoremEvidence (I : IndexTheoremPackage M) where
  indexFormulaClosed : I.indexFormula
  chernCharacterClosed : I.chernCharacter
  toddClassClosed : I.toddClass

def IndexTheoremClosed (I : IndexTheoremPackage M) : Prop :=
  I.indexFormula ∧ I.chernCharacter ∧ I.toddClass

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage M) (E : IndexTheoremEvidence I) : IndexTheoremClosed I :=
  And.intro E.indexFormulaClosed (And.intro E.chernCharacterClosed E.toddClassClosed)

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
