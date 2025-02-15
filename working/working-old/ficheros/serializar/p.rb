require 'yaml'

# Leer el objeto desde el fichero y deserializarlo
mi_objeto_recuperado = File.open('mi_objeto.yml', 'r') do |file|
  YAML.load(file)
end

puts mi_objeto_recuperado
