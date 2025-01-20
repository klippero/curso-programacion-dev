require_relative 'sol'

b1 = Bonobus.new
puts b1

b2 = Bonobus.new(20)
puts b2

b3 = Bonobus.new(-1)
puts b3

b3.recarga(53)
puts b3

b3.recarga(-5)
puts b3

b3.usar
puts b3

b3.usar(60)
puts b3

puts b3.viajes

puts b3.ultimo?
b3.usar(51)
puts b3.ultimo?
