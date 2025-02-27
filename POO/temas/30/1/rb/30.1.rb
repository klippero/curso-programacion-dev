class Frigo
    DATA_FILE = "POO/temas/30/1/30.1.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        dataf = File.open(DATA_FILE)
            # error si no existe
        @temperatura = dataf.read.to_i
        dataf.close
    end

    def to_s
        return "Color: #{@color} | Puerta " +
            "#{@puerta} | #{@temperatura}ºC"
    end
end


f = Frigo.new("rojo")
puts f
