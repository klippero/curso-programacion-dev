class Cuadrado
    def initialize(lado)
        @lado = lado
    end

    def to_s
        return "Cuadrado: #{@lado}x#{@lado}"
    end

    def area
        return @lado * @lado
    end

    def lado
        return @lado
    end

    def agranda(ratio)
        @lado = @lado * ratio
    end
end

c = Cuadrado.new(4)
puts "#{c} area #{c.area}"

c.agranda(1.5)
puts "#{c} area #{c.area}"
