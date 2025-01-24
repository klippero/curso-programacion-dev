class Linea
    def initialize(longitud)
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

    def resize!(ratio)
        @longitud *= ratio
    end
end


class GraficoBarras
    def initialize(showNum,*longitudes)
        @lineas = []
        longitudes.each do |longitud|
            @lineas << Linea.new(longitud)
        end
        @showNum = showNum
    end

    def to_s
        result = ""
        @lineas.each do |linea|
            result += linea.to_s
            if @showNum
                result += " #{linea.longitud}"
            end
            result += "\n"
        end
        return result
    end
end
