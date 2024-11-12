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

    def es_perfecto?
        return suma_divisores == @n
    end
end


n1 = Entero.new(8)
puts "¿8 es perfecto? #{n1.es_perfecto?}"

n2 = Entero.new(28)
puts "¿28 es perfecto? #{n2.es_perfecto?}"
