class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def nPares
        result = 0
        @lista.each do |n|
            if n % 2 == 0
                result = result + 1
            end
        end
        return result
    end
end
