

random = Aleatorio.new
numeros_dichos = []

print "Dime un número: "
n = gets.chomp.to_i

while !random.es_este?(n)
    if numeros_dichos.include?(n)
        print "Ese ya lo has dicho. "
    else
        numeros_dichos << n
        if n > random.numero
            print "Te has pasado. "
        else
            print "Te has quedado corto. "
        end
    end
    print "Dime otro: "
    n = gets.chomp.to_i
end
puts "Acertaste al intento #{random.intentos}, el número era el #{random}"
