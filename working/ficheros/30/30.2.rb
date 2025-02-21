class Frigo
    TEMP_FILE = "working/ficheros/30/30.2.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        f = File.open(TEMP_FILE)
        @temperatura = f.read.to_i
    end

    def fija_temperatura(nueva_temperatura)
        @temperatura = nueva_temperatura
        f = File.open(TEMP_FILE,"w")
        f.print @temperatura
    end

    def to_s
        return "Color: #{@color} | Puerta " +
            "#{@puerta} | #{@temperatura}ºC"
    end
end


f = Frigo.new("rojo")
puts f
f.fija_temperatura(13)
puts f
