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

    def es_cuadrado_perfecto?
        raiz = @n ** (1.0/2)
        return raiz == raiz.to_i
    end

    def es_cuadrado_perfecto_while?
        encontrado = false
        i = 1
        while not encontrado and i < @n
            encontrado = Entero.new(i).potencia(2) == @n
            i = i + 1
        end
        return encontrado
    end

    def mostrar_cuadrados_perfectos_menores
        i = 1
        while i < @n
            if Entero.new(i).es_cuadrado_perfecto?
                print "#{i} "
            end
            i = i + 1
        end
    end
end
