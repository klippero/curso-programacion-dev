class ListaEnteros
    def initialize(lista)
        @lista = lista
    end

    def posMayor
        result = 0
        i = 1
        while i < @lista.length
            if @lista[i] > @lista[result]
                result = i
            end
            i = i + 1
        end
        return result
    end
end


=begin
La solución propuesta inicializa el resultado
a la primera posición de la lista (la 0) y
recorre el resto. Para recorrer desde 1 hasta
length-1 es necesario usar un while.

Como alternativa se podría generar una lista
con los índices del 1 al length-1
y recorrerla:

    ( 1..@lista.length-1 ).each do |i|

O recorrer toda la lista aunque sepamos que
se está haciendo una iteración innecesaria:

    @lista.length.times do |i|

=end
