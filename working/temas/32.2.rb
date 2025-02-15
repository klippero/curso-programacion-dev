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

    private

    def comision(importe)
        if importe < @saldo * 0.5
            result = 0
        else
            result = importe * 5 / 100
        end
        return result
    end
end


c = Cuenta.new(1000)
c.retira(800)
puts c

puts c.comision(100)
