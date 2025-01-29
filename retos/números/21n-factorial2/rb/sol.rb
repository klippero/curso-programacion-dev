class Entero
    def initialize(n)
        @n = n
    end

    def factorial
        producto = 1
        (1..@n).each do |i|
            producto = producto * i
        end
        return producto
    end
end
