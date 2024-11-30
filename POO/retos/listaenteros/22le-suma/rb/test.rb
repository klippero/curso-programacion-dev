class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def suma
        result = 0
        @lista.each do |n|
            result = result + n
        end
        return result
    end
end


lista = ListaEnteros.new( [1,3,5,7,2,11,5] )
puts lista.suma
