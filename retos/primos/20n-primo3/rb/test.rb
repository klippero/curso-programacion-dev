require_relative 'sol'

print "N: "
n = gets.chomp.to_i
e = Entero.new(n)
puts e.primo?
