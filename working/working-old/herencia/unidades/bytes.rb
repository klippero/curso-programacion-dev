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

    def initialize(n=0)
        super(n)
    end
end

class Kilobyte < UnidadesByte
    Exp = 10
    Sym = "KB"

    def initialize(n=0)
        super(n)
    end
end

class Megabyte < UnidadesByte
    Exp = 20
    Sym = "MB"

    def initialize(n=0)
        super(n)
    end
end

class Gigabyte < UnidadesByte
    Exp = 30
    Sym = "GB"

    def initialize(n=0)
        super(n)
    end
end

class Terabyte < UnidadesByte
    Exp = 40
    Sym = "TB"

    def initialize(n=0)
        super(n)
    end
end

class Petabyte < UnidadesByte
    Exp = 50
    Sym = "PB"

    def initialize(n=0)
        super(n)
    end
end

class Exabyte < UnidadesByte
    Exp = 60
    Sym = "EB"

    def initialize(n=0)
        super(n)
    end
end

class Zettabyte < UnidadesByte
    Exp = 70
    Sym = "ZB"

    def initialize(n=0)
        super(n)
    end
end


u = Gigabyte.new(3)
puts u.to(Megabyte)

u2 = Megabyte.new(1024)
puts u + u2
puts u2 + u
