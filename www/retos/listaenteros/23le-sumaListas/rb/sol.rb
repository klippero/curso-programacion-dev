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

    def +(array)
        result = []
        @array.each do |item|
            result << item
        end

        array.each do |item|
            result << item
        end
        return Lista.new(result)
    end
end


lista = Lista.new( [1,3,1,10,2,5,4] )
suma = lista + [3,17]

puts "La suma es #{suma}"
puts "y la original #{lista}"
