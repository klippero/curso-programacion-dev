class Bonobus
    def initialize( viajes = 10 )
        if viajes > 0
            @viajes = viajes
        else
            @viajes = 0
        end
    end

    def usar( viajes = 1 )
        @viajes = @viajes - viajes
    end

    def recarga( viajes )
        @viajes = @viajes + viajes
    end

    def to_s
        return "viajes disponibles: #{@viajes}"
    end

    def viajes
        return @viajes
    end
end
