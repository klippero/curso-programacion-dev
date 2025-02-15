# método de ordenación interna directo: inserción directa
class ListaEnteros
    def initialize(lista)
        @lista = lista
    end


    def ordenaXinsercionDirecta!
        (1..@lista.length-1).each do |i|
            item_colocar = @lista[i]
            j = i-1
            while j>=0 && @lista[j] > item_colocar
                @lista[j+1] = @lista[j]
                j -= 1
            end
            @lista[j+1] = item_colocar
        end
    end


    def to_s
        return @lista.to_s
    end
end


lista = ListaEnteros.new( [17,1,25,3,13,5,7,11] )
lista.ordenaXinsercionDirecta!
puts lista
