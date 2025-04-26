class Grado
    def initialize(grados)
        @grados = grados.to_f.round(2)
    end

    def to_s
        return "#{@grados} #{self.class::Symbol}"
    end

    def grados
        return @grados
    end

    def symbol
        return @symbol
    end

    def + (otro)
        if self.class != otro.class
            otro = otro.to(self.class)
        end
        return self.class.new( @grados + otro.grados )
    end
end


class Kelvin < Grado
    Symbol = "K"

    def to(cl)
        if cl == Celsius
            grados = @grados - 273.15
        elsif cl == Fahrenheit
            grados =9.0 / 5 * @grados - 459.67
        else
            grados = @grados
        end
        return cl.new(grados)
    end
end


class Fahrenheit < Grado
    Symbol = "ºF"

    def to(cl)
        if cl == Celsius
            grados = 5.0 / 9 * ( @grados - 32 )
        elsif cl == Kelvin
            grados = 5.0 / 9 * ( @grados + 459.67 )
        else
            grados = @grados
        end
        return cl.new(grados)
    end
end


class Celsius < Grado
    Symbol = "ºC"

    def to(cl)
        if cl == Fahrenheit
            grados = 9.0 / 5 * @grados + 32
        elsif cl == Kelvin
            grados = @grados + 273.15
        else
            grados = @grados
        end
        return cl.new(grados)
    end
end
