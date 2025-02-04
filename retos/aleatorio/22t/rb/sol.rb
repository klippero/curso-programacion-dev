class Aleatorio
    def initialize
        @numero = rand(0..9)
        @intentos = 0
    end

    def es_este?(n)
        @intentos = @intentos + 1
        return n == @numero
    end

    def to_s
        return @numero.to_s
    end

    def numero
        return @numero
    end

    def intentos
        return @intentos
    end

    def juego
        numeros_dichos = []
        print "Dime un número entre 0 y 9: "
        n = gets.chomp.to_i

        while !self.es_este?(n)
            if numeros_dichos.include?(n)
                print "Ese ya lo has dicho. "
            else
                numeros_dichos << n
                if n > self.numero
                    print "Te has pasado. "
                else
                    print "Te has quedado corto. "
                end
            end
            print "Dime otro número entre 0 y 9: "
            n = gets.chomp.to_i
        end
        puts "Acertaste al intento #{@intentos}, el número era el #{@numero}"
    end
end
