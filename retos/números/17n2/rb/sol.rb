class Entero
    def initialize(n)
        @n = n
    end

    def to_s
        return @n.to_s
    end

    def es_multiplo_de(numero)
        if @n % numero == 0
            return true
        else
            return false
        end
    end
end
