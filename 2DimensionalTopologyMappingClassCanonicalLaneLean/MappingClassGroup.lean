import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure MappingClassGroupPackage (S : Type) [TopologicalSpace S] where
  surface : S
  genus : ℕ
  punctures : ℕ
  mappingClassGroup : Type u
  groupStructure : Group (mappingClassGroup)
  actionOnHomology : Prop
  presentationKnown : Prop

structure MappingClassGroupEvidence {S : Type} [TopologicalSpace S] (M : MappingClassGroupPackage S) where
  groupStructureClosed : M.groupStructure = inferInstance
  actionOnHomologyClosed : M.actionOnHomology
  presentationKnownClosed : M.presentationKnown

def MappingClassGroupClosed {S : Type} [TopologicalSpace S] (M : MappingClassGroupPackage S) : Prop :=
  M.actionOnHomology ∧ M.presentationKnown

theorem mapping_class_group_closed_from_evidence
    {S : Type} [TopologicalSpace S] (M : MappingClassGroupPackage S) (E : MappingClassGroupEvidence M) :
    MappingClassGroupClosed M := by
  exact And.intro E.actionOnHomologyClosed E.presentationKnownClosed

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse