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

    def normalize
        @minutos += @segundos / 60
        @segundos = @segundos % 60
        @horas += @minutos / 60
        @minutos = @minutos % 60
    end

    def to_i
        return @segundos + @minutos * 60 + @horas * 60 * 60
    end
end
