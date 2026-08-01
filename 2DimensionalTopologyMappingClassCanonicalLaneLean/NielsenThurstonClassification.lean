import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure NielsenThurstonClassificationPackage {S : Type} [TopologicalSpace S]
    (M : MappingClassGroupPackage S) where
  periodicElements : Prop
  reducibleElements : Prop
  pseudoAnosovElements : Prop
  classificationComplete : Prop

structure NielsenThurstonClassificationEvidence {S : Type} [TopologicalSpace S]
    {M : MappingClassGroupPackage S} (N : NielsenThurstonClassificationPackage M) where
  periodicElementsClosed : N.periodicElements
  reducibleElementsClosed : N.reducibleElements
  pseudoAnosovElementsClosed : N.pseudoAnosovElements
  classificationCompleteClosed : N.classificationComplete

def NielsenThurstonClassificationClosed {S : Type} [TopologicalSpace S]
    {M : MappingClassGroupPackage S} (N : NielsenThurstonClassificationPackage M) : Prop :=
  N.periodicElements ∧ N.reducibleElements ∧ N.pseudoAnosovElements ∧ N.classificationComplete

theorem nielsen_thurston_classification_closed_from_evidence
    {S : Type} [TopologicalSpace S] {M : MappingClassGroupPackage S}
    (N : NielsenThurstonClassificationPackage M) (E : NielsenThurstonClassificationEvidence N) :
    NielsenThurstonClassificationClosed N := by
  exact And.intro E.periodicElementsClosed
    (And.intro E.reducibleElementsClosed
      (And.intro E.pseudoAnosovElementsClosed E.classificationCompleteClosed))

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse