class Num
    def initialize(numero,base)
        @numero = numero
        @base = base
    end

    def to(nueva_base)
        if nueva_base == @base
            result = Num.new(@numero,@base)
        else
            if @base == 10
                n = @numero.to_i
                result = ''
                while n > nueva_base-1
                    result = ( n % nueva_base ).to_s + result
                    n = n / nueva_base
                end
                result = n.to_s + result
                result = Num.new(result,nueva_base)
            else
                result = 0
                @numero.length.times do |i|
                    result = result + @numero[@numero.length-1-i].to_i * @base ** i
                end
                result = Num.new(result.to_s,10)
                if nueva_base != 10
                    result = result.to(nueva_base)
                end
            end
        end
        return result
    end

    def info
        return "#{@numero} base #{@base}"
    end

    def to_s
        return @numero
    end

    def base
        return @base
    end

    def numero
        return @numero
    end

    def +(otro)
        if @base != 10
            o1 = self.to(10)
        else
            o1 = self
        end

        if otro.base != 10
            o2 = otro.to(10)
        else
            o2 = otro
        end

        numero = o1.numero.to_i + o2.numero.to_i
        result = Num.new(numero.to_s,10)
        result = result.to(@base)
        return result
    end

    def >(otro)
        return to(10).numero.to_i > otro.to(10).numero.to_i
    end
end

class Binario < Num
    def initialize(numero)
        super(numero,2)
    end
end

class Octal < Num
    def initialize(numero)
        super(numero,8)
    end
end

class Decimal < Num
    def initialize(numero)
        super(numero,10)
    end
end

n = Num.new("19283",10)
puts n.info
n1 = n.to(2)
puts n1.info
n2 = n.to(8)
puts n2.info
n3 = n.to(5)
puts n3.info
puts n3.to(10).info


puts Num.new("726372",8).to(2).info
puts Num.new("240890",10).to(5).info

n1 = Num.new("930",10)
n2 = n1.to(5)

n3 = Num.new("370",10)
n4 = n3.to(6)

n5 = n2 + n4
puts n5.info
puts n5.to(10).info

puts "#{n2.info} + #{n4.info} = #{n5.info} = #{n5.to(10).info}"

b1 = Binario.new("10")
b2 = Binario.new("1")
b3 = b1 + b2
puts b3
puts b3.info

o1 = Octal.new("10")
o2 = o1 + b3
puts o2.info

d1 = Decimal.new(23)
d2 = Decimal.new(47)
puts d1 + d2
puts d1 > d2


d = Decimal.new("732")
puts d.to(5)
