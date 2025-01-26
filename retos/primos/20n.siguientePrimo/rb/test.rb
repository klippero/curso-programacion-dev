require_relative 'sol'

print "n: "
n = Entero.new(gets.chomp.to_i)
n.siguientePrimo!
puts(n)
