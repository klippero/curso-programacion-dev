class FrigorificoCombi
    def initialize
        @puerta_frigo = "cerrada"
        @puerta_congelador = "cerrada"
        @temperatura_frigo = 20
        @temperatura_congelador = 20
    end

    def abre_frigo
        @puerta_frigo = "abierta"
    end

    def cierra_frigo
        @puerta_frigo = "cerrada"
    end

    def abre_congelador
        @puerta_congelador = "abierta"
    end

    def cierra_congelador
        @puerta_congelador = "cerrada"
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


mi_frigo = FrigorificoCombi.new
mi_frigo.muestra_estado
mi_frigo.fija_temperatura_frigo(4)
mi_frigo.muestra_estado
mi_frigo.fija_temperatura_congelador(-18)
mi_frigo.muestra_estado
