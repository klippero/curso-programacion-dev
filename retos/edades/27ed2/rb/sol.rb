class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def strSortedKeys
        result = ""
        @hash.keys.sort.each do |key|
            result += "#{key} "
        end
        result = result[..-2]
        return result
    end
end
