class Entero
    def initialize(n)
        @n = n
    end

    def factorial
        producto = 1
        i = 2 #optimizamos con 2
        while i <= @n
            producto = producto * i
            i = i + 1
        end
        return producto
    end
end
