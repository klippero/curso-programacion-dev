class Lista
    def initialize(array)
        @array = array
    end

    def to_s
        result = ""
        @array.each do |item|
            result = result + " #{item}"
        end
        return result
    end

    def array
        return @array
    end

    def +(otra)
        result = []
        @array.each do |item|
            result << item
        end

        if otra.class == Lista
            arrayOtra = otra.array
        else      # otra.class == Array
            arrayOtra = otra
        end

        arrayOtra.each do |item|
            result << item
        end
        return Lista.new(result)
    end
end


lista = Lista.new( [1,3,1,10,2,5,4] )
suma = lista + [3,17]

puts "La suma es #{suma}"
puts "y la original #{lista}"

lista1 = Lista.new( [4,6,3] )
lista2 = Lista.new( [4,7,2] )
lista3 = lista1 + lista2

puts "La suma es #{lista3}"
puts "y las listas son #{lista1}"
puts "y #{lista2}"
