class Frigo
    TEMP_FILE = "working/ficheros/30/30.5.txt"
    REG_FILE = "working/ficheros/30/30.5.reg.txt"

    def initialize
        if File.file?(TEMP_FILE)
            f = File.open(TEMP_FILE)
            data = f.read.split(",")
            @temperatura = data[0].to_i
            @color = data[1]
            @puerta = data[2]
        else
            @temperatura = 0
            @color = "blanco"
            @puerta = "cerrada"
        end
    end

    def fija_temperatura(nueva_temperatura)
        @temperatura = nueva_temperatura
        tempf = File.open(TEMP_FILE,"w")
        tempf.print "#{@temperatura},#{@color},#{@puerta}"

        registrof = File.open(REG_FILE,"a")
        registrof.puts @temperatura
    end

    def to_s
        return "Color: #{@color} | Puerta " +
            "#{@puerta} | #{@temperatura}ºC"
    end
end


f = Frigo.new
puts f
f.fija_temperatura(17)
puts f
