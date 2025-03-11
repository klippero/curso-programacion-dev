class Entero
    def initialize(n)
        @n = n
    end

    def suma_divisores
        suma = 0
        (1 .. @n-1).each do |i|
            if @n % i == 0
                suma = suma + i
            end
        end
        return suma
    end

    def es_perfecto?
        return suma_divisores == @n
    end
end
