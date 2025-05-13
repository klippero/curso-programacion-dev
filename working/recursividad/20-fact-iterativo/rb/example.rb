class Entero
    def initialize(n)
        @n = n
    end

    def factorial
        i = 0
        f = 1
        while i < @n
            i = i + 1
            f = f * i
        end
        return f
    end
end


puts Entero.new(9).factorial
