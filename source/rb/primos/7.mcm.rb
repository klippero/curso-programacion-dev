class Entero
    def initialize(n=0)
        @n = n
    end

    def desfactoriza!(factores)
        @n = 1
        factores.each do |factor,potencia|
            @n = @n * factor ** potencia
        end
    end

    def primo?
        i = 2
        encontrado = false
        while i < @n and !encontrado
            if @n % i == 0
                encontrado = true
            else
                i = i + 1
            end
        end
        return i == @n
    end

    def mostrar_primos_menores
        i = 1
        while i < @n
            if Entero.new(i).primo?
                puts "#{i} "
            end
            i = i + 1
        end
    end

    def siguientePrimo!
        i = @n + 1
        while !Entero.new(i).primo?
            i = i + 1
        end
        @n = i
    end

    def n
        return @n
    end

    def to_s
        return @n.to_s
    end

    def factores
        factores = {}
        primo = Entero.new(2)
        n = @n
        while n.abs != 1
            while n % primo.n == 0
                if !factores.has_key?(primo.n)
                    factores[primo.n] = 0
                end
                factores[primo.n] += 1
                n = n/primo.n
            end
            primo.siguientePrimo!
        end
        return factores
    end
end


class ListaEnteros
    def initialize(lst)
        @lista = lst
    end

    def to_s
        return @lista.to_s
    end

    def mcm
        # factores comunes y no comunes con mayor exponente
        mcmF = {}
        @lista.each do |n|
            fp = Entero.new(n).factores
            fp.each do |factor,exponente|
                if !mcmF.has_key?(factor)
                    mcmF[factor] = exponente
                elsif exponente > mcmF[factor]
                    mcmF[factor] = exponente
                end
            end
        end
        result = Entero.new
        result.desfactoriza!(mcmF)
        return result.n
    end
end


puts ListaEnteros.new([12,8]).mcm
puts ListaEnteros.new([10,27,32]).mcm
puts ListaEnteros.new([3,7,9]).mcm
puts ListaEnteros.new([11,9,2,6]).mcm
puts ListaEnteros.new([6,4,9]).mcm
puts ListaEnteros.new([-20,25]).mcm
