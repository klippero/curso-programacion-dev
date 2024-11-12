class Entero
    def initialize(n)
        @n = n
    end

    def es_cuadrado_perfecto?
        raiz = @n ** 0.5
        return raiz == raiz.to_i
    end
end


puts Entero.new(25).es_cuadrado_perfecto?
puts Entero.new(24).es_cuadrado_perfecto?
