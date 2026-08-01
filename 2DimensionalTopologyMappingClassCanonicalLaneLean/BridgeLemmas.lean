import canonicalLaneMathlib.AdmissibleClass
import 2DimensionalTopologyMappingClassCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SurfaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse