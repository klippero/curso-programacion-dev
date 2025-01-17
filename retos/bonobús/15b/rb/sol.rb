class Bonobus
    def initialize( viajes = 10 )
        @viajes = viajes
    end

    def usar( viajes = 1 )
        @viajes = @viajes - viajes
    end

    def recarga(viajes)
        @viajes = @viajes + viajes
    end

    def to_s
        return "#{@viajes}"
    end
end
