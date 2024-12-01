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


puts Entero.new(2).potencia(4)
puts Entero.new(5).potencia(3)
