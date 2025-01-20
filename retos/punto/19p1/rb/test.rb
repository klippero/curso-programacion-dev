require_relative 'sol'

p1 = Punto.new(1,-4)
puts "#{p1} en la diagonal: #{p1.en_diagonal?}"

p2 = Punto.new(6,6)
puts "#{p2} en la diagonal: #{p2.en_diagonal?}"
