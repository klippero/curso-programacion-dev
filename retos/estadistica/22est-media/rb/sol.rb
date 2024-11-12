class ListaEnteros
    def initialize(lista)
        @numeros = lista
    end

    def suma
        result = 0
        @numeros.each do |item|
            result += item
        end
        return result
    end

    def media
        return suma / @numeros.length.to_f
    end
end
