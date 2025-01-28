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
end
