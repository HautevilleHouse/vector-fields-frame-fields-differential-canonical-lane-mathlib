import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.admissible A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admissible_witness

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse