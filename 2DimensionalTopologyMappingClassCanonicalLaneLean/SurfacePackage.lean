import 2DimensionalTopologyMappingClassCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure SurfacePackage where
  genus : ℕ
  orientable : Prop
  closed : Prop
  compact : Prop
  boundaryComponents : ℕ

def SurfacePackage.genus_nonneg : genus ≥ 0 := by omega

structure SurfaceEvidence (S : SurfacePackage) where
  orientableClosed : S.orientable
  closedClosed : S.closed
  compactClosed : S.compact

def SurfaceClosed (S : SurfacePackage) : Prop :=
  S.orientable ∧ S.closed ∧ S.compact

theorem surface_closed_from_evidence (S : SurfacePackage) (E : SurfaceEvidence S) :
    SurfaceClosed S := by
  exact And.intro E.orientableClosed (And.intro E.closedClosed E.compactClosed)

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse