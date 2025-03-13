class Bombo
    def initialize
        @bolas = []
        (1..49).each do |i|
            @bolas << i
        end
    end

    def to_s
        return @bolas.to_s
    end
end
