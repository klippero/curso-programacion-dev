require_relative 'sol'

mi_cuenta = Cuenta.new
mi_cuenta.ingreso
mi_cuenta.ingreso(100,250,-10,20,17.5)
puts mi_cuenta

mi_cuenta.reintegro
mi_cuenta.reintegro(300,-2,50,40)
puts mi_cuenta
