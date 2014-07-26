class Person
  include Neo4j::ActiveNode
  property :name, type: String
  has_n(:clues).from(Clue, :persons)
  has_n(:organizations).from(Organization)

  def allies n = 1
    query_as(:origin).match("p = origin<-[:`Clue#persons`]-(clue)-[:`Clue#persons`*1..#{n}]-(ally: Person)")
  end
end