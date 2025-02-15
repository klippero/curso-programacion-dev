# método de ordenación interna directo: selección directa
class ListaEnteros
    def initialize(lista)
        @lista = lista
    end


    def ordenaXseleccionDirecta!
        (0..@lista.length-2).each do |i|
            pmenor = i
            (i+1..@lista.length-1).each do |j|
                if @lista[j] < @lista[pmenor]
                    pmenor = j
                end
            end
            @lista[i], @lista[pmenor] = @lista[pmenor], @lista[i]
        end
    end


    def to_s
        return @lista.to_s
    end
end


lista = ListaEnteros.new( [17,1,25,3,13,5,7,11] )
lista.ordenaXseleccionDirecta!
puts lista
