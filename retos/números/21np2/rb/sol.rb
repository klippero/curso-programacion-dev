class Entero
    def initialize(n)
        @n = n
    end

    def suma_previos
        suma = 0
        @n.times do |i|
            suma = suma + i
        end
        return suma
    end
end
