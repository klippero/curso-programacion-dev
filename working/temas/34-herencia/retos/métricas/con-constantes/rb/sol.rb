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
end


class Centímetro < UnidadMétrica
    Exp = -2
    Sym = "cm"
end


class Milímetro < UnidadMétrica
    Exp = -3
    Sym = "mm"
end


class Metro < UnidadMétrica
    Exp = 0
    Sym = "m"
end


class Decámetro < UnidadMétrica
    Exp = 1
    Sym = "dam"
end


class Hectómetro < UnidadMétrica
    Exp = 2
    Sym = "hm"
end


class Kilometro < UnidadMétrica
    Exp = 3
    Sym = "km"
end
