require_relative 'sol'

print "Cantidad: "
cantidad = gets.chomp.to_i

mi_cuenta = Cuenta.new(cantidad)
puts mi_cuenta
