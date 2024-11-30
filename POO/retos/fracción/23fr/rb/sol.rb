class Fraccion
    def initialize(numerador,denominador)
        @numerador = numerador
        @denominador = denominador
    end

    def numerador
        return @numerador
    end

    def denominador
        return @denominador
    end

    def to_s
        return "#{@numerador}/#{@denominador}"
    end

    def *(otra)
        nuevo_numerador = self.numerador * otra.numerador
        nuevo_denominador = self.denominador * otra.denominador
        return Fraccion.new(nuevo_numerador,nuevo_denominador)
    end
end


f1 = Fraccion.new(2,3)
f2 = Fraccion.new(3,4)

puts f1
puts f2

f3 = f1 * f2
puts "#{f1} * #{f2} = #{f3}"
