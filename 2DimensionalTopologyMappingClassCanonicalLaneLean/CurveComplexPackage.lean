import HautevilleHouse.TwoDimensionalTopologyMappingClassCanonicalLaneLean.MappingClassGenerationPackage

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure CurveComplexPackage where
  complexConnected : Prop
  infiniteDiameter : Prop
  actionByMappingClassGroup : Prop
  rigidStructure : Prop

structure CurveComplexEvidence (C : CurveComplexPackage) where
  complexConnectedClosed : C.complexConnected
  infiniteDiameterClosed : C.infiniteDiameter
  actionByMappingClassGroupClosed : C.actionByMappingClassGroup
  rigidStructureClosed : C.rigidStructure

def CurveComplexClosed (C : CurveComplexPackage) : Prop :=
  C.complexConnected ∧ C.infiniteDiameter ∧ C.actionByMappingClassGroup ∧ C.rigidStructure

theorem curve_complex_closed_from_evidence (C : CurveComplexPackage) (E : CurveComplexEvidence C) : CurveComplexClosed C := by
  exact And.intro E.complexConnectedClosed (And.intro E.infiniteDiameterClosed (And.intro E.actionByMappingClassGroupClosed E.rigidStructureClosed))

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse