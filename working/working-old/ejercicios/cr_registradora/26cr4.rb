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

    def add(amount,value)
        i = i4value(value)
        if i != -1
            @slot[i] += amount
        end
    end

    def take(amount,value)
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
            otra.take(otra.slot[i],VALUE[i])
            self.add(amount,VALUE[i])
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
