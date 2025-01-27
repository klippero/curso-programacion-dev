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

    def juego
        print "Dime un número entre 0 y 9: "
        n = gets.chomp.to_i

        while !self.es_este?(n)
            if n > self.numero
                print "Te has pasado. "
            else
                print "Te has quedado corto. "
            end
            print "Dime otro número entre 0 y 9: "
            n = gets.chomp.to_i
        end
        puts "Acertaste, el número era el #{@numero}"
    end
end
