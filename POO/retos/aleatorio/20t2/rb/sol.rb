class Aleatorio
    def initialize
        @numero = rand(0..9)
    end

    def es_este?(n)
        return n == @numero
    end

    def to_s
        return @numero.to_s
    end

    def numero
        return @numero
    end
end


random = Aleatorio.new

print "Dime un número: "
n = gets.chomp.to_i

while !random.es_este?(n)
    if n > random.numero
        print "Te has pasado. "
    else
        print "Te has quedado corto. "
    end
    print "Dime otro: "
    n = gets.chomp.to_i
end
puts "Acertaste, el número era el #{random}"
