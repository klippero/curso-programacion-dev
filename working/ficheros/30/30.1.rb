class Frigo
    TEMP_FILE = "working/ficheros/30/30.1.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        f = File.open(TEMP_FILE)
        @temperatura = f.read.to_i
    end

    def to_s
        return "Color: #{@color} | Puerta " +
            "#{@puerta} | #{@temperatura}ºC"
    end
end


f = Frigo.new("rojo")
puts f
