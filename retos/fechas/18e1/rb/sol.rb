class Año
    def initialize(year)
        @año = year
    end

    def to_s
        return @año.to_s
    end

    def es_bisiesto
        if @año % 4 == 0
            return true
        else
            return false
        end
    end
end
