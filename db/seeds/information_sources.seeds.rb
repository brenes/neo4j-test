CSV.foreach("db/information_sources.csv",  headers: true) do |row|
  puts row.inspect
  source = InformationSource.where(name: row['nombre']).first
  source ||=  InformationSource.create!(name: row['nombre'])
end