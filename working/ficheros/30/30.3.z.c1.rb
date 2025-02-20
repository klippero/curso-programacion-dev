class Cuenta
    SALDO_FILE = "working/ficheros/30/30.3.z.c1.txt"

    def initialize
        saldof = File.open(SALDO_FILE)
        @saldo = saldof.read.to_i
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


c = Cuenta.new
