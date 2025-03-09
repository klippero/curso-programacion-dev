class Cuenta
    def initialize(deposito_inicial)
        @saldo = 100
        puts "se abre la cuenta con #{@saldo}€"
    end

    def muestraSaldo
        puts "Saldo: #{@saldo}€"
    end

    def ingreso( cantidad )
        @saldo = @saldo + cantidad
        puts "se ingresan #{cantidad}€ y queda un saldo de #{@saldo}€"
    end

    def reintegro( cantidad )
        @saldo = @saldo - cantidad
        puts "se retiran #{cantidad}€ y queda un saldo de #{@saldo}€"
    end
end
