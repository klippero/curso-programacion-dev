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


puts Entero.new(2).potencia(4)
puts Entero.new(5).potencia(3)
