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


=begin

Alternativa while

    i = 1
    while i <=49
        @bolas << i
        i = i + 1
    end

Alternativa times

    49.times do |i|
        @bolas << i+1
    end

=end
