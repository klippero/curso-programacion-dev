# diccionario vacío
capital = {}

# inicializar con valores
capital = {
   "Senegal" => "Dacar",
   "Islandia" => "Reikiavik",
   "Dinamarca" => "Copenhague"
}

# acceder a un elemento
puts capital["Islandia"]

# comprobar si un elemento está
puts capital.has_key?("Dinamarca")
puts capital.has_key?("España")

# añadir/modificar un elemento
capital["Ecuador"] = "Quito"
capital["Senegal"] = "Dakar"

# tamaño de un diccionario
puts capital.length

# eliminar un elemento
capital["Canadá"] = "Ottawa"
puts capital.length
capital.delete("Canadá")
puts capital.length

# iterar
puts "\n--- orden diccionario ---"
capital.keys.each do |pais|
    puts "* #{pais} > #{capital[pais]}"
end

# iterar ordenado
puts "\n--- ordenado ---"
capital.keys.sort.each do |pais|
    puts "* #{pais} > #{capital[pais]}"
end

# iterar valores
puts "\n--- iterando valores ---"
capital.values.each do |cap|
   puts "> #{cap}"
end

# iterar por clave/valor
puts "\n--- par key->value ---"
capital.each do |pais,cap|
   puts "* #{pais} > #{cap}"
end
