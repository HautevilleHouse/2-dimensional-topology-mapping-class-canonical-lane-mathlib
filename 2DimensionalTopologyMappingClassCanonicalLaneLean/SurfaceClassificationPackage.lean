import HautevilleHouse.TwoDimensionalTopologyMappingClassCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure SurfaceClassificationPackage where
  surfacesClassified : Prop
  classificationComplete : Prop
  closedSurfacesClassifiedByGenus : Prop
  nonorientableSurfacesClassified : Prop

structure SurfaceClassificationEvidence (C : SurfaceClassificationPackage) where
  surfacesClassifiedClosed : C.surfacesClassified
  classificationCompleteClosed : C.classificationComplete
  closedSurfacesClassifiedByGenusClosed : C.closedSurfacesClassifiedByGenus
  nonorientableSurfacesClassifiedClosed : C.nonorientableSurfacesClassified

def SurfaceClassificationClosed (C : SurfaceClassificationPackage) : Prop :=
  C.surfacesClassified ∧ C.classificationComplete ∧ C.closedSurfacesClassifiedByGenus ∧ C.nonorientableSurfacesClassified

theorem surface_classification_closed_from_evidence (C : SurfaceClassificationPackage) (E : SurfaceClassificationEvidence C) : SurfaceClassificationClosed C := by
  exact And.intro E.surfacesClassifiedClosed (And.intro E.classificationCompleteClosed (And.intro E.closedSurfacesClassifiedByGenusClosed E.nonorientableSurfacesClassifiedClosed))

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse