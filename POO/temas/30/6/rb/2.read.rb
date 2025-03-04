require_relative 'Primitiva'

OBJECT_FILE = "POO/temas/30/6/rb/object.dat"

mi_objeto_recuperado = Marshal.load(File.read(OBJECT_FILE))

puts mi_objeto_recuperado
