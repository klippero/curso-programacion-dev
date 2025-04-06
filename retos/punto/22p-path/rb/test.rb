require_relative 'sol'

p = Punto.new(3,2)
puts p

p.mover(10,7)
puts p

p.mover(3,4)
puts p

p.mover(-1,11)
puts p

puts "Recorrido: #{p.path}"
puts "Distancia desde el origen: #{p.distanciaRecta}"
puts "Distancia recorrida: #{p.distanciaRecorrida}"
