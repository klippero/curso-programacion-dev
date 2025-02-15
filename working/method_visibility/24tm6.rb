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

    def to_i
        return @segundos + @minutos * 60 + @horas * 60 * 60
    end

    def + (otro)
        return Tiempo.new(@horas + otro.horas, @minutos + otro.minutos, @segundos + otro.segundos)
    end

    def << (otro)
        @horas += otro.horas
        @minutos += otro.minutos
        @segundos += otro.segundos
        normalize
    end

    def > (otro)
        return self.to_i > otro.to_i
    end

    def * (n)
        return Tiempo.new(0,0, self.to_i * n)
        # alternativa return Tiempo.new(@horas * n, @minutos * n, @segundos * n)
    end

    private

        def normalize
            @minutos += @segundos / 60
            @segundos = @segundos % 60
            @horas += @minutos / 60
            @minutos = @minutos % 60
        end

    protected :horas, :minutos, :segundos
end


t1 = Tiempo.new(2,34,20)
t2 = t1 * 2
puts "#{t1} * 2 = #{t2}"

t = Tiempo.new(10,42,20)
t << Tiempo.new(0,20,55)
puts t

# puts t.horas # no es public, es protected
# t1.normalize # no es public, es private
