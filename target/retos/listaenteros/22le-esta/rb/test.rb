class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def esta?(referencia)
        encontrado = false
        i = 0
        while i < @lista.length && !encontrado
            encontrado = @lista[i] == referencia
            i = i + 1
        end
        return encontrado
    end
end


lista = ListaEnteros.new( [1,3,5,7,2,11,5] )
puts lista.esta?(7)
puts lista.esta?(9)


=begin
La comprobación de si se ha encontrado:

    encontrado = @lista[i] == referencia

es equivalente a:

    if @lista[i] == referencia
        encontrado = true
    else
        encontrado = false
    end

=end
