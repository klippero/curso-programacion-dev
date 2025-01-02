class FrigorificoCombi
    def initialize(temperatura)
        @puerta_frigo = "cerrada"
        @puerta_congelador = "cerrada"
        @temperatura_frigo = temperatura
        @temperatura_congelador = temperatura
    end

    def abre_frigo
        @puerta_frigo = "abierta"
    end

    def cierra_frigo
        @puerta_frigo = "cerrada"
    end

    def abre_congelador
        @puerta_frigo = "abierta"
    end

    def cierra_congelador
        @puerta_frigo = "cerrada"
    end

    def muestra_estado
        puts "Frigo #{@temperatura_frigo}ºC #{@puerta_frigo} | congelador #{@temperatura_congelador}ºC #{@puerta_congelador}"
    end

    def fija_temperatura_frigo(nueva_temperatura)
        @temperatura_frigo = nueva_temperatura
    end

    def fija_temperatura_congelador(nueva_temperatura)
        @temperatura_congelador = nueva_temperatura
    end
end
