from sol import *

m = Mixto(Fraccion(10,6),3)
m.simplificar()
print(m)

m = Mixto(Fraccion(7,14),12)
m.simplificar()
print(m)

m = Mixto(Fraccion(15,2))
m.simplificar()
print(m)

m = Mixto(Fraccion(-15,2))
m.simplificar()
print(m)

m = Mixto(Fraccion(4,-3),-2)
m.simplificar()
print(m)