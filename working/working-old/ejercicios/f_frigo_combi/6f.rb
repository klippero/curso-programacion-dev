class FrigorificoCombi
    def initialize
        @puerta_frigo = "cerrada"
        @puerta_congelador = "cerrada"
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
        puts "Puerta frigo #{@puerta_frigo} | puerta congelador #{@puerta_congelador}"
    end
end


mi_frigo = FrigorificoCombi.new
mi_frigo.muestra_estado
mi_frigo.abre_frigo
mi_frigo.muestra_estado
mi_frigo.cierra_frigo
mi_frigo.muestra_estado
mi_frigo.abre_congelador
mi_frigo.muestra_estado
mi_frigo.cierra_congelador
mi_frigo.muestra_estado
