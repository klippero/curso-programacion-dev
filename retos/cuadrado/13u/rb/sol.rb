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
end
