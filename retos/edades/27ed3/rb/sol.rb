class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def strValues
        result = ""
        @hash.values.each do |value|
            result += "#{value} "
        end
        result = result[..-2]
        return result
    end
end
