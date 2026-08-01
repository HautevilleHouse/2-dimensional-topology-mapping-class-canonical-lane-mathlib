import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure SurfaceAdmittedObject where
  surfaceType : Type u
  genus : ℕ
  orientable : Prop
  closed : Prop
  conclusion : orientable ∧ closed

structure AdmissibleClass where
  object : SurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SurfaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse