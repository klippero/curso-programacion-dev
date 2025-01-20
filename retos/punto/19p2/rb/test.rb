require_relative 'sol'

p1 = Punto.new(1,-4)
puts "en origen: #{p1.origen?}"

p1.mover(1,2)
puts "en origen: #{p1.origen?}"
