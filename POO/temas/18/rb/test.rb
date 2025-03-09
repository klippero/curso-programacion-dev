yo = 10
luis = 17
antonio = 21

# Y
if yo < 18 && luis < 18
    puts "Luis y yo somos menores de edad"
end

# O
if yo > 18 || antonio > 18
    puts "Antonio o yo somos mayores de edad"
end

# NO
if ! (yo > 18)
    puts "Yo no soy mayor de edad"
end
