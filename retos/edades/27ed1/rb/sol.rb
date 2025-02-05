class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def strKeys
        result = ""
        @hash.keys.each do |key|
            result += "#{key} "
        end
        result = result[..-2]
        return result
    end
end
