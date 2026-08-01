import TwoDimMappingClass.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimMappingClass

structure SurfaceClassificationPackage where
  genusClassification : Prop
  orientabilityClassification : Prop
  boundaryClassification : Prop
  mappingClassGroupPresentation : Prop

structure SurfaceClassificationEvidence (C : SurfaceClassificationPackage) where
  genusClassificationClosed : C.genusClassification
  orientabilityClassificationClosed : C.orientabilityClassification
  boundaryClassificationClosed : C.boundaryClassification
  mappingClassGroupPresentationClosed : C.mappingClassGroupPresentation

def SurfaceClassificationClosed (C : SurfaceClassificationPackage) : Prop :=
  C.genusClassification ∧ C.orientabilityClassification ∧
  C.boundaryClassification ∧ C.mappingClassGroupPresentation

theorem surface_classification_closed_from_evidence (C : SurfaceClassificationPackage)
    (E : SurfaceClassificationEvidence C) : SurfaceClassificationClosed C := by
  exact And.intro E.genusClassificationClosed
    (And.intro E.orientabilityClassificationClosed
      (And.intro E.boundaryClassificationClosed
        E.mappingClassGroupPresentationClosed))

end TwoDimMappingClass
end HautevilleHouse