from sol import *

r1 = float(input("Radio 1: "))

r2 = float(input("Radio 2: "))

e = Elipse(r1,r2)

print(f"El área de una elipse de radios {r1} y {r2} es {e.area():.4f}")