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
