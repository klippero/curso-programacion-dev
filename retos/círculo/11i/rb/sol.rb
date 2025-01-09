class Circulo
    def initialize(radio)
        @radio = radio
    end

    def area
        return Math::PI * @radio ** 2
    end

    def perimetro
        return 2 * Math::PI * @radio
    end
end
