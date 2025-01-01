class Cuenta
    def initialize
        @saldo = 100
    end

    def muestraSaldo
        puts "Saldo: #{@saldo}€"
    end

    def liquidarIntereses
        @saldo = @saldo * 1.1
    end

    def retirarFondos
        @saldo = 0
    end
end
