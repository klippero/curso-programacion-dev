# método de ordenación interna directo: burbuja
class ListaEnteros
    def initialize(lista)
        @lista = lista
    end


    def ordenaXburbuja!
        (@lista.length-1..0).step(-1).each do |i|
            (0..i-1).each do |j|
                if @lista[j] > @lista[j+1]
                    @lista[j],@lista[j+1] = @lista[j+1],@lista[j]
                end
            end
        end
    end


    def to_s
        return @lista.to_s
    end
end


lista = ListaEnteros.new( [17,1,25,3,13,5,7,11] )
lista.ordenaXburbuja!
puts lista
