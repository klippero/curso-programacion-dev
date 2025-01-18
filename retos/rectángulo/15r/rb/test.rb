require_relative 'sol'

print "Base: "
b = gets.chomp.to_f

print "Altura: "
a = gets.chomp.to_f

r = Rectangulo.new(b,a)

puts "Área: #{r.area}"
puts "Perímetro: #{r.perimetro}"

puts r

r.agranda(2)
puts r
