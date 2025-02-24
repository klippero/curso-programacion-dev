class Frigo
    DATA_FILE = "POO/temas/30/rb/30.4.txt"
    REG_FILE = "POO/temas/30/rb/30.4.reg.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        if File.file?(DATA_FILE)
            dataf = File.open(DATA_FILE)
            @temperatura = dataf.read.to_i
            dataf.close
        else
            @temperatura = 0
        end
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
        registrof.puts @temperatura
        registrof.close
    end
end


f = Frigo.new("rojo")
puts f
f.fija_temperatura(7)
f.fija_temperatura(10)
f.fija_temperatura(18)
puts f
