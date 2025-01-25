class ListaEnteros
    def initialize(*numeros)
        @numeros = numeros
    end

    def suma
        result = 0.0
        @numeros.each do |item|
            result+= item
        end
        return result
    end

    def media
        return suma / @numeros.length
    end

    def mediana
        @numeros.sort!
        if @numeros.length % 2 == 1
            result = @numeros[@numeros.length/2]
        else
            result = ( @numeros[@numeros.length/2-1] + @numeros[@numeros.length/2] ) / 2.0
        end
        return result
    end

    def moda
        apariciones = {}
        @numeros.each do |item|
            if apariciones.has_key?(item)
                apariciones[item] += 1
            else
                apariciones[item] = 1
            end
        end

        result = []
        result << apariciones.keys[0]

        apariciones.keys[1..].each do |n|
            if apariciones[n] > apariciones[result[0]]
                result = []
                result << n
            elsif apariciones[n] == apariciones[result[0]]
                result << n
            end
        end
        return result
    end

    def to_s
        result = ''
        @numeros.each do |numero|
            result += numero.to_s + ', '
        end
        result = result[..-3]
        return result
    end
end
