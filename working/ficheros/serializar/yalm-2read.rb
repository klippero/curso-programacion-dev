require_relative '26mp'
require 'yaml'

FICHERO = "working/ficheros/serializar/yalm.yml"

mi_objeto_recuperado = File.open(FICHERO, 'r') do |file|
    YAML.safe_load(file, permitted_classes: [Primitiva])
end

puts mi_objeto_recuperado
