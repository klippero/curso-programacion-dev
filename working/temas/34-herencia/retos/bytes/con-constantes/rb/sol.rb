class UnidadesByte
    def initialize(n=0)
        @n = n.to_f
    end

    def to_s
        return "#{@n} #{self.class::Sym}"
    end

    def to(unidad)
        return unidad.new(@n * 2 ** (self.class::Exp - unidad::Exp))
    end

    def n
        return @n
    end

    def + (otro)
        if self.class != otro.class
            otro = otro.to(self.class)
        end
        return self.class.new( @n + otro.n )
    end
end


class Byte < UnidadesByte
    Exp = 0
    Sym = "B"
end


class Kilobyte < UnidadesByte
    Exp = 10
    Sym = "KB"
end


class Megabyte < UnidadesByte
    Exp = 20
    Sym = "MB"
end


class Gigabyte < UnidadesByte
    Exp = 30
    Sym = "GB"
end


class Terabyte < UnidadesByte
    Exp = 40
    Sym = "TB"
end


class Petabyte < UnidadesByte
    Exp = 50
    Sym = "PB"
end


class Exabyte < UnidadesByte
    Exp = 60
    Sym = "EB"
end


class Zettabyte < UnidadesByte
    Exp = 70
    Sym = "ZB"
end
