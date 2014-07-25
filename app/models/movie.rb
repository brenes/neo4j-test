class Movie
  include Neo4j::ActiveNode
  property :title, type: String
  property :released, type: Integer
  property :tagline, type: String
  has_n(:PERSONS)
  has_n(:ACTED_IN)
end