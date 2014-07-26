class Person
  include Neo4j::ActiveNode
  property :name, type: String
  has_n(:clues).from(Clue, :persons)
  has_n(:organizations).from(Organization)
end