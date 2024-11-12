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


lista = ListaEnteros.new( [1,3,1,10,5,7,2,11,2,5,4] )
puts lista.nPares

lista = ListaEnteros.new( [1,3,1,1] )
puts lista.nPares

lista = ListaEnteros.new( [] )
puts lista.nPares
