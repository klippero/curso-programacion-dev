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

    def initialize(grados)
        super(grados)
    end

    def to(cl)
        if cl == Celsius
            grados = @grados-273.15
        elsif cl == Fahrenheit
            grados =9.0/5*@grados-459.67
        end
        return cl.new(grados)
    end
end


class Fahrenheit < Grado
    Symbol = "ºF"

    def initialize(grados)
        super(grados)
    end

    def to(cl)
        if cl == Celsius
            grados = 5.0/9*(@grados-32)
        elsif cl == Kelvin
            grados = 5.0/9*(@grados+459.67)
        end
        return cl.new(grados)
    end
end


class Celsius < Grado
    Symbol = "ºC"

    def initialize(grados)
        super(grados)
    end

    def to(cl)
        if cl == Fahrenheit
            grados = 9.0/5*@grados+32
        elsif cl == Kelvin
            grados = @grados+273
        end
        return cl.new(grados)
    end
end


c = Celsius.new(10)
puts "#{c} = #{c.to(Kelvin)} = #{c.to(Fahrenheit)}"

f = Fahrenheit.new(-10)
puts "#{f} = #{f.to(Kelvin)} = #{f.to(Celsius)}"

k = Kelvin.new(0)
puts "#{k} = #{k.to(Fahrenheit)} = #{k.to(Celsius)}"


c1 = Celsius.new(9)
f1 = c1.to(Fahrenheit)
c2 = f1.to(Celsius)
puts "#{c1} = #{f1} = #{c2}"

k1 = Kelvin.new(300)
c3 = k1.to(Celsius)
f2 = k1.to(Fahrenheit)
puts "#{k1} = #{c3} = #{f2}"

f = Fahrenheit.new(23.2)
k = Kelvin.new(392)
r = f + k
puts "#{f} + #{k} = #{r}"

s2 = k1 + c1
puts "#{k1} + #{c1} = #{s2}"
k2 = c1.to(Kelvin)
puts "#{c1} = #{k2}"
