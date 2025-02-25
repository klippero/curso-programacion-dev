require_relative 'Primitiva'

FICHERO = "working/ficheros/serializar/rb/30.6.data.dat"

mi_objeto_recuperado = Marshal.load(File.read(FICHERO))

puts mi_objeto_recuperado
