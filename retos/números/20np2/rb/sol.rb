class Entero
    def initialize(n)
        @n = n
    end

    def suma_previos
        suma = 0
        i = 1
        while i < @n
            suma = suma + i
            i = i + 1
        end
        return suma
    end
end
