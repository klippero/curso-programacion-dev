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

    def juego
        n = -1
        while !es_este?(n)
            print "Dime un número entre 0 y 9: "
            n = gets.chomp.to_i
        end
        puts "Acertaste, el número era el #{@numero}"
    end
end
