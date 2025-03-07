class Cuenta
    DATA_FILE = "retos/cuenta/30c4/data.txt"
    LOG_FILE = "retos/cuenta/30c4/log.txt"

    def initialize
        if File.file?(DATA_FILE)
            dataf = File.open(DATA_FILE)
            @saldo = dataf.read.to_f
            dataf.close
        else
            @saldo = 0
        end
        log
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
        log(cantidad)
    end

    def reintegro( cantidad )
        if cantidad > 0 && cantidad <= @saldo
            @saldo = @saldo - cantidad
            @saldo = @saldo.round(2)
        end
        save
        log(-cantidad)
    end

    def save
        saldof = File.open(DATA_FILE,"w")
        saldof.print @saldo
        saldof.close
    end

    def log(cantidad=0)
        msg = ""
        if cantidad > 0
            msg = "+"
        end
        if cantidad != 0
            msg += "#{cantidad}€ "
        end
        msg += "> #{@saldo}€"
        logf = File.open(LOG_FILE,"a")
        logf.puts msg
        logf.close
    end
end
