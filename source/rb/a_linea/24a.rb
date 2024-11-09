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

    def resize!( ratio )
        @longitud *= ratio
    end
end


l1 = Linea.new(2)
l1.resize!(3)
puts l1
