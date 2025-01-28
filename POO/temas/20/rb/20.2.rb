encontrado = false
i = 1
while i <= 900 && !encontrado
    if i % 7 == 0 && i % 23 == 0 && i % 2 == 0
        encontrado = true
    else
        i = i + 1
    end
end

puts "encontrado: #{encontrado}"
puts "i: #{i}"
