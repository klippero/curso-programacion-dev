class Dado
    def initialize
        @cara_superior = rand(1..6)
    end

    def tira
        @cara_superior = rand(1..6)
    end

    def to_s
        return @cara_superior.to_s
    end

    def cara_superior
        return @cara_superior
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
        return "#{@dado1},#{@dado2} > #{total}"
    end
end


tirada1 = Tirada.new
puts tirada1.total
puts tirada1

tirada2 = Tirada.new
puts tirada2
