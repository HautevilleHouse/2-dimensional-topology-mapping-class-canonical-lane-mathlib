import canonicalLaneMathlib.AdmissibleClass
import 2DimensionalTopologyMappingClassCanonicalLaneLean.MappingClassGroupPackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure TeichmuellerPackage {S : SurfacePackage} {M : MappingClassGroupPackage S} where
  teichmuellerSpace : Type u
  contractible : Prop
  mappingClassGroupAction : Prop
  quotientIsModuliSpace : Prop

def TeichmuellerPackage.contractible_axiom (self : TeichmuellerPackage) : Prop := self.contractible

structure TeichmuellerEvidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (T : TeichmuellerPackage) where
  contractibleClosed : T.contractible
  mappingClassGroupActionClosed : T.mappingClassGroupAction
  quotientIsModuliSpaceClosed : T.quotientIsModuliSpace

def TeichmuellerClosed {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (T : TeichmuellerPackage) : Prop :=
  T.contractible ∧ T.mappingClassGroupAction ∧ T.quotientIsModuliSpace

theorem teichmueller_closed_from_evidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (T : TeichmuellerPackage) (E : TeichmuellerEvidence T) :
    TeichmuellerClosed T := by
  exact And.intro E.contractibleClosed (And.intro E.mappingClassGroupActionClosed E.quotientIsModuliSpaceClosed)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse