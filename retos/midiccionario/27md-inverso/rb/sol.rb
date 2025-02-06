class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def inverso
        result = {}
        @hash.each do |key,value|
            if !result.has_key?(value)
                result[value] = []
            end
            result[value] << key
        end
        return result
    end
end
