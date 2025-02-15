class Tiempo
    def initialize_hms(horas,minutos,segundos)
        @horas = horas
        @minutos = minutos
        @segundos = segundos
        self.normalize
    end

    def initialize_seconds(segundos)
        @horas = 0
        @minutos = 0
        @segundos = segundos
        self.normalize
    end

    def initialize_strHMS(str)
        params = str.split(":")
        @horas = params[0].to_i
        @minutos = params[1].to_i
        @segundos = params[2].to_i
        self.normalize
    end

    def initialize(*params)
        if params.length == 1
            if params[0].class == Integer
                initialize_seconds(params[0])
            elsif params[0].class == String
                initialize_strHMS(params[0])
            end
        elsif params.length == 3
            initialize_hms(params[0],params[1],params[2])
        end
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
        self.normalize
    end

    def > (otro)
        return self.to_i > otro.to_i
    end

    def * (n)
        return Tiempo.new(self.to_i * n)
        # alternativa return Tiempo.new(@horas * n, @minutos * n, @segundos * n)
    end

    def normalize
        @minutos += @segundos / 60
        @segundos = @segundos % 60
        @horas += @minutos / 60
        @minutos = @minutos % 60
    end

    private :initialize_hms, :normalize
    protected :horas, :minutos, :segundos
end


puts Tiempo.new(2,34,20)
puts Tiempo.new(3750)
puts Tiempo.new("2:74:20")
