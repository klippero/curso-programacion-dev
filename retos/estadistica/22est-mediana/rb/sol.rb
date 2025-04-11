class ListaEnteros
    def initialize(lista)
        @numeros = lista
    end

    def suma
        result = 0
        @numeros.each do |item|
            result = result + item
        end
        return result
    end

    def media
        return suma / @numeros.length.to_f
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
end
