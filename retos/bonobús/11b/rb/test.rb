require_relative 'sol'

print "Viajes que adquieres: "
num_viajes = gets.chomp.to_i

mi_bonobus = Bonobus.new(num_viajes)
puts mi_bonobus.info

print "Viajes que consumes: "
consumes = gets.chomp.to_i

mi_bonobus.usar( consumes )
puts mi_bonobus.info
