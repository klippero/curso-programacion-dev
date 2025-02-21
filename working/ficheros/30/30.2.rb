class Frigo
    TEMP_FILE = "working/ficheros/30/30.2.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        f = File.open(TEMP_FILE)
        @temperatura = f.read.to_i
    end

    def abre
        @puerta = "abierta"
    end

    def cierra
        @puerta = "cerrada"
    end

    def fija_temperatura(nueva_temperatura=-18)
        @temperatura = nueva_temperatura
        f = File.open(TEMP_FILE,"w")
        f.print @temperatura
    end

    def to_s
        return "Color: #{@color} | Puerta #{@puerta} | #{@temperatura}ºC (#{para_temperatura_recomendada}ºC)"
    end

    def para_temperatura_recomendada
        return @temperatura - 7
    end

    def temperatura
        return @temperatura
    end
end


f = Frigo.new("rojo")
puts f
f.fija_temperatura(3)
puts f
