class Dado
    def initialize
        @cara_superior = rand(1..6)
    end

    def tira
        @cara_superior = rand(1..6)
    end

    def cara_superior
        return @cara_superior
    end

    def to_s
        return @cara_superior.to_s
    end
end

class Tirada
    def initialize
        @dado1 = Dado.new
        @dado2 = Dado.new
    end

    def total
        return @dado1.cara_superior + @dado2.cara_superior
    end

    def to_s
        if @dado1.cara_superior == @dado2.cara_superior
            msg = "#{@dado1},#{@dado2} > #{self.total} IGUALES"
        else
            msg = "#{@dado1},#{@dado2} > #{self.total}"
        end
        return msg
    end
end


jugador1 = Tirada.new
puts jugador1

jugador2 = Tirada.new
puts jugador2

if jugador1.total > jugador2.total
    puts "GANA JUGADOR 1"
elsif jugador2.total > jugador1.total
    puts "GANA JUGADOR 2"
else
    puts "EMPATADOS"
end
