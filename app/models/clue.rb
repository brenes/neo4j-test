class Clue
  include Neo4j::ActiveNode
  property :url, type: String
  property :name, type: String
  has_n(:persons).to(Person)
  has_n(:organizations).to(Person)
  has_n(:plots).to(Plot)
end
