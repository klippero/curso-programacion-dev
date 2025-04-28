class Bonobus
    def initialize( viajes = 10 )
        if viajes > 0
            @viajes = viajes
        else
            @viajes = 0
        end
    end

    def to_s
        return "#{@viajes}"
    end

    def recarga( viajes )
        if viajes >= 0
            @viajes = @viajes + viajes
        end
    end

    def usar( viajes = 1 )
        if viajes >= 0
            if @viajes < viajes
                raise ArgumentError.new("sólo quedan #{@viajes} viajes")
            end
            @viajes = @viajes - viajes
        end
    end

    def viajes
        return @viajes
    end

    def ultimo?
        return @viajes == 1
    end
end
