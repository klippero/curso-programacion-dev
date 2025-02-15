class Frigorifico
    def initialize
        @puerta_frigo = "cerrada"
        @puerta_congelador = "cerrada"
        @temperatura_frigo = 18
        @temperatura_congelador = 18
    end

    def to_s
        return "FRIGO #{@temperatura_frigo}ºC #{@puerta_frigo} / CONGELADOR #{@temperatura_congelador}ºC #{@puerta_congelador}"
    end

    def abre_puerta_frigo
        @puerta_frigo = "abierta"
    end

    def cierra_puerta_frigo
        @puerta_frigo = "cerrada"
    end

    def abre_puerta_congelador
        @puerta_congelador = "abierta"
    end

    def cierra_puerta_congelador
        @puerta_congelador = "cerrada"
    end

    def cambia_temperatura_frigo(temperatura)
        @temperatura_frigo = temperatura
    end

    def cambia_temperatura_congelador(temperatura)
        @temperatura_congelador = temperatura
    end
end


f = Frigorifico.new
puts f
f.abre_puerta_frigo
puts f
f.abre_puerta_congelador
puts f
f.cierra_puerta_frigo
puts f
f.cierra_puerta_congelador
puts f
f.cambia_temperatura_frigo(10)
puts f
f.cambia_temperatura_congelador(-7)
puts f
