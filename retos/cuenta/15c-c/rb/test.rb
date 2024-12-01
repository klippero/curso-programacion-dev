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
end


print "Titular: "
t = gets.chomp.to_s

print "Aportación inicial: "
a = gets.chomp.to_f

mi_cuenta = Cuenta.new(t,a)
puts mi_cuenta

print "Ingreso: "
c = gets.chomp.to_f

mi_cuenta.ingreso(c)
puts mi_cuenta
