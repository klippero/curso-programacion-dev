class Cuadrado
    def initialize(lado)
        @lado = lado
    end

    def to_s
        return "Cuadrado: #{@lado}x#{@lado}"
    end

    def lado
        return @lado
    end

    def ==(otro)
        return @lado == otro.lado
    end
end
