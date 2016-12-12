require 'csv'

data = CSV.read("./db/importa/disciplinas.csv")

header = ["nome","codigo","creditos", "departamento"]
sym_head = header.map { |head| head.to_sym}

disciplinas = []

data.each do |row|
  disciplinas << Hash[sym_head.zip(row)]
end

disciplinas.each do |course|
  aa = Disciplina.new(course)
  aa.save
end
