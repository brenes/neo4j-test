class Plot
  include Neo4j::ActiveNode
  has_n(:clues).from(Clue)
end