require_relative 'sol'

p1 = Punto.new(11,13)
puts p1
puts p1.distancia

p2 = Punto.new(3,6)
puts p2.distancia(p1)
