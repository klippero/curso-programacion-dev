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
        result = Entero.new()
        result.desfactoriza!(mcmF)
        return result.n
    end

    def MCD
        # factores comunes con menor exponente
        _MCDF = Entero.new(@lista[0]).factores
        @lista[1..].each do |n|
            fp = Entero.new(n).factores
            _MCDF.each do |factor,exponente|
                if !fp.has_key?(factor)
                    _MCDF[factor] = 0
                elsif fp[factor] < exponente
                    _MCDF[factor] = fp[factor]
                end
            end
        end

        result = Entero.new
        result.desfactoriza!(_MCDF)
        return result.n
    end
end


class Fraccion
    def initialize(numerador,denominador)
        @numerador = numerador
        @denominador = denominador
    end

    def to_s
        return "#{@numerador}/#{@denominador}"
    end

    def simplificarAcanonica!
        _MCD = ListaEnteros.new([@numerador,@denominador]).MCD
        @numerador = @numerador / _MCD
        @denominador = @denominador / _MCD
    end

    def propia?
        return @numerador.abs < @denominador.abs
    end
end
