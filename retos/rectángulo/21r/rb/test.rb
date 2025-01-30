require_relative 'sol'

print "base: "
b = gets.chomp.to_i
print "altura: "
a = gets.chomp.to_i

c = Rectangulo.new(b,a)
puts(c)
