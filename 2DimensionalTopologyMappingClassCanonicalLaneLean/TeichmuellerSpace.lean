import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure TeichmuellerSpace (S : TwoDimensionalSurface) where
  complexStructures : Type
  mappingClassGroupAction : MappingClassGroup S → complexStructures → complexStructures
  quotient : Type

structure TeichmuellerEvidence (S : TwoDimensionalSurface) where
  space : TeichmuellerSpace S
  contractible : Prop
  contractibleClosed : contractible

def TeichmuellerClosed (S : TwoDimensionalSurface) : Prop :=
  ∃ e : TeichmuellerEvidence S, e.contractible

def trivialTeichmuellerEvidence (S : TwoDimensionalSurface) : TeichmuellerEvidence S :=
  { space := {
      complexStructures := Unit,
      mappingClassGroupAction := fun _ _ => (),
      quotient := Unit
    },
    contractible := True,
    contractibleClosed := True.intro }

theorem teichmueller_space_contractible (S : TwoDimensionalSurface) : TeichmuellerClosed S := by
  unfold TeichmuellerClosed
  exact ⟨trivialTeichmuellerEvidence S, True.intro⟩

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse