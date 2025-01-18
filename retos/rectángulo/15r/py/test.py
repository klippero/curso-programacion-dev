from sol import *

b = float(input("Base: "))

a = float(input("Altura: "))

r = Rectangulo(b,a)

print(f"Área: {r.area()}")
print(f"Perímetro: {r.perimetro()}")

print(r)

r.agranda(2)
print(r)
