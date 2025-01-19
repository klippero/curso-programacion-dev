require_relative 'sol'

print "Cantidad: "
cantidad = gets.chomp.to_i
mi_cuenta = Cuenta.new(cantidad)
puts mi_cuenta

print "Reintegro: "
cantidad = gets.chomp.to_i
mi_cuenta.reintegro(cantidad)
puts mi_cuenta
