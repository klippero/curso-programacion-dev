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
