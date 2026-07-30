import VectorFieldsFrameFieldsDifferentialCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VectorFieldsFrameFieldsDifferentialCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FrameFieldSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VectorFieldFrameFieldAdmittedObject where
  space : FrameFieldSpace
  smoothManifold : Prop
  frameFieldExists : Prop
  curvatureInvariants : Prop
  conclusion : frameFieldExists ∧ curvatureInvariants

def FrameFieldWitnessClosed (O : VectorFieldFrameFieldAdmittedObject) : Prop :=
  O.frameFieldExists ∧ O.curvatureInvariants

end VectorFieldsFrameFieldsDifferentialCanonicalLaneLean
end HautevilleHouse