class Frigo
    def abre
        puts "se está abriendo"
    end

    def cierra
        puts "se está cerrando"
    end

    def fija_temperatura
        puts "se cambia la temperatura"
    end
end


mi_frigo = Frigo.new
mi_frigo.abre
mi_frigo.cierra
mi_frigo.fija_temperatura
