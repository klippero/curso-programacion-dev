class MiDiccionario
    def initialize(hash)
        @hash = hash
    end

    def mayor
        mayor = @hash.keys[0]
        @hash.each do |key,value|
            if @hash[mayor] < value
                mayor = key
            end
        end
        return mayor
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
puts "el mayor es #{md.mayor}"
