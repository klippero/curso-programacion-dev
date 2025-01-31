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
