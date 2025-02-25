require_relative 'Primitiva'

FICHERO = "working/ficheros/serializar/rb/30.6.data.dat"

p = Primitiva.new
puts p

File.write(FICHERO, Marshal.dump(p))
