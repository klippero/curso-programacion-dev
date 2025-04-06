from sol import *

p = Punto(3,2)
print(p)

p.mover(10,7)
print(p)

p.mover(3,4)
print(p)

p.mover(-1,11)
print(p)

print(f"Recorrido: {p.path()}")
print(f"Distancia desde el origen: {p.distanciaRecta()}")
print(f"Distancia recorrida: {p.distanciaRecorrida()}")
