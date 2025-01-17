class Celsius
    def initialize(grados)
        @grados = grados.to_f
    end

    def to_s
        return "#{@grados.round(2)} ºC"
    end

    def to_Fahrenheit
        return Fahrenheit.new( @grados * 9/5 + 32 )
    end

    def to_Kelvin
        return Kelvin.new( @grados + 273.15 )
    end
end


class Fahrenheit
    def initialize(grados)
        @grados = grados.to_f
    end

    def to_s
        return "#{@grados.round(2)} ºF"
    end

    def to_Celsius
        return Celsius.new( ( @grados - 32 ) * 5/9 )
    end

    def to_Kelvin
        return Kelvin.new( ( @grados - 32 ) * 5/9 + 273.15 )
    end
end


class Kelvin
    def initialize(grados)
        @grados = grados.to_f
    end

    def to_s
        return "#{@grados.round(2)} K"
    end

    def to_Celsius
        return Celsius.new( @grados - 273.15 )
    end

    def to_Fahrenheit
        return Fahrenheit.new( ( @grados - 273.15 ) * 9/5 + 32 )
    end
end
