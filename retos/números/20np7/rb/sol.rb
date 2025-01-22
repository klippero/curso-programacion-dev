class Entero
    def initialize(n)
        @n = n
    end

    def es_cuadrado_perfecto?
        raiz = @n ** 0.5
        return raiz == raiz.to_i
    end
end
