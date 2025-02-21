class Frigo
    DATA_FILE = "working/ficheros/30/30.5.txt"
    REGISTRO_FILE = "working/ficheros/30/30.5.reg.txt"

    def initialize
        if File.file?(DATA_FILE)
            f = File.open(DATA_FILE)
            data = f.read.split(",")
            @temperatura = data[0].to_i
            @color = data[1]
            @puerta = data[2]
        else
            @temperatura = 0
            @color = "blanco"
            @puerta = "cerrada"
        end
        save
    end

    def save
        dataf = File.open(DATA_FILE,"w")
        dataf.print "#{@temperatura},#{@color},#{@puerta}"
    end

    def abre
        @puerta = "abierta"
        save
    end

    def cierra
        @puerta = "cerrada"
        save
    end

    def fija_temperatura(nueva_temperatura=-18)
        @temperatura = nueva_temperatura
        save

        registrof = File.open(REGISTRO_FILE,"a")
        registrof.puts @temperatura
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


f = Frigo.new
puts f
f.abre
f.fija_temperatura(17)
puts f
