from sol import *

lista = ListaEnteros( [1,3,5,7,2,11,5] )
print(lista.posItem(11))
print(lista.posItem(1))
print(lista.posItem(5))
print(lista.posItem(4))

lista = ListaEnteros( [] )
print(lista.posItem(4))
