class Entero
    def initialize(n=0)
        @n = n
    end

    def desfactoriza!(factores)
        @n = 1
        factores.each do |factor,exponente|
            @n = @n * factor ** exponente
        end
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
        factores = {}
        primo = Entero.new(2)
        n = @n
        while n != 1
            while n % primo.n == 0
                if !factores.has_key?(primo.n)
                    factores[primo.n] = 0
                end
                factores[primo.n] += 1
                n = (n/primo.n)
            end
            primo.siguientePrimo!
        end
        return factores
    end
end
