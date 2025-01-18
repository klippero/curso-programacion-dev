from sol import *

b = float(input("Base: "))

a = float(input("Altural: "))

t = Triangulo(b,a)

print(f"El área de un triángulo de base {b} y altura {a} es {t.area()}")
