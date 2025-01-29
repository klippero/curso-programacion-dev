class Entero
    def initialize(n)
        @n = n
    end

    def factorial
        producto = 1
        (2..@n).each do |i|
            producto = producto * i
        end
        return producto
    end
end
