class Cuenta
    DATA_FILE = "retos/cuenta/30c2/data.txt"

    def initialize
        if File.file?(DATA_FILE)
            saldof = File.open(DATA_FILE)
            @saldo = saldof.read.to_f
            saldof.close
        else
            @saldo = 0
        end
        save
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end

    def ingreso( cantidad )
        if cantidad > 0
            @saldo = @saldo + cantidad
        end
        save
    end

    def reintegro( cantidad )
        if cantidad > 0 && cantidad <= @saldo
            @saldo = @saldo - cantidad
        end
        save
    end

    def save
        saldof = File.open(DATA_FILE,"w")
        saldof.print @saldo
        saldof.close
    end
end
