import canonicalLaneMathlib.AdmissibleClass
import 2DimensionalTopologyMappingClassCanonicalLaneLean.MappingClassGroupPackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure BirmanExactSequencePackage {S : SurfacePackage} (M : MappingClassGroupPackage S) where
  puncturedSurface : SurfacePackage
  inclusionMap : Prop
  exactSequence : Prop
  kernelIsMappingClassGroupOfPunctured : Prop

def BirmanExactSequencePackage.exactSequence_axiom (self : BirmanExactSequencePackage) : Prop := self.exactSequence

structure BirmanExactSequenceEvidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (B : BirmanExactSequencePackage M) where
  inclusionMapClosed : B.inclusionMap
  exactSequenceClosed : B.exactSequence
  kernelIsMappingClassGroupOfPuncturedClosed : B.kernelIsMappingClassGroupOfPunctured

def BirmanExactSequenceClosed {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (B : BirmanExactSequencePackage M) : Prop :=
  B.inclusionMap ∧ B.exactSequence ∧ B.kernelIsMappingClassGroupOfPunctured

theorem birman_exact_sequence_closed_from_evidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (B : BirmanExactSequencePackage M) (E : BirmanExactSequenceEvidence B) :
    BirmanExactSequenceClosed B := by
  exact And.intro E.inclusionMapClosed (And.intro E.exactSequenceClosed E.kernelIsMappingClassGroupOfPuncturedClosed)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse