class Entero
    def initialize(n)
        @n = n
    end

    def primo?
        i = 2
        encontrado = false
        while i < @n and !encontrado
            if @n % i == 0
                encontrado = true
            else
                i = i + 1
            end
        end
        return i == @n
    end

    def mostrar_primos_menores
        i = 1
        while i < @n
            if Entero.new(i).primo?
                print "#{i} "
            end
            i = i + 1
        end
    end

    def factores
        primo = 7
        n = @n
        while n % primo == 0
            puts("#{n} | #{primo}")
            n = n/primo
        end
        puts(1)
    end
end
