require_relative 'sol'

print "Radio: "
r = gets.chomp.to_f

c = Circulo.new(r)
puts "Área: #{c.area}"
puts "Perímetro: #{c.perimetro}"
