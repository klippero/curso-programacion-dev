class Cuenta
    def initialize(id)
        f = File.open("working/files/25c-#{id}.txt","r+")
        @saldo = 0
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end

    def liquidarIntereses
        @saldo = @saldo + @saldo / 100 * 10
    end

    def ingreso( cantidad )
        if cantidad > 0
            @saldo = @saldo + cantidad
        end
    end

    def reintegro( cantidad )
        if cantidad > 0 && cantidad <= @saldo
            @saldo = @saldo - cantidad
        end
    end
end

mi_cuenta = Cuenta.new('09777723D')
print "Cantidad: "
cantidad = gets.chomp.to_i
puts mi_cuenta

print "Reintegro: "
cantidad = gets.chomp.to_i
mi_cuenta.reintegro(cantidad)
puts mi_cuenta
