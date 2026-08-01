import canonicalLaneMathlib.AdmissibleClass
import 2DimensionalTopologyMappingClassCanonicalLaneLean.MappingClassGroupPackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure DehnTwistPackage {S : SurfacePackage} (M : MappingClassGroupPackage S) where
  dehnTwistSet : Type u
  braidRelations : Prop
  chainRelations : Prop
  lanternRelation : Prop

def DehnTwistPackage.braidRelations_axiom (self : DehnTwistPackage) : Prop := self.braidRelations

structure DehnTwistEvidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (D : DehnTwistPackage M) where
  braidRelationsClosed : D.braidRelations
  chainRelationsClosed : D.chainRelations
  lanternRelationClosed : D.lanternRelation

def DehnTwistClosed {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (D : DehnTwistPackage M) : Prop :=
  D.braidRelations ∧ D.chainRelations ∧ D.lanternRelation

theorem dehn_twist_closed_from_evidence {S : SurfacePackage} {M : MappingClassGroupPackage S}
    (D : DehnTwistPackage M) (E : DehnTwistEvidence D) :
    DehnTwistClosed D := by
  exact And.intro E.braidRelationsClosed (And.intro E.chainRelationsClosed E.lanternRelationClosed)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse