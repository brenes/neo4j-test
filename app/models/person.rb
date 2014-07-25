class Person
  include Neo4j::ActiveNode
  property :name, type: String
  property :born, type: Integer
  has_n(:acted_ins).to(Movie)
end