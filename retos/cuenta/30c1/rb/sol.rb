class Cuenta
    DATA_FILE = "retos/cuenta/30c1/data.txt"

    def initialize
        dataf = File.open(DATA_FILE)
        @saldo = dataf.read.to_f
        dataf.close
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end
end
