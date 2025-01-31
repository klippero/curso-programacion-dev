class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def mayor
        result = @lista[0]
        @lista[1..].each do |n|
            if n > result
                result = n
            end
        end
        return result
    end
end


=begin
Se podría inicializar el resultado con un valor
que estemos seguros que será menor que todos
los elementos de la lista y recorrer con each:

    def mayor
        result = 0
        @lista.each do |n|
            if n > result
                result = n
            end
        end
        return result
    end

La solución propuesta inicializa el resultado
con el primer elemento de la lista y recorre
el resto de elementos. También sería válido
recorrer todos los elementos de la lista,
aunque se estaría haciendo una iteración extra:

    def mayor
        result = @lista[0]
        @lista.each do |n|
            if n > result
                result = n
            end
        end
        return result
    end

=end
