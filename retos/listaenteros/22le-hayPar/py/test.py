from sol import *

lista = ListaEnteros( [1,3,1,10,5,7,2,11,2,5,4] )
print(lista.hayPar())

lista = ListaEnteros( [1,3,1,1] )
print(lista.hayPar())

lista = ListaEnteros( [] )
print(lista.hayPar())
