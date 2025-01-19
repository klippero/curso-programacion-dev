from sol import *

cantidad = int(input("Cantidad: "))

mi_cuenta = Cuenta(cantidad)
print(mi_cuenta)

cantidad = int(input("Reintegro: "))

mi_cuenta.reintegro(cantidad)
print(mi_cuenta)
