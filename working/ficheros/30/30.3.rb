class Frigo
    TEMP_FILE = "working/ficheros/30/30.3.txt"
    REG_FILE = "working/ficheros/30/30.3.reg.txt"

    def initialize(color="blanco")
        @color = color
        @puerta = "cerrada"
        f = File.open(TEMP_FILE)
        @temperatura = f.read.to_i
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
f.fija_temperatura(3)
f.fija_temperatura(7)
f.fija_temperatura(10)
f.fija_temperatura(18)
puts f
