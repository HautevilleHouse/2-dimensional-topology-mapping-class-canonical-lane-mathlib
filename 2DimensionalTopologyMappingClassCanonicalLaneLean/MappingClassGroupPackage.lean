import canonicalLaneMathlib.AdmissibleClass
import 2DimensionalTopologyMappingClassCanonicalLaneLean.SurfacePackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure MappingClassGroupPackage {S : SurfacePackage} where
  mappingClassGroup : Type u
  groupStructure : Prop
  generatedByDehnTwists : Prop
  actionOnHomology : Prop

def MappingClassGroupPackage.groupStructure_axiom (self : MappingClassGroupPackage) : Prop := self.groupStructure

structure MappingClassGroupEvidence {S : SurfacePackage} (M : MappingClassGroupPackage) where
  groupStructureClosed : M.groupStructure
  generatedByDehnTwistsClosed : M.generatedByDehnTwists
  actionOnHomologyClosed : M.actionOnHomology

def MappingClassGroupClosed {S : SurfacePackage} (M : MappingClassGroupPackage) : Prop :=
  M.groupStructure ∧ M.generatedByDehnTwists ∧ M.actionOnHomology

theorem mapping_class_group_closed_from_evidence {S : SurfacePackage}
    (M : MappingClassGroupPackage) (E : MappingClassGroupEvidence M) :
    MappingClassGroupClosed M := by
  exact And.intro E.groupStructureClosed (And.intro E.generatedByDehnTwistsClosed E.actionOnHomologyClosed)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse