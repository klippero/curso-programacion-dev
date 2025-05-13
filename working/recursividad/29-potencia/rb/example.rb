class Entero
    def initialize(n)
        @n = n
    end

    def potencia(exponente)
        if exponente == 0
            1
        else
            @n * potencia(exponente-1)
        end
    end
end


puts Entero.new(2).potencia(5)
