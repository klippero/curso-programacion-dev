class Frigo
    DATA_FILE = "POO/temas/30/rb/30.3.txt"
    REG_FILE = "POO/temas/30/rb/30.3.reg.txt"

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
        dataf.print @temperatura
        dataf.close

        registrof = File.open(REG_FILE,"a")
            # si existe, añade al final
        registrof.puts @temperatura
        registrof.close
    end
end


f = Frigo.new("rojo")
puts f
f.fija_temperatura(3)
f.fija_temperatura(7)
f.fija_temperatura(10)
f.fija_temperatura(18)
puts f
