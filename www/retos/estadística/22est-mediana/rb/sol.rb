class ListaEnteros
    def initialize(lista)
        @numeros = lista
    end

    def suma
        result = 0
        @numeros.each do |item|
            result+= item
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


lista = ListaEnteros.new( [8,14,9,12,14,12,15,11,12,8,10,14,12,9,12] )
puts lista.mediana

puts ListaEnteros.new([1,3,3,6,7,8,9]).mediana
puts ListaEnteros.new([1,2,3,4,5,6,8,9]).mediana
