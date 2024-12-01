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

    def amigo
        candidato = self.suma_divisores
        if Entero.new(candidato).suma_divisores != @n or Entero.new(candidato).n == @n
            candidato = -1
        end
        return candidato
    end
end


puts Entero.new(0).amigo
puts Entero.new(220).amigo
puts Entero.new(250).amigo
puts Entero.new(284).amigo
puts Entero.new(100485).amigo
