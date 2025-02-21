class Frigo
    TEMP_FILE = "working/ficheros/30/30.4.txt"
    REG_FILE = "working/ficheros/30/30.4.reg.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        if File.file?(TEMP_FILE)
            f = File.open(TEMP_FILE)
            @temperatura = f.read.to_i
        else
            @temperatura = 0
        end
    end

    def fija_temperatura(nueva_temperatura)
        @temperatura = nueva_temperatura
        tempf = File.open(TEMP_FILE,"w")
        tempf.print @temperatura

        registrof = File.open(REG_FILE,"a")
        registrof.puts @temperatura
    end

    def to_s
        return "Color: #{@color} | Puerta " +
            "#{@puerta} | #{@temperatura}ºC"
    end
end


f = Frigo.new("rojo")
puts f
f.fija_temperatura(7)
puts f
