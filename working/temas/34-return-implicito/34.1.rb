class Cuadrado
    def initialize(lado)
        @lado = lado
    end

    def area
        return @lado * @lado
    end

    def perimetro
        return 4 * @lado
    end
end


c = Cuadrado.new(8)
puts c.area
puts c.perimetro
