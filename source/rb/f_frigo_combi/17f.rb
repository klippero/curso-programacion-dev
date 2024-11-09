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
        if @temperatura > @temperatura_recomendada
            msg = "Puerta #{@puerta} | #{@temperatura}ºC (#{para_temperatura_recomendada}ºC) ALERTA"
        else
            msg = "Puerta #{@puerta} | #{@temperatura}ºC (#{para_temperatura_recomendada}ºC)"
        end
        return msg
    end
end


class FrigorificoCombi
    def initialize
        @frigorifico = MaquinaFrio.new(20,7)
        @congelador = MaquinaFrio.new(20,-18)
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
end


mi_frigo = FrigorificoCombi.new
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(8)
puts mi_frigo

mi_frigo.congelador.fija_temperatura
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(5)
puts mi_frigo
