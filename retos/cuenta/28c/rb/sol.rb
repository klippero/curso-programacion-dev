class Cuenta
    def initialize( cantidad = 0 )
        if cantidad > 0
            @saldo = cantidad
        else
            @saldo = 0
        end
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end

    def liquidarIntereses
        @saldo = @saldo + @saldo / 100 * 10
    end

    def ingreso( *cantidades )
        cantidades.each do |cantidad|
            if cantidad > 0
                @saldo = @saldo + cantidad
            end
        end
    end

    def reintegro( *cantidad )
        cantidad.each do |cantidad|
            if cantidad > 0 && cantidad <= @saldo
                @saldo = @saldo - cantidad
            end
        end
    end
end
