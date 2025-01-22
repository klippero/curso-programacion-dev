class Entero
    def initialize(n)
        @n = n
    end

    def suma_divisores
        suma = 0
        i = 1
        while i< @n
            if @n % i == 0
                suma = suma + i
            end
            i = i + 1
        end
        return suma
    end
end
