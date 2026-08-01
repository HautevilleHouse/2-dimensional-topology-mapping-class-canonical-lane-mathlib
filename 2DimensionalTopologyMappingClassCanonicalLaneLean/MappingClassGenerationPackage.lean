import HautevilleHouse.TwoDimensionalTopologyMappingClassCanonicalLaneLean.SurfaceClassificationPackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure MappingClassGenerationPackage where
  generatedByDehnTwists : Prop
  finitePresentation : Prop
  presentationExplicit : Prop

structure MappingClassGenerationEvidence (G : MappingClassGenerationPackage) where
  generatedByDehnTwistsClosed : G.generatedByDehnTwists
  finitePresentationClosed : G.finitePresentation
  presentationExplicitClosed : G.presentationExplicit

def MappingClassGenerationClosed (G : MappingClassGenerationPackage) : Prop :=
  G.generatedByDehnTwists ∧ G.finitePresentation ∧ G.presentationExplicit

theorem mapping_class_generation_closed_from_evidence (G : MappingClassGenerationPackage) (E : MappingClassGenerationEvidence G) : MappingClassGenerationClosed G := by
  exact And.intro E.generatedByDehnTwistsClosed (And.intro E.finitePresentationClosed E.presentationExplicitClosed)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse