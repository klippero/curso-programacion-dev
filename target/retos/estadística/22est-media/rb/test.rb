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
end


lista = ListaEnteros.new( [8,14,9,12,14,12,15,11,12,8,10,14,12,9,12] )
puts lista.media.round(2)

puts ListaEnteros.new([1]).media
puts ListaEnteros.new([2,2,2,4,5]).media
