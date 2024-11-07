class Rectangulo
    def initialize(base,altura)
        @base = base
        @altura = altura
    end

    def area
        return @base * @altura
    end

    def perimetro
        return 2 * (@base + @altura)
    end

    def to_s
        return "Rectángulo de base #{@base} y altura #{@altura}"
    end

    def agranda(ratio)
        @base = @base * ratio
        @altura = @altura * ratio
    end
end
