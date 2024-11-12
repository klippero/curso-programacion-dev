class ListaEnteros
    def initialize(lista)
        @numeros = lista
    end

    def suma
        result = 0.0
        @numeros.each do |item|
            result+= item
        end
        return result
    end

    def media
        return suma / @numeros.length
    end

    def mediana
        @numeros.sort!
        if @numeros.length % 2 == 1
            result = @numeros[@numeros.length/2]
        else
            result = ( @numeros[@numeros.length/2-1] + @numeros[@numeros.length/2] ) / 2.0
        end
        return result
    end

    def moda
        apariciones = {}
        @numeros.each do |item|
            if apariciones.has_key?(item)
                apariciones[item] += 1
            else
                apariciones[item] = 1
            end
        end

        result = []
        result << apariciones.keys[0]

        apariciones.keys[1..].each do |n|
            if apariciones[n] > apariciones[result[0]]
                result = []
                result << n
            elsif apariciones[n] == apariciones[result[0]]
                result << n
            end
        end
        return result
    end
end


lista = ListaEnteros.new( [8,14,9,12,14,12,15,11,12,8,10,14,12,9,12] )
print lista.moda
puts

print ListaEnteros.new([2,2,3,5,5,6,8,9]).moda
puts

print ListaEnteros.new([1,2,3,4,5,6,8,9]).moda
puts

print ListaEnteros.new([2,2,2,4,5,6,8,9,11,11,11,11,3,5,2,6,7,8,9,7,4,9,9]).moda
