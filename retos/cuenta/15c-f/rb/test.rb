require_relative 'sol'

print "Titular: "
t = gets.chomp.to_s

print "Aportación inicial: "
a = gets.chomp.to_f

mi_cuenta = Cuenta.new(t,a)
puts mi_cuenta

print "Ingreso: "
c = gets.chomp.to_f

mi_cuenta.ingreso(c)
puts mi_cuenta

puts "Los intereses son #{mi_cuenta.calcula_intereses}€"

mi_cuenta.liquida_intereses
puts mi_cuenta

print "Reintegro: "
r = gets.chomp.to_f

mi_cuenta.reintegro(r)
puts mi_cuenta
