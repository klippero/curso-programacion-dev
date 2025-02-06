class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def randomKey
        k = self.keys
        return k[rand(k.length)]
    end

    def keys
        result = []
        @hash.keys.each do |key|
            result << key
        end
        return result
    end
end
