frutas = ["piña", "coco", "higo", "dátil", "kiwi"]

encontrado = false
i = 0
while i < frutas.length && !encontrado
    if frutas[i].length == 5
        encontrado = true
    else
        i = i + 1
    end
end

puts "encontrado: #{encontrado}"
puts "i = #{i}"
puts frutas[i]
