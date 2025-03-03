class Frigo
    DATA_FILE = "POO/temas/30/5/30.5.txt"
    REG_FILE = "POO/temas/30/5/30.5.reg.txt"

    def initialize
        if File.file?(DATA_FILE)
            dataf = File.open(DATA_FILE)
            data = dataf.read.split(",")
            dataf.close
            @temperatura = data[0].to_i
            @color = data[1]
            @puerta = data[2]
        else
            @temperatura = 0
            @color = "blanco"
            @puerta = "cerrada"
        end
    end

    def to_s
        return "Color: #{@color} | Puerta " +
            "#{@puerta} | #{@temperatura}ºC"
    end

    def fija_temperatura(nueva_temperatura)
        @temperatura = nueva_temperatura
        dataf = File.open(DATA_FILE,"w")
        dataf.print "#{@temperatura},#{@color},#{@puerta}"
        dataf.close

        registrof = File.open(REG_FILE,"a")
        registrof.puts @temperatura
        registrof.close
    end
end


f = Frigo.new
puts f
f.fija_temperatura(13)
f.fija_temperatura(17)
puts f
