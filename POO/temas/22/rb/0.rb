# array vacío
frutas = []

# inicializar
frutas = ['piña','coco']

# añade al final
frutas << 'uva'
frutas << 'dátil'
frutas << 'kiwi'
print frutas
puts

# acceso a elementos
puts frutas[0]
puts frutas[4]

# tamaño
puts frutas.length

# modificar un elemento
frutas[2] = 'higo'
print frutas
puts

# slice
print frutas[1..3]
puts
print frutas[3..]
puts
print frutas[..1]
puts
print frutas[-3..-2]
puts

# extrae el último
puts frutas.pop
print frutas
puts

# ordenar no destructivo
print frutas.sort
puts
print frutas
puts

# ordenar destructivo
frutas.sort!
print frutas
puts

# comprobar si está
puts frutas.include?('coco')
puts frutas.include?('manzana')

# eliminar un elemento
frutas.delete_at(2)
print frutas
