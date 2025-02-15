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

    def add(amount,value)
        @slot[value] += amount
    end

    def take(amount,value)
        if @slot[value] >= amount
            @slot[value] -= amount
        end
    end

    def <<(otra)
        otra.slot.each do |value,amount|
            otra.take(amount,value)
            self.add(amount,value)
        end
    end

    def slot
        return @slot
    end
end


cr = CajaRegistradora.new
cr.add(3,0.02)
cr.add(2,20)
cr.add(1,2)
cr.add(12,1)
cr.add(3,0.5)
puts "cr: #{cr}"

cr2 = CajaRegistradora.new
cr2.add(14,0.2)
cr2.add(4,1)
cr2.add(7,0.1)
puts "cr2: #{cr2}"

cr2.add(2,100)
puts "cr2: #{cr2}"

cr2.take(1,100)
puts "cr2: #{cr2}"

cr2.take(3,0.01)
puts "cr2: #{cr2}"

cr << cr2
puts "cr: #{cr}"
puts "cr2: #{cr2}"
