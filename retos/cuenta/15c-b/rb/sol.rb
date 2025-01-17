class Cuenta
    def initialize( titular, aportacion )
        @titular = titular
        @saldo = aportacion.to_f
    end

    def to_s
        return "<<<< Titular: #{@titular} Saldo: #{@saldo.round(2)}€ >>>>"
    end
end
