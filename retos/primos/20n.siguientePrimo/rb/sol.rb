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

    def siguientePrimo!
        i = @n + 1
        while !Entero.new(i).primo?
            i = i + 1
        end
        @n = i
    end

    def to_s
        return @n.to_s
    end
end
