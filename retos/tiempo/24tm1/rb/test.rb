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
end


t = Tiempo.new(2,30,20)
puts t

t = Tiempo.new(2,65,20)
puts t

t = Tiempo.new(2,65,2000)
puts t
