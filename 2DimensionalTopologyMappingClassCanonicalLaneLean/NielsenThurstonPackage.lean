import canonicalLaneMathlib.AdmissibleClass
import 2DimensionalTopologyMappingClassCanonicalLaneLean.TeichmuellerPackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure NielsenThurstonPackage {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (T : TeichmuellerPackage) where
  periodicReduciblePseudoAnosov : Prop
  classificationComplete : Prop
  pseudoAnosovHasStableFoliation : Prop

def NielsenThurstonPackage.classificationComplete_axiom (self : NielsenThurstonPackage) : Prop := self.classificationComplete

structure NielsenThurstonEvidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    {T : TeichmuellerPackage} (N : NielsenThurstonPackage T) where
  periodicReduciblePseudoAnosovClosed : N.periodicReduciblePseudoAnosov
  classificationCompleteClosed : N.classificationComplete
  pseudoAnosovHasStableFoliationClosed : N.pseudoAnosovHasStableFoliation

def NielsenThurstonClosed {S : SurfacePackage} {M : MappingClassGroupPackage S}
    {T : TeichmuellerPackage} (N : NielsenThurstonPackage T) : Prop :=
  N.periodicReduciblePseudoAnosov ∧ N.classificationComplete ∧ N.pseudoAnosovHasStableFoliation

theorem nielsen_thurston_closed_from_evidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    {T : TeichmuellerPackage} (N : NielsenThurstonPackage T)
    (E : NielsenThurstonEvidence N) : NielsenThurstonClosed N := by
  exact And.intro E.periodicReduciblePseudoAnosovClosed
    (And.intro E.classificationCompleteClosed E.pseudoAnosovHasStableFoliationClosed)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse