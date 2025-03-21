# diccionario vacío
capital = {}

# inicializar con valores
capital = {
    "Senegal":"Dacar",
    "Islandia":"Reikiavik",
    "Dinamarca":"Copenhague"
}

# acceder a un elemento
print( capital['Islandia'] )

# comprobar si un elemento está en el diccionario
print( "Dinamarca" in capital)
print( "España" in capital)

# añadir/modificar un elemento
capital['Ecuador'] = "Quito"
capital["Senegal"] = "Dakar"

# tamaño de un diccionario
print(len(capital))

# eliminar un elemento
capital["Canadá"] = "Ottawa"
print(len(capital))
del capital['Canadá']
print(len(capital))

# iterar
print('\n--- orden diccionario ---')
for pais in capital:    # for pais in capital.keys()
    print('*', pais, '>', capital[pais])

# iterar ordenado
print('\n--- ordenado ---')
for pais in sorted(capital):
    print('*', pais, '>', capital[pais])

# iterar valores
print('\n--- iterando valores ---')
for cap in capital.values():
    print('*', cap)

# iterar por clave/valor
print('\n--- par key->value ---')
for pais,cap in capital.items():
    print('*', pais, '>>', cap)