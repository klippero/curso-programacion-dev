require_relative 'sol'

m = Mixto.new(Fraccion.new(7,14),12)
m.simplificarAcanonica!
puts m

m = Mixto.new(Fraccion.new(10,6),3)
m.simplificarAcanonica!
puts m
m.simplificar!
puts m
