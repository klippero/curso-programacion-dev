class Fraccion
    def initialize(numerador,denominador)
        @numerador = numerador
        @denominador = denominador
    end

    def numerador
        return @numerador
    end

    def denominador
        return @denominador
    end

    def to_s
        return "#{@numerador}/#{@denominador}"
    end

    def *(otra)
        nuevo_numerador = self.numerador * otra.numerador
        nuevo_denominador = self.denominador * otra.denominador
        return Fraccion.new(nuevo_numerador,nuevo_denominador)
    end
end
