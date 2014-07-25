class Organization
  include Neo4j::ActiveNode
  property :name, type: String
  has_n(:clues).from(Clue)
  has_n(:persons).to(Person)
end