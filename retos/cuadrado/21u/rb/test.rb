require_relative 'sol'

print "Dime el tamaño del lado: "
l = gets.chomp.to_i

puts(Cuadrado.new(l))
