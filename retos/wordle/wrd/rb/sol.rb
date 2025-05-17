class WordleGame
    def initialize(lang)
        @lang = lang
        @possibleWords = []

        $words[@lang].each do |word|
            @possibleWords << word
        end

        @word2guess = @possibleWords.sample
        @ok = []
        @out = []
        @in = []

        self.game
    end

    def getHint(word)
        hint = ""
        for i in 0..4
            if word[i] == @word2guess[i]
                hint += "V"
                @ok << word[i]
            elsif @word2guess.include?(word[i])
                hint += "A"
                if not @in.include?(word[i])
                    @in << word[i]
                end
            else
                hint += "x"
                if not @out.include?(word[i])
                    @out << word[i]
                end
            end
        end
        return hint
    end

    def filterPossible(word,hint)
        i = 0
        while i<@possibleWords.size do
            if not fit(@possibleWords[i],word,hint)
                @possibleWords.delete_at(i)
            else
                i += 1
            end
        end
    end

    def fit(possible,word,hint)
        result = true
        i=0
        while i<=hint.size-1 and result==true
            if hint[i]=="V" and not possible[i]==word[i]
                result = false
            elsif hint[i]=="A" and ( possible[i]==word[i] or not possible.include?(word[i]) )
                result = false
            elsif hint[i]=="x" and possible.include?(word[i])
                result = false
            end
            i += 1
        end
        return result
    end

    def hints_to_s
        r = ""
        @possibleWords.each do |word|
            r += word + " "
        end
        r += "\noptions: #{@possibleWords.size}"
        r += "\nno: "
        @out.each do |letter|
            r += letter + " "
        end
        r += "\nsí: "
        @in.each do |letter|
            r += letter + " "
        end
        return r + "\n"
    end

    def try(i)
        validWord = false
        while not validWord
            print "wordle #{i+1}: "
            word = gets.chomp.to_s
            if word == "h"
                puts hints_to_s
            else
                word = word.upcase
                if not word.size == 5
                    puts "debe tener 5 letras"
                elsif not $words[@lang].include?(word)
                    puts "palabra no existente"
                else
                    validWord = true
                end
            end
        end

        if not @possibleWords.include?(word)
            puts "no es una pálabra válida"
        end

        hint = getHint(word)
        filterPossible(word,hint)
        puts "          " + hint

        return word == @word2guess
    end

    def game
        i=0
        solved=false
        while i<6 and not solved
            solved=try(i)
            i+=1
        end
        if solved
            puts "acertaste"
        else
            puts "otra vez será, pichón (era #{@word2guess})"
        end
    end
end
