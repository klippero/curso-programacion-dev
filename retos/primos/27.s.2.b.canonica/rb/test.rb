require_relative 'sol'

f = Fraccion.new(25,20)
f.simplificarAcanonica!
puts f

f = Fraccion.new(2,4)
f.simplificarAcanonica!
puts f

f = Fraccion.new(10,3)
f.simplificarAcanonica!
puts f

f = Fraccion.new(-2,70)
f.simplificarAcanonica!
puts f

f = Fraccion.new(-2,-4)
f.simplificarAcanonica!
puts f

f = Fraccion.new(1386,1050)
f.simplificarAcanonica!
puts f

f = Fraccion.new(25,-20)
f.simplificarAcanonica!
puts f
