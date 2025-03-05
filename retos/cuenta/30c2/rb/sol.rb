class Cuenta
    DATA_FILE = "retos/cuenta/30c2/data.txt"

    def initialize
        dataf = File.open(DATA_FILE)
        @saldo = dataf.read.to_f
        dataf.close
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end

    def ingreso( cantidad )
        if cantidad > 0
            @saldo = @saldo + cantidad
            @saldo = @saldo.round(2)
        end
        save
    end

    def reintegro( cantidad )
        if cantidad > 0 && cantidad <= @saldo
            @saldo = @saldo - cantidad
            @saldo = @saldo.round(2)
        end
        save
    end

    def save
        saldof = File.open(DATA_FILE,"w")
        saldof.print @saldo
        saldof.close
    end
end
