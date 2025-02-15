class Lista
    def initialize(lista)
        @lista = lista
    end

    def to_s
        result = ""
        @lista.each do |item|
            result << " #{item}"
        end
        return result
    end

    def resta(otra)
        result = []
        @lista.each do |item|
            if !otra.include?(item)
                result << item
            end
        end
        return Lista.new(result)
    end
end


lista = Lista.new( [1,3,1,10,2,5,4] )
resta = lista.resta([1,2,4])
puts "La resta es #{resta}"
puts "y la original #{lista}"
