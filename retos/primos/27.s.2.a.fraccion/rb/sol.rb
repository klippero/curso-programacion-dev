class Fraccion
    def initialize(numerador,denominador)
        @numerador = numerador
        @denominador = denominador
    end

    def to_s
        return "#{@numerador}/#{@denominador}"
    end
end
