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

    def siguientePrimo!
        i = @n + 1
        while !Entero.new(i).primo?
            i = i + 1
        end
        @n = i
    end

    def n
        return @n
    end

    def to_s
        return @n.to_s
    end

    def factores
        primo = Entero.new(2)
        n = @n
        while n != 1
            while n % primo.n == 0
                puts("#{n} | #{primo}")
                n = n/primo.n
            end
            primo.siguientePrimo!
        end
        puts(1)
    end
end


print "n: "
n = Entero.new(gets.chomp.to_i)
n.factores
