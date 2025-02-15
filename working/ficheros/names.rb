class NoRepeatGame
    def initialize
        f = File.open("working/files/names.txt")
        @names = []
        f.each do |line|
            line.chomp!
            @names << line
        end
    end

    def include?(name)
        result = @names.include?(name)
        if !result
            f = File.open("working/files/names.txt",'a')
            f.puts name
        end
    end
end


nr_game = NoRepeatGame.new
puts nr_game.include?("Antúnez")
puts 1


# decir palabras sin repetir
