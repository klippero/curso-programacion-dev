class Cuadrado
    def initialize(lado)
        @lado = lado
    end

    def area
        @lado * @lado
    end

    def perimetro
        4 * @lado
    end
end


c = Cuadrado.new(8)
puts c.area
puts c.perimetro
