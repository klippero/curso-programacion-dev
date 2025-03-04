require_relative 'Primitiva'

OBJECT_FILE = "POO/temas/30/6/rb/object.dat"

p = Primitiva.new
puts p

File.write(OBJECT_FILE, Marshal.dump(p))
