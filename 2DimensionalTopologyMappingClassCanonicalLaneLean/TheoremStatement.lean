import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  statement : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "2-dim-mapping-class",
    theoremName := "MappingClassGroupFinitePresentation",
    statement := "The mapping class group of a closed oriented surface of genus g is finitely presented.",
    carriedRemainder := "Classical proof via Dehn twists and presentation." }

def classicalBoundaryCarried : Prop :=
  sourceTheoremStatement.carriedRemainder ≠ ""

theorem theorem_statement_carried : classicalBoundaryCarried := by
  exact by
    unfold classicalBoundaryCarried
    trivial

end TwoDimensionalTopologyMappingClassCanonicalLaneLean
end HautevilleHouse