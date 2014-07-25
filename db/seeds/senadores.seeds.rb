senado = Organization.where(name: "Senado de España").first
senado ||= Organization.create! name: "Senado de España"

puts "Creado senado"

CSV.foreach("db/senadores.csv",  headers: true) do |row|
  puts row.inspect
  person = Person.create! name: row['nombre']
  grupo = Organization.where(name: row['grupo']).first
  grupo ||=  Organization.create!(name: row['grupo'])
  senado.persons << person
  grupo.persons << person
end