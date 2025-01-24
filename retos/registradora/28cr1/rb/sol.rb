class CajaRegistradora
    VALUE = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100, 200, 500]

    def initialize
        @slot = {}
        VALUE.each do |value|
            @slot[value] = 0
        end
    end

    def to_s
        result = ""
        @slot.each do |value,amount|
            if amount != 0
                result += "#{amount} x #{value}€ + "
            end
        end
        result = result[..-4]
        result += " = #{self.to_f}€"
        return result
    end

    def to_f
        total = 0.0
        @slot.each do |value,amount|
            total += amount * value
        end
        return total
    end

    def add(value,amount=1)
        @slot[value] += amount
    end

    def take(value,amount=1)
        if @slot[value] >= amount
            @slot[value] -= amount
        end
    end

    def <<(otra)
        otra.slot.each do |value,amount|
            otra.take(value,amount)
            self.add(value,amount)
        end
    end

    def slot
        return @slot
    end
end
