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
        @puerta_congelador = "abierta"
    end

    def cierra_congelador
        @puerta_congelador = "cerrada"
    end

    def muestra_estado
        puts "Puerta frigo #{@puerta_frigo} | puerta congelador #{@puerta_congelador}"
    end
end
