import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

def ConstrainedVectorFieldsFrameFieldsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vector_fields_frame_fields_endgame (A : AdmissibleClass) : ConstrainedVectorFieldsFrameFieldsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse
