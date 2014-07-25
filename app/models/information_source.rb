class InformationSource
  include Neo4j::ActiveNode
  property :name, type: String
  has_n(:clues).from(:Clue)
end
