class Cuenta
    def initialize( cantidad = 0 )
        @saldo = cantidad
    end

    def muestraSaldo
        puts "Saldo: #{@saldo}€"
    end

    def liquidarIntereses
        @saldo = @saldo + @saldo / 100 * 10
    end

    def ingreso( cantidad )
        @saldo = @saldo + cantidad
    end

    def reintegro( cantidad )
        @saldo = @saldo - cantidad
    end
end
