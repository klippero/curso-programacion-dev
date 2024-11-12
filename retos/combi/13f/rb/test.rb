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

mi_frigo.frigorifico.abre
puts mi_frigo

mi_frigo.congelador.fija_temperatura
puts mi_frigo

mi_frigo.congelador.abre
puts mi_frigo

mi_frigo.frigorifico.fija_temperatura(6)
puts mi_frigo
