class Linea
    def initialize( longitud )
        @longitud = longitud
    end

    def to_s
        result = ''
        i = 1
        while i <= @longitud
            result = result + '-'
            i = i+1
        end
        return result
    end
end
