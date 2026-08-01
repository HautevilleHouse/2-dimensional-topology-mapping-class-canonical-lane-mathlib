import TwoDimensionalTopologyMappingClassCanonicalLaneLean.NielsenThurstonPackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure ThurstonCompactificationPackage {S : SurfaceMappingClassObject}
    {M : MappingClassGroupPackage S} {T : TeichmuellerPackage M}
    {N : NielsenThurstonPackage T} where
  boundaryAdded : Prop
  laminations : Prop
  actionExtends : Prop
  compactificationComplete : Prop

structure ThurstonCompactificationEvidence {S : SurfaceMappingClassObject}
    {M : MappingClassGroupPackage S} {T : TeichmuellerPackage M}
    {N : NielsenThurstonPackage T} (C : ThurstonCompactificationPackage N) where
  boundaryAddedClosed : C.boundaryAdded
  laminationsClosed : C.laminations
  actionExtendsClosed : C.actionExtends
  compactificationCompleteClosed : C.compactificationComplete

def ThurstonCompactificationClosed {S : SurfaceMappingClassObject}
    {M : MappingClassGroupPackage S} {T : TeichmuellerPackage M}
    {N : NielsenThurstonPackage T} (C : ThurstonCompactificationPackage N) : Prop :=
  C.boundaryAdded ∧ C.laminations ∧ C.actionExtends ∧ C.compactificationComplete

theorem thurston_compactification_closed_from_evidence
    {S : SurfaceMappingClassObject} {M : MappingClassGroupPackage S}
    {T : TeichmuellerPackage M} {N : NielsenThurstonPackage T}
    (C : ThurstonCompactificationPackage N) (E : ThurstonCompactificationEvidence C) :
    ThurstonCompactificationClosed C := by
  exact And.intro E.boundaryAddedClosed
    (And.intro E.laminationsClosed
      (And.intro E.actionExtendsClosed E.compactificationCompleteClosed))

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse