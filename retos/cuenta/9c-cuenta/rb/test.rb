require_relative 'sol'

mi_cuenta = Cuenta.new(100)
mi_cuenta.ingreso(25)
mi_cuenta.reintegro(80)
mi_cuenta.muestraSaldo
