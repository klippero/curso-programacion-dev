class Frigo
    DATA_FILE = "POO/temas/30/rb/30.2.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        dataf = File.open(DATA_FILE)
        @temperatura = dataf.read.to_i
        dataf.close
    end

    def to_s
        return "Color: #{@color} | Puerta " +
            "#{@puerta} | #{@temperatura}ºC"
    end

    def fija_temperatura(nueva_temperatura)
        @temperatura = nueva_temperatura
        dataf = File.open(DATA_FILE,"w")
            # machaca el fichero si existe
        dataf.print @temperatura
        dataf.close
    end
end


f = Frigo.new("rojo")
puts f
f.fija_temperatura(13)
puts f
