require_relative '26mp'

FICHERO = "working/ficheros/serializar/marshall.dat"

mi_objeto_recuperado = File.open(FICHERO, 'rb') do |file|
    Marshal.load(file)
end

puts mi_objeto_recuperado
