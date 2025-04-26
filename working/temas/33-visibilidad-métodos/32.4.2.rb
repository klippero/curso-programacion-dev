class Cuenta
    def initialize(aportacion)
        @saldo = aportacion.to_f
    end

    def retira(importe)
        comision = self.comision(importe)
        @saldo = @saldo - importe - comision
    end

    def to_s
        return "Saldo: #{@saldo}€"
    end

    def fusiona( otra )
        @saldo += otra.saldo
        otra.saldo = 0
    end

    def comision(importe)
        if importe < @saldo * 0.5
            result = 0
        else
            result = importe * 5 / 100
        end
        return result
    end

    protected attr_accessor :saldo
    private :comision
end


c1 = Cuenta.new(1000)
c2 = Cuenta.new(500)
c1.fusiona(c2)
puts "C1 #{c1} / C2 #{c2}"
