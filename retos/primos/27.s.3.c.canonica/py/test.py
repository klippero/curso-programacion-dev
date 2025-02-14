from sol import *

m = Mixto(Fraccion(7,14),12)
m.simplificarAcanonica()
print(m)

m = Mixto(Fraccion(10,6),3)
m.simplificarAcanonica()
print(m)
m.simplificar()
print(m)
