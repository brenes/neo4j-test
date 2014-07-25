papers = Clue.create! name: 'El presidente del Senado reconoce un pago anotado por Bárcenas', url: "http://politica.elpais.com/politica/2013/01/31/actualidad/1359634766_210374.html"

gurtel = Plot.create! name: 'Papeles de Bárcenas'

barcenas = Person.create! name: 'BÁRCENAS GUTIÉRREZ, LUIS'
pio = Person.where(name: 'GARCÍA-ESCUDERO MÁRQUEZ, PÍO').first
elpais = InformationSource.find("EL PAIS")

gurtel.clues << papers
papers.persons << barcenas
papers.persons << pio
papers.information_sources << elpais
