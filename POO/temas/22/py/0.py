# lista vacía
frutas = []

# inicializar
frutas = ['piña','coco']

# añade al final
frutas.append( 'uva' )
frutas.append( 'dátil' )
frutas.append( 'kiwi' )
print(frutas)

# acceso a elementos
print( frutas[0] )
print( frutas[4] )

# tamaño
print( len(frutas) )

# modificar un elemento
frutas[2] = 'higo'
print(frutas)

# slice
print( frutas[1:4] )
print( frutas[3:] )
print( frutas[:2] )
print( frutas[-3:-1] )

# extrae el último
print( frutas.pop() )
print(frutas)

# ordenar destructivo
frutas.sort()
print(frutas)

# comprobar si está
print( 'coco' in frutas )
print( 'manzana' in frutas )

# recorrer
for fruta in frutas:
    print( fruta, end=" " )
print()

# recorrer por índice
for i in range(len(frutas)):
    print( frutas[i], end=" ")
print()

# eliminar un elemento
del frutas[2]
print(frutas)
