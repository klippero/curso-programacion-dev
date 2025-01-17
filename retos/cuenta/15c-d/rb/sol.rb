class Cuenta
    def initialize( titular, aportacion )
        @titular = titular
        @saldo = aportacion.to_f
    end

    def to_s
        return "<<<< Titular: #{@titular} Saldo: #{@saldo.round(2)}€ >>>>"
    end

    def ingreso( cantidad )
        @saldo = @saldo + cantidad
    end

    def calcula_intereses
        return @saldo * 10 / 100
    end
end
