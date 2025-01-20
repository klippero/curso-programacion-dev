class MaquinaFrio
    def initialize(temperatura,temperatura_recomendada)
        @temperatura_recomendada = temperatura_recomendada
        @puerta = "cerrada"
        @temperatura = temperatura
    end

    def abre
        @puerta = "abierta"
    end

    def cierra
        @puerta = "cerrada"
    end

    def fija_temperatura(nueva_temperatura=@temperatura_recomendada)
        @temperatura = nueva_temperatura
    end

    def para_temperatura_recomendada
        return @temperatura_recomendada - @temperatura
    end

    def temperatura
        return @temperatura
    end

    def to_s
        return "Puerta #{@puerta} | #{@temperatura}ºC (#{para_temperatura_recomendada}ºC)"
    end

    def ok?
        return @temperatura == @temperatura_recomendada
    end
end


class FrigorificoCombi
    def initialize(temperatura=20)
        @frigorifico = MaquinaFrio.new(temperatura,7)
        @congelador = MaquinaFrio.new(temperatura,-18)
    end

    def to_s
        return "Frigo #{@frigorifico} | Congelador #{@congelador}"
    end

    def frigorifico
        return @frigorifico
    end

    def congelador
        return @congelador
    end

    def ok?
        return @frigorifico.ok? && @congelador.ok?
    end
end
