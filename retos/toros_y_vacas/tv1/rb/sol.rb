class TorosYVacas
    def initialize(longitud)
        @secreto = []
        @tries = []
        @hints = []
        longitud.times do
            @secreto << rand(10)
        end
    end

    def valida(n)
        # 2 acierta item y posición
        # 1 acierta item pero no posición

        try = []
        numero = n
        while numero > 0
            resto = numero % 10
            numero = numero / 10
            try = [resto] + try
        end

        # completa con 0 por la izquierda el try
        while try.length < @secreto.length
            try = [0] + try
        end

        # si el try es más largo, lo trunca
        try = try[0..@secreto.length-1]

        @tries << try

        used = []
        @secreto.each do
            used << false
        end

        result = []
        try.each do
            result << 0
        end

        # primera iteración busca elementos de valor y posición 2
        try.length.times do |i|
            if @secreto.length > i && try[i] == @secreto[i]
                result[i] = 2
                used[i] = true
            end
        end

        # segunda iteración busca elementos de valor pero no posición 1
        try.length.times do |i|
            if result[i] == 0
                j = 0
                encontrado = false
                while j < @secreto.length && !encontrado
                    if @secreto[j] == try[i] && !used[j]
                        used[j] = true
                        result[i] = 1
                        encontrado = true
                    else
                        j = j + 1
                    end
                end
            end
        end

        @hints << result

        return result
    end

    def to_s
        result = ""
        @tries.length.times do |i|
            @tries[i].each do |item|
                result = result + " #{item}"
            end

            result = result + "   "

            @hints[i].each do |item|
                result = result + " #{item}"
            end

            result = result + "\n"
        end
        return result
    end

    def success_try(hint)
        # busca elementos en el try que no sean 2 y si lo encuentra es false
        encontrado = false
        i = 0
        while i < hint.length && !encontrado
            if hint[i] != 2
                encontrado = true
            else
                i = i + 1
            end
        end
        return !encontrado
    end

    def success?
        result = false
        if @hints.length > 0
            result = success_try(@hints[-1])
        end
        return result
    end

    def juego
        while ! self.success?
            print "\nIntento: "
            n = gets.chomp.to_i
            self.valida(n)
            puts self
        end
    end
end


=begin
# esta prueba requiere que se hagan 2 bucles, primero los 2 y después de los 1
mm = Mastermind.new([6,4,8,9])
mm.tryThis([8,2,8,2,1,9])
puts mm

https://reglasdejuegosimples.blogspot.com/2013/06/toros-y-vacas-es-un-juego-tradicional.html
=end
