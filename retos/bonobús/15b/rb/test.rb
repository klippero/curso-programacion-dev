require_relative 'sol'

b1 = Bonobus.new
puts b1

b2 = Bonobus.new(20)
puts b2

b2.usar
puts b2

b2.usar(2)
puts b2

b2.recarga(10)
puts b2
