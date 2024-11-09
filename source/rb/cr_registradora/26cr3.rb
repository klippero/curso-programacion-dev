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
end


cr = CajaRegistradora.new
cr.add(0.02,3)
cr.add(20,2)
puts cr

cr.take(20,1)
puts cr

cr.take(50,1)
puts cr

cr.add(1,12)
cr.add(0.5,3)
puts cr

cr.take(0.5,3)
puts cr
