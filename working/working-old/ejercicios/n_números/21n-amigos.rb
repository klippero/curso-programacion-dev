class Entero
    def initialize(n)
        @n = n
    end

    def suma_divisores
        suma = 0
        (1 .. @n-1).each do |i|
            if @n % i == 0
                suma = suma + i
            end
        end
        return suma
    end

    def n
        return @n
    end

    def to_s
        return @n.to_s
    end

    def amigo?
        return amigo != -1
    end

    def amigo
        candidato = self.suma_divisores
        if Entero.new(candidato).suma_divisores != @n or Entero.new(candidato).n == @n or candidato < @n
            candidato = -1
        end
        return candidato
    end

    def siguienteAmigo!
        @n = @n + 1
        while !amigo?
            @n = @n + 1
        end
    end
end


n = Entero.new(0)

puts n.amigo?
n.siguienteAmigo!
puts "#{n},#{n.amigo}"
n.siguienteAmigo!
puts "#{n},#{n.amigo}"
n.siguienteAmigo!
puts "#{n},#{n.amigo}"
n.siguienteAmigo!
puts "#{n},#{n.amigo}"
n.siguienteAmigo!
puts "#{n},#{n.amigo}"
n.siguienteAmigo!
puts "#{n},#{n.amigo}"

n = Entero.new(0)
while n.n < 100000
    n.siguienteAmigo!
    puts "#{n},#{n.amigo}"
end
