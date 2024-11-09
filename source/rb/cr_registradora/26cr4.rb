class CajaRegistradora
    VALUE = [0.01, 0.02, 0.05, 0.1, 0.2, 0.5, 1, 2, 5, 10, 20, 50, 100, 200, 500]

    def initialize
        # @slot = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        @slot = []
        VALUE.each do
            @slot << 0
        end
    end

    def i4value(value)
        i = 0
        encontrado = false
        while i < VALUE.length && !encontrado
            if VALUE[i] == value
                encontrado = true
            else
                i += 1
            end
        end
        if !encontrado
            i = -1
        end
        return i
    end

    def to_s
        result = ""
        @slot.length.times do |i|
            if @slot[i] != 0
                result += "#{@slot[i]} x #{VALUE[i]}€ + "
            end
        end
        result = result[..-4]
        result += " = #{self.to_f}€"
        return result
    end

    def to_f
        total = 0.0
        @slot.length.times do |i|
            total += @slot[i] * VALUE[i]
        end
        return total
    end

    def add(value,amount)
        i = i4value(value)
        if i != -1
            @slot[i] += amount
        end
    end

    def take(value,amount)
        i = i4value(value)
        if i != -1
            if @slot[i] >= amount
                @slot[i] -= amount
            end
        end
    end

    def <<(otra)
        otra.slot.length.times do |i|
            amount = otra.slot[i]
            otra.take(VALUE[i],otra.slot[i])
            self.add(VALUE[i],amount)
        end
    end

    def slot
        return @slot
    end
end


cr = CajaRegistradora.new
cr.add(0.02,3)
cr.add(20,2)
cr.add(2,1)
cr.add(1,12)
cr.add(0.5,3)
puts "cr: #{cr}"

cr2 = CajaRegistradora.new
cr2.add(0.2,14)
cr2.add(1,4)
cr2.add(0.1,7)
puts "cr2: #{cr2}"

cr2.add(100,2)
puts "cr2: #{cr2}"

cr2.take(100,1)
puts "cr2: #{cr2}"

cr2.take(0.01,3)
puts "cr2: #{cr2}"

cr << cr2
puts "cr: #{cr}"
puts "cr2: #{cr2}"
