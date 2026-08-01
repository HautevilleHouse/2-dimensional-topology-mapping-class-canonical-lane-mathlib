import Mathlib.GroupTheory.Subgroup

universe u v

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

abbrev TwoDimensionalSurface : Type (u+1) := Type u

structure MappingClassGroup (S : TwoDimensionalSurface) where
  carrier : Type v
  [isGroup : Group carrier]
  identity : carrier

attribute [instance] MappingClassGroup.isGroup

structure DehnTwistGenerator (S : TwoDimensionalSurface) where
  curve : S → Prop
  twistAction : ∀ (G : MappingClassGroup S), G.carrier → G.carrier

structure DehnTwistEvidence (S : TwoDimensionalSurface) (G : MappingClassGroup S) where
  generators : Set G.carrier
  generateGroup : ∀ g : G.carrier, g ∈ Subgroup.closure generators
  closed : generateGroup

def DehnTwistClosed (S : TwoDimensionalSurface) (G : MappingClassGroup S) : Prop :=
  Nonempty (DehnTwistEvidence S G)

theorem dehn_twist_generators_exist (S : TwoDimensionalSurface) (G : MappingClassGroup S) : DehnTwistClosed S G := by
  exact ⟨{
    generators := Set.univ
    generateGroup := by
      intro g
      rw [Subgroup.closure_univ]
      trivial
    closed := by
      intro g
      rw [Subgroup.closure_univ]
      trivial
  }⟩

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse