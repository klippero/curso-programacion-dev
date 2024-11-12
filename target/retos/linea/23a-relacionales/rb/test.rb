class Linea
    def initialize( longitud )
        @longitud = longitud
    end

    def to_s
        result = ''
        @longitud.times do
            result = result + '-'
        end
        return result
    end

    def longitud
        return @longitud
    end

    def +(otra)
        return Linea.new( @longitud + otra.longitud )
    end

    def > ( otraLinea )
        return @longitud > otraLinea.longitud
    end

    def < ( otraLinea )
        return @longitud < otraLinea.longitud
    end

    def >= ( otraLinea )
        return @longitud >= otraLinea.longitud
    end

    def <= ( otraLinea )
        return @longitud <= otraLinea.longitud
    end

    def == ( otraLinea )
        return @longitud == otraLinea.longitud
    end
end


l1 = Linea.new(18)
l2 = Linea.new(5)
l3 = Linea.new(18)

puts "> #{l1 > l2}"     # true
puts "< #{l1 < l2}"     # false
puts "== #{l1 == l3}"   # true
puts ">= #{l2 >= l3}"   # false
puts "<= #{l1 <= l3}"   # true
