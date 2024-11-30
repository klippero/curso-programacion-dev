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

    def es_cuadrado_perfecto_while?
        encontrado = false
        i = 1
        while i < @n && !encontrado
            encontrado = Entero.new(i).potencia(2) == @n
            i = i + 1
        end
        return encontrado
    end
end


puts Entero.new(25).es_cuadrado_perfecto_while?
puts Entero.new(24).es_cuadrado_perfecto_while?
