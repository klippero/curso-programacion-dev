class Celsius
    def initialize(grados)
        @grados = grados
    end

    def to_Fahrenheit
        return @grados * 9/5 + 32
    end
end
