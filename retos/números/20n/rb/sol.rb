class Entero
    def initialize(n)
        @n = n
    end

    def to_s
        return @n.to_s
    end

    def par?
        return @n % 2 == 0
    end

    def pide_numeros_hasta_par
        while !par?
            print "n: "
            @n = gets.chomp.to_i
        end
    end
end
