require_relative '26mp'

FICHERO = "working/ficheros/serializar/marshall.dat"

p = Primitiva.new
puts p

File.open(FICHERO, 'wb') do |file|
    Marshal.dump(p, file)
end
