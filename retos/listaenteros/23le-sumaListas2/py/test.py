from sol import *

lista = Lista( [1,3,1,10,2,5,4] )
suma = lista + [3,17]

print(f"La suma es {suma}")
print(f"y la original {lista}")

lista1 = Lista( [4,6,3] )
lista2 = Lista( [4,7,2] )
lista3 = lista1 + lista2

print(f"La suma es {lista3}")
print(f"y las listas son {lista1}")
print(f"y {lista2}")
