from sol import *

t = input("Titular: ")

a = int(input("Aportación inicial: "))

mi_cuenta = Cuenta(t,a)
print(mi_cuenta)

c = int(input("Ingreso: "))

mi_cuenta.ingreso(c)
print(mi_cuenta)
