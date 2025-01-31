class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def remove(referencia)
        result = []
        @lista.each do |n|
            if n != referencia
                result << n
            end
        end
        return result
    end
end
