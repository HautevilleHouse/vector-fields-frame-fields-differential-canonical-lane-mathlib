import canonicalLaneMathlib.AdmissibleClass

/-!
# Lie Derivative and Exterior Differential Package
-/

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

structure LieDerivativeAndExteriorDifferentialPackage where
  lieDerivative : Type u
  exteriorDerivative : Type v
  cartanFormula : Prop
  involutivity : Prop
  frobeniusTheorem : Prop
  cohomology : Prop

structure LieDerivativeAndExteriorDifferentialEvidence
    (L : LieDerivativeAndExteriorDifferentialPackage) where
  cartanFormulaClosed : L.cartanFormula
  involutivityClosed : L.involutivity
  frobeniusTheoremClosed : L.frobeniusTheorem
  cohomologyClosed : L.cohomology

def LieDerivativeAndExteriorDifferentialClosed
    (L : LieDerivativeAndExteriorDifferentialPackage) : Prop :=
  L.cartanFormula ∧ L.involutivity ∧ L.frobeniusTheorem ∧ L.cohomology

theorem lie_derivative_and_exterior_differential_closed_from_evidence
    (L : LieDerivativeAndExteriorDifferentialPackage)
    (E : LieDerivativeAndExteriorDifferentialEvidence L) :
    LieDerivativeAndExteriorDifferentialClosed L := by
  exact And.intro E.cartanFormulaClosed
    (And.intro E.involutivityClosed
      (And.intro E.frobeniusTheoremClosed E.cohomologyClosed))

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
