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

    def mostrar_perfectos_menores
        i = 1
        while i < @n
            if Entero.new(i).es_perfecto?
                print "#{i} "
            end
            i = i + 1
        end
    end
end


e = Entero.new(10000)
e.mostrar_perfectos_menores
