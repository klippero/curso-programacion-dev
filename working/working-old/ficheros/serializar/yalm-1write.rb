require 'yaml'
require_relative '26mp'

FICHERO = "working/ficheros/serializar/yalm.yml"

p = Primitiva.new
puts p

File.open(FICHERO, 'w') do |file|
    file.write(YAML.dump(p))
end
