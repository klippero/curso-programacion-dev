class Bonobus
    def initialize( viajes = 10 )
        @viajes = viajes
    end

    def usar( viajes = 1 )
        @viajes = @viajes - viajes
    end

    def recarga( viajes )
        @viajes = @viajes + viajes
    end

    def info
        puts "viajes disponibles: #{@viajes}"
    end
end
