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


puts "8! = #{Entero.new(8).factorial}"
puts "0! = #{Entero.new(0).factorial}"
