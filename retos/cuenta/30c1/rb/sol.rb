class Cuenta
    DATA_FILE = "working/ficheros/30/cuenta/data.txt"

    def initialize
        if File.file?(DATA_FILE)
            saldof = File.open(DATA_FILE)
            @saldo = saldof.read.to_f
        else
            @saldo = 0
        end
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end
end
