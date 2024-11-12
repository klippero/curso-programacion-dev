class Cuadrado
    def initialize(lado=0)
        @lado = lado
    end

    def area
        return @lado * @lado
    end
end


c1 = Cuadrado.new(8)
puts c1.area

c2 = Cuadrado.new
puts c2.area
