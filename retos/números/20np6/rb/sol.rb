class Entero
    def initialize(n)
        @n = n
    end

    def potencia(exponente)
        producto = 1
        i = 1
        while i <= exponente
            producto = producto * @n
            i = i + 1
        end
        return producto
    end
end
