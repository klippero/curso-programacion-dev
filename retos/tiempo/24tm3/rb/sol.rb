class Tiempo
    def initialize(horas,minutos,segundos)
        @horas = horas
        @minutos = minutos
        @segundos = segundos
        self.normalize
    end

    def to_s
        return "#{@horas}:#{@minutos}:#{@segundos}"
    end

    def horas
        return @horas
    end

    def minutos
        return @minutos
    end

    def segundos
        return @segundos
    end

    def normalize
        @minutos += @segundos / 60
        @segundos = @segundos % 60
        @horas += @minutos / 60
        @minutos = @minutos % 60
    end

    def to_i
        return @segundos + @minutos * 60 + @horas * 60 * 60
    end

    def + (otro)
        return Tiempo.new(@horas + otro.horas, @minutos + otro.minutos, @segundos + otro.segundos)
    end
end
