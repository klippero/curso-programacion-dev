class Entero
    def initialize(n)
        @n = n
    end

    def potencia(exponente)
        producto = 1
        exponente.times do
            producto = producto * @n
        end
        return producto
    end
end
