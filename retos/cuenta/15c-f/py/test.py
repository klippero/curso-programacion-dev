from sol import *

t = input("Titular: ")

a = int(input("Aportación inicial: "))

mi_cuenta = Cuenta(t,a)
print(mi_cuenta)

c = int(input("Ingreso: "))

mi_cuenta.ingreso(c)
print(mi_cuenta)

print(f"Los intereses son {mi_cuenta.calcula_intereses()}€")

mi_cuenta.liquida_intereses()
print(mi_cuenta)

r = float(input("Reintegro: "))

mi_cuenta.reintegro(r)
print(mi_cuenta)
