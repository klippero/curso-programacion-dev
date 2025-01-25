from sol import *

lista = ListaEnteros(1,2,3,4,5,6,8,9)
print(f"La media de {lista} es {lista.media()}")

lista = ListaEnteros( 8,14,9,12,14,12,15,11,12,8,10,14,12,9,12 )
print(f"La mediana de {lista} es {lista.mediana()}")

lista = ListaEnteros(1,2,3,4,5,6,8,9)
print(f"La mediana de {lista} es {lista.mediana()}")

lista = ListaEnteros( 8,14,9,12,14,12,15,11,12,8,10,14,12,9,12 )
print(f"La moda de {lista} es {lista.moda()}")

lista = ListaEnteros(2,2,3,5,5,6,8,9)
print(f"La moda de {lista} es {lista.moda()}")
