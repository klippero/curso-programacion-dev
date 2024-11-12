class FrigorificoCombi
    def initialize(temperatura=20)
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

    def fija_temperatura_frigo(nueva_temperatura=7)
        @temperatura_frigo = nueva_temperatura
    end

    def fija_temperatura_congelador(nueva_temperatura=-18)
        @temperatura_congelador = nueva_temperatura
    end
end


mi_frigo = FrigorificoCombi.new(15)
mi_frigo.muestra_estado

mi_frigo = FrigorificoCombi.new
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_frigo
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_frigo(6)
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_congelador
mi_frigo.muestra_estado

mi_frigo.fija_temperatura_congelador(-17)
mi_frigo.muestra_estado
