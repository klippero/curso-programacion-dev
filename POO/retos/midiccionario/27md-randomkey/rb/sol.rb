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


confirmacion = {
    'alicia' => 'sí',
    'arturo' => 'no',
    'eva' => 'no',
    'matias' => 'sí',
    'jaime' => 'no',
    'ainara' => 'no',
    'carlos' => 'sí',
    'carmen' => 'sí',
    'rosalina' => 'sí',
    'jorge' => 'no',
    'lucía' => 'no',
    'yago' => 'sí',
    'cristina' => 'no'
}

md = MiDiccionario.new(confirmacion)
puts md.randomKey
