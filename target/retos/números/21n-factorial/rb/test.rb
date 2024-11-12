class Entero
    def initialize(n)
        @n = n
    end

    def factorial
        producto = 1
        @n.times do |i|
            producto = producto * (i+1)
        end
        return producto
    end
end


print "El factorial de 8 es "
puts Entero.new(8).factorial
