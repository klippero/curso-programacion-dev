require_relative 'sol'

print "Viajes que adquieres: "
num_viajes = gets.chomp.to_i

mi_bonobus = Bonobus.new(num_viajes)
puts mi_bonobus

print "Viajes que deseas usar: "
viajes = gets.chomp.to_i
mi_bonobus.usar(viajes)
puts mi_bonobus
