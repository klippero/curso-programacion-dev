class Cuenta
    DATA_FILE = "retos/cuenta/30c1/data.txt"

    def initialize
        @saldo = File.open(DATA_FILE).read.to_f
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end
end
