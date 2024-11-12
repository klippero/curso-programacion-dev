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


edad = {
    'Diego' => 12,
    'Pilar' => 13,
    'Matías' => 11,
    'Christian' => 17,
    'Lorenzo' => 12,
    'Daniel' => 11,
    'Eva' => 13,
    'Javi' => 14,
    'Ana' => 11
}

md = MiDiccionario.new(edad)
puts md.strSortedKeys
