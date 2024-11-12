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


b1 = Bonobus.new
puts b1

b2 = Bonobus.new(20)
puts b2

b2.usar
puts b2

b2.usar(2)
puts b2

b2.recarga(10)
puts b2
