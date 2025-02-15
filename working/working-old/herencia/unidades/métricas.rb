class UnidadMétrica
    def initialize(n=0)
        @n = n.to_f
    end

    def to_s
        return "#{@n} #{self.class::Sym}"
    end

    def to(unidad)
        return unidad.new(@n * 10 ** (self.class::Exp - unidad::Exp))
    end
end

class Decímetro < UnidadMétrica
    Exp = -1
    Sym = "dm"

    def initialize(n=0)
        super(n)
    end
end

class Centímetro < UnidadMétrica
    Exp = -2
    Sym = "cm"

    def initialize(n=0)
        super(n)
    end
end

class Milímetro < UnidadMétrica
    Exp = -3
    Sym = "mm"

    def initialize(n=0)
        super(n)
    end
end

class Metro < UnidadMétrica
    Exp = 0
    Sym = "m"

    def initialize(n=0)
        super(n)
    end
end

class Decámetro < UnidadMétrica
    Exp = 1
    Sym = "dam"

    def initialize(n=0)
        super(n)
    end
end

class Hectómetro < UnidadMétrica
    Exp = 2
    Sym = "hm"

    def initialize(n=0)
        super(n)
    end
end

class Kilometro < UnidadMétrica
    Exp = 3
    Sym = "km"

    def initialize(n=0)
        super(n)
    end
end

me = Metro.new(2938.34)
puts "#{me} = #{me.to(Kilometro)} = #{me.to(Centímetro)} = #{me.to(Milímetro)} = #{me.to(Hectómetro)}"

me = Metro.new(1)
puts "#{me} = #{me.to(Kilometro)} = #{me.to(Centímetro)} = #{me.to(Milímetro)} = #{me.to(Hectómetro)}"

me = Kilometro.new(1)
puts "#{me} = #{me.to(Hectómetro)} = #{me.to(Decámetro)} = #{me.to(Metro)} = #{me.to(Decímetro)} = #{me.to(Centímetro)} = #{me.to(Milímetro)}"
