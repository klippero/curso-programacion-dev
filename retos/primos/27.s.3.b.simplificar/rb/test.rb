require_relative 'sol'

m = Mixto.new(Fraccion.new(10,6),3)
m.simplificar!
puts m

m = Mixto.new(Fraccion.new(7,14),12)
m.simplificar!
puts m

m = Mixto.new(Fraccion.new(15,2))
m.simplificar!
puts m

m = Mixto.new(Fraccion.new(-15,2))
m.simplificar!
puts m

m = Mixto.new(Fraccion.new(4,-3),-2)
m.simplificar!
puts m
