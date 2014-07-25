class Plot
  include Neo4j::ActiveNode
  has_n(:clues).from(Clue)
  property :name, type: String
end
